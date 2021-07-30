using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAnAspNet.core.handling
{
    public interface IAccount_Admin
    {

        /// <summary>
        /// Lấy tài khoản người dùng qua tên tài khoản và mật khẩu
        /// </summary>
        /// <param name="userName">tên tài khoản</param>
        /// <param name="userPass">mật khẩu</param>
        /// <returns>thông tin tài khoản</returns>
        Account_Admin GetAdminByNameAndPass(string userName, string userPass);
    }
}
