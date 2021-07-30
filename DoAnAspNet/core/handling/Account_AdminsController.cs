using Dapper;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.handling
{
    public class Account_AdminsController : BaseController<Account_Admin>, IAccount_Admin
    {
        public Account_Admin GetAdminByNameAndPass(string userName, string userPass)
        {
            return _dbConnection.Query<Account_Admin>($"Select * from account_admin Where admin_username='{userName}' AND admin_password='{userPass}'").FirstOrDefault();
        }
    }
}