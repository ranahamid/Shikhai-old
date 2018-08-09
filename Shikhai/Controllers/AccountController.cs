﻿using System.Globalization;
using Shikhai.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Shikhai.Filters;
using System.Text.RegularExpressions;
using System.Net.Http;
using Newtonsoft.Json;

namespace Shikhai.Controllers
{
    [Authorize]
    [ExceptionHandler]
    public class AccountController : BaseController
    {
        public AccountController()
        {
        }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        [AllowAnonymous]
        #region ErrorException
        public ActionResult ErrorException(string backUrl)
        {
            ViewBag.backUrl = backUrl;
            return View();
        }
        #endregion



        #region GetUserInfoById
        public ActionResult GetUserInfoById(Guid? Id)
        {
            ApplicationUser User = UserManager.FindById(Id.ToString());
            return PartialView(User);
        }
        #endregion
        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginViewModel model, string returnUrl)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            string userName = await GetUserNameAsync(model, UserManager);
            if (userName == null)
            {
                //error
                return View(model);
            }

            //if user in Teacher role, then redirect to medicine page by default


            // uncomment  , if we want to redirect
            /*var user = await UserManager.FindByNameAsync(userName);
            var RoleNames = await UserManager.GetRolesAsync(user.Id);
            foreach (var item in RoleNames)
            {
                if (item.ToLower() == "admin")
                {
                    returnUrl = "/Dashboard/Index";
                    break;
                }
                else if(item.ToLower() == "teacher")
                {
                    returnUrl = "/Teachers/Dashboard";
                    break;
                }
                else if (item.ToLower() == "student")
                {
                    returnUrl = "/Students/Dashboard";
                    break;
                }                 
            }
            */
           

            // This doen't count login failures towards lockout only two factor authentication
            // To enable password failures to trigger lockout, change to shouldLockout: true
            var result = await SignInManager.PasswordSignInAsync(userName, model.Password, model.RememberMe, shouldLockout: true);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid login attempt.");
                    return View(model);
            }
        }

        //
        // GET: /Account/VerifyCode
        [AllowAnonymous]
        public async Task<ActionResult> VerifyCode(string provider, string returnUrl)
        {
            // Require that the user has already logged in via username/password or external login
            if (!await SignInManager.HasBeenVerifiedAsync())
            {
                return View("Error");
            }
            var user = await UserManager.FindByIdAsync(await SignInManager.GetVerifiedUserIdAsync());
            if (user != null)
            {
                ViewBag.Status = "For DEMO purposes the current " + provider + " code is: " + await UserManager.GenerateTwoFactorTokenAsync(user.Id, provider);
            }
            return View(new VerifyCodeViewModel { Provider = provider, ReturnUrl = returnUrl });
        }

        //
        // POST: /Account/VerifyCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> VerifyCode(VerifyCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            var result = await SignInManager.TwoFactorSignInAsync(model.Provider, model.Code, isPersistent: false, rememberBrowser: model.RememberBrowser);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(model.ReturnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid code.");
                    return View(model);
            }
        }

        public async Task<ActionResult> UpdateTeacherProfile()
        {
            var GuidUsrId = User.Identity.GetUserId();
            var userId = Db.TeacherTbls.Where(x => x.GuidId == GuidUsrId).Select(x => x.Id).SingleOrDefault();
            url = baseUrl + "api/TeachersApi";

            HttpResponseMessage responseMessage = await client.GetAsync(url + "/" + userId);
            if (!responseMessage.IsSuccessStatusCode) throw new Exception("Exception");
            var responseData = responseMessage.Content.ReadAsStringAsync().Result;
            var entity = JsonConvert.DeserializeObject<RegisterTeacher>(responseData);

            var entityReg = await RegisterPropertyTeacher(entity);

            return View(entityReg);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> UpdateTeacherProfile(RegisterTeacher entity)
        {
            var entityReg = await RegisterPropertyTeacher(entity);
            url = baseUrl + "api/TeachersApi";
            var responseMessage = await client.PutAsJsonAsync(url + "/" + entity.Id, entityReg);
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Dashboard", "Teachers", new { });
            }
         
            return View(entity);
        }

        // GET: /Account/Register
        [AllowAnonymous]
        public async Task<ActionResult> RegisterTeacher()
        {
            RegisterTeacher entity = new RegisterTeacher();
            var entityReg = await RegisterPropertyTeacher(entity);

            //entity.CanVisitDays = GetAllWeekDaysName();
            //entity.CanTeachClass =await GetAllClassNames();
            //entity.AllLocationSelectListItems= await GetAllLocationSelectListItems();
            //entity.AllCategorySelectListItems = Categories;
            //entity.CanTeachSubject = ChildCategories;

            return View(entityReg);
        }

        public async Task<RegisterTeacher> RegisterPropertyTeacher(RegisterTeacher entity)
        {
            entity.CanVisitDays = GetAllWeekDaysName();
            entity.CanTeachClass = await GetAllClassNames();
            entity.AllLocationSelectListItems = await GetAllLocationSelectListItems();
            entity.AllCategorySelectListItems = Categories;
            entity.CanTeachSubject = ChildCategories;

            return entity;
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> RegisterTeacher(RegisterTeacher model)
        {
            if (ModelState.IsValid)
            {
                var user = GetApplicationUserTeacher(model);
                var result = CreateTeacherUser(user, model.Password, UserManager);

                if (result.Succeeded)
                {
                    var code = await UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
                    var callbackUrl = Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code }, protocol: Request.Url.Scheme);

                    //send email
                    string body = "Dear " + model.Email + "," +
                       "\n\nWelcome to Shikhai!" +
                        "\n\nA request has been received to open your Shikhai account." +
                        "\n\nPlease confirm your account by clicking this link: <a href=\"" + callbackUrl + "\">Click here</a>." +

                        "\n\nIf you did not initiate this request, please contact us immediately at support@Shikhai.com." +
                        "\n\nThank you," +
                        "\nThe Shikhai Team.";

                    await UserManager.SendEmailAsync(user.Id, "Confirm your account", body);


                    //sms
                    // Generate the token and send it
                    var codeSMS = await UserManager.GenerateChangePhoneNumberTokenAsync(user.Id, model.PhoneNumber);
                    if (UserManager.SmsService != null)
                    {
                        var message = new IdentityMessage
                        {
                            Destination = model.PhoneNumber,
                            Body = "Your security code is: " + codeSMS
                        };
                        await UserManager.SmsService.SendAsync(message);
                    }
                    // insert into teacher db
                    url = baseUrl + "api/TeachersApi";
                    model.GuidId = user.Id;
                    var responseMessage = await client.PostAsJsonAsync(url, model);
                    if (responseMessage.IsSuccessStatusCode)
                    {
                    }

                    //ViewBag.Link = callbackUrl;
                    //return View("DisplayEmail");
                    return RedirectToAction("VerifyPhoneNumber", "Manage", new { model.PhoneNumber });
                }
                AddErrors(result);
            }


            //fill reg entity 
            var entityReg = await RegisterPropertyTeacher(model);
            // If we got this far, something failed, redisplay form
            return View(entityReg);
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {

                var user = GetApplicationUser(model);

                var result = CreateCustomerUser(user, model.Password, UserManager);

                if (result.Succeeded)
                {
                    var code = await UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
                    var callbackUrl = Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code }, protocol: Request.Url.Scheme);

                    //send email
                    string body = "Dear " + model.Email + "," +
                       "\n\nWelcome to Shikhai!" +
                        "\n\nA request has been received to open your Shikhai account." +
                        "\n\nPlease confirm your account by clicking this link: <a href=\"" + callbackUrl + "\">Click here</a>." +

                        "\n\nIf you did not initiate this request, please contact us immediately at support@Shikhai.com." +
                        "\n\nThank you," +
                        "\nThe Shikhai Team.";

                    await UserManager.SendEmailAsync(user.Id, "Confirm your account", body);


                    //sms
                    // Generate the token and send it
                    var codeSMS = await UserManager.GenerateChangePhoneNumberTokenAsync(user.Id, model.PhoneNumber);
                    if (UserManager.SmsService != null)
                    {
                        var message = new IdentityMessage
                        {
                            Destination = model.PhoneNumber,
                            Body = "Your security code is: " + codeSMS
                        };
                        await UserManager.SmsService.SendAsync(message);
                    }
                    //ViewBag.Link = callbackUrl;
                    //return View("DisplayEmail");
                    return RedirectToAction("VerifyPhoneNumber", "Manage", new { model.PhoneNumber });
                }
                AddErrors(result);
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ConfirmEmail
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(string userId, string code)
        {
            if (userId == null || code == null)
            {
                return View("Error");
            }
            var result = await UserManager.ConfirmEmailAsync(userId, code);
            return View(result.Succeeded ? "ConfirmEmail" : "Error");
        }

        //
        // GET: /Account/ForgotPassword
        [AllowAnonymous]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        //
        // POST: /Account/ForgotPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ForgotPassword(ForgotPasswordViewModel model)
        {
            // NOT Implemented
            if (ModelState.IsValid)
            {
                var user = await UserManager.FindByNameAsync(model.Email);
                if (user == null || !(await UserManager.IsEmailConfirmedAsync(user.Id)))
                {
                    // Don't reveal that the user does not exist or is not confirmed
                    return View("ForgotPasswordConfirmation");
                }

                var code = await UserManager.GeneratePasswordResetTokenAsync(user.Id);
                var callbackUrl = Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);

                string body = "Dear " + model.Email + "," +
                 "A request has been received to change the password for your Virtual Classroom account." +
                 "\n\nPlease reset your password by clicking here: <a href=\"" + callbackUrl + "\">Click here</a>." +
                 "\n\nIf you did not initiate this request, please contact us immediately at support@Shikhai.com." +
                 "\n\nThank you," +
                 "\nThe Virtual Classroom Team.";

                await UserManager.SendEmailAsync(user.Id, "Reset Password", body);
                ViewBag.Link = callbackUrl;
                return View("ForgotPasswordConfirmation");
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ForgotPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ForgotPasswordConfirmation()
        {
            return View();
        }

        //
        // GET: /Account/ResetPassword
        [AllowAnonymous]
        public ActionResult ResetPassword(string code)
        {
            return code == null ? View("Error") : View();
        }

        //
        // POST: /Account/ResetPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ResetPassword(ResetPasswordViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            var user = await UserManager.FindByNameAsync(model.Email);
            if (user == null)
            {
                // Don't reveal that the user does not exist
                return RedirectToAction("ResetPasswordConfirmation", "Account");
            }
            var result = await UserManager.ResetPasswordAsync(user.Id, model.Code, model.Password);
            if (result.Succeeded)
            {
                return RedirectToAction("ResetPasswordConfirmation", "Account");
            }
            AddErrors(result);
            return View();
        }

        //
        // GET: /Account/ResetPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return View();
        }

        //
        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        //
        // GET: /Account/SendCode
        [AllowAnonymous]
        public async Task<ActionResult> SendCode(string returnUrl)
        {
            var userId = await SignInManager.GetVerifiedUserIdAsync();
            if (userId == null)
            {
                return View("Error");
            }
            var userFactors = await UserManager.GetValidTwoFactorProvidersAsync(userId);
            var factorOptions = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
            return View(new SendCodeViewModel { Providers = factorOptions, ReturnUrl = returnUrl });
        }

        //
        // POST: /Account/SendCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SendCode(SendCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            // Generate the token and send it
            if (!await SignInManager.SendTwoFactorCodeAsync(model.SelectedProvider))
            {
                return View("Error");
            }
            return RedirectToAction("VerifyCode", new { Provider = model.SelectedProvider, ReturnUrl = model.ReturnUrl });
        }

        //
        // GET: /Account/ExternalLoginCallback
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            var result = await SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:
                    // If the user does not have an account, then prompt the user to create an account
                    ViewBag.ReturnUrl = returnUrl;
                    ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                    return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { Email = loginInfo.Email });
            }
        }

        //
        // POST: /Account/ExternalLoginConfirmation
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "Manage");
            }

            if (ModelState.IsValid)
            {
                // Get the information about the user from the external login provider
                var info = await AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return View("ExternalLoginFailure");
                }
                var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                var result = await UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                        return RedirectToLocal(returnUrl);
                    }
                }
                AddErrors(result);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        //
        // POST: /Account/LogOff
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut();
            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return View();
        }



        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion
    }
}