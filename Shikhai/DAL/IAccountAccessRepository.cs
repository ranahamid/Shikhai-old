﻿using Shikhai.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace Shikhai.DAL
{
    public interface IAccountAccessRepository<TEntity, in TPrimaryKey> where TEntity : class
    {
        
        //custom
        UserStatusInfo Register(RegisterViewModel model, ApplicationUserManager UserManager);
        UserStatusInfo RegisterTeacher(RegisterTeacher model, ApplicationUserManager UserManager);

        Task<UserStatusInfo> Login(LoginViewModel model, ApplicationSignInManager SignInManager, ApplicationUserManager UserManager);

    }
}
