using Dapper;
using DoAnAspNet.core.Interface;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.handling
{
    public class Account_UsersController : BaseController<Account_User>, IAccount_User
    {
        public Account_User GetUserByUsername(string userName)
        {
            return _dbConnection.Query<Account_User>($"Select * From account_user au Where au.username='{userName}'", commandType: System.Data.CommandType.Text).FirstOrDefault();
        }
        public override int AddNewEntity(Account_User entity)
        {
            _id = "ma_user";
            return base.AddNewEntity(entity);
        }

        public Account_User GetUserByNameAndPass(string userName, string userPass)
        {
            return _dbConnection.Query<Account_User>($"Select * from account_user au Where au.username='{userName}' And au.password='{userPass}'").FirstOrDefault();
        }

        public int GetIDGioHangByMaUser(int ma_user)
        {
            return _dbConnection.ExecuteScalar<int>($"Select IDGioHang From account_user,giohang Where account_user.ma_user=giohang.ma_user AND account_user.ma_user={ma_user}", commandType: System.Data.CommandType.Text);
        }

        public int UpdateLastLogin(string lastLogin, int id)
        {
            return _dbConnection.Execute($"Update account_user Set last_login=DATE('{lastLogin}') where id={id}", commandType: System.Data.CommandType.Text);
        }
        public override int DelEntity(int id)
        {
            _id = "ma_user";
            return base.DelEntity(id);
        }
        public override Account_User GetEntityByID(int id)
        {
            _id = "id";
            return base.GetEntityByID(id);
        }

    }
}