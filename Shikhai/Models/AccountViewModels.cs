using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace Shikhai.Models
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }

    public class ExternalLoginListViewModel
    {
        public string ReturnUrl { get; set; }
    }

    public class SendCodeViewModel
    {
        public string SelectedProvider { get; set; }
        public ICollection<System.Web.Mvc.SelectListItem> Providers { get; set; }
        public string ReturnUrl { get; set; }
    }

    public class VerifyCodeViewModel
    {
        [Required]
        public string Provider { get; set; }

        [Required]
        [Display(Name = "Code")]
        public string Code { get; set; }
        public string ReturnUrl { get; set; }

        [Display(Name = "Remember this browser?")]
        public bool RememberBrowser { get; set; }
    }

    public class ForgotViewModel
    {
        [Required]
        [Phone]
        [Display(Name = "Phone Number")]
        public string Number { get; set; }

        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }

    public class LoginViewModel
    {
        [Required]
        [Display(Name = "Mobile/Email")]
        public string UserName { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }
    }

    public class RegisterTeacher : Teacher
    {
        public string GuidId { get; set; }

        [Display(Name = "Institution Name")]
        public string HospitalName { get; set; }

        [Display(Name = "Description")]
        public string Description { get; set; }
        //new added

        //class names - 6,7,8
        [Display(Name = "Can Teach Days")]
        public List<SelectListItem> CanTeachClass { get; set; }

        [Required]
        [Display(Name = "Select Class")]
        public List<string> SelectedTeachClass { get; set; }

        public List<string> SelectedTeachClassDisplay { get; set; }

        public string SelectedTeachClassStr { get; set; }

        //location: uttara, banani
        public List<SelectListItem> AllLocationSelectListItems { get; set; }

        [Display(Name = "Select Location")]
        public string SelectedLocationId { get; set; }

        public string LocationDisplay { get; set; }

        //Category: bangla, eng, 
        public List<SelectListItem> AllCategorySelectListItems { get; set; }

        [Display(Name = "Select Category ")]
        public List<string> SelectedCategoryId { get; set; }

        public string SelectedCategoryIdStr { get; set; }

        //subject
        [Display(Name = "Can Teach Subject")]
        public List<SelectListItem> CanTeachSubject { get; set; }

        [Required]
        [Display(Name = "Select Subject")]
        public List<string> SelectedSubject { get; set; }

        public string SelectedSubjectStr { get; set; }

        // range
        public int? TutionPrice { get; set; }

        //Question
        public string Question1DescribeYourself { get; set; }

        public string Question2History { get; set; }

        public string Question3Enjoy { get; set; }

    }

    public class RegisterViewModel
    {

        [Required]
        [Phone]
        [Display(Name = "Contact Number")]
        public string PhoneNumber { get; set; }

        [Display(Name = "Full Name")]
        public string Name { get; set; }

        public string Address { get; set; }

        public string Username { get; set; }

        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }


        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 4)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }


    }

    public class ResetPasswordViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [Phone]
        [Display(Name = "Phone Number")]
        public string Number { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 4)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        public string Code { get; set; }
    }

    public class ForgotPasswordViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Phone]
        [Display(Name = "Phone Number")]
        public string Number { get; set; }
    }
}