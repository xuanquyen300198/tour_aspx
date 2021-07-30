using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAnAspNet.core.Interface
{
    public interface IAccount_User
    {
        /// <summary>
        /// Lấy tài khoản người dùng qua tên tài khoản
        /// </summary>
        /// <param name="userName">tên tài khoản</param>
        /// <returns>thông tin tài khoản</returns>
        Account_User GetUserByUsername(string userName);
        /// <summary>
        /// Lấy tài khoản người dùng qua tên tài khoản và mật khẩu
        /// </summary>
        /// <param name="userName">tên tài khoản</param>
        /// <param name="userPass">mật khẩu</param>
        /// <returns>thông tin tài khoản</returns>
        Account_User GetUserByNameAndPass(string userName, string userPass);

        /// <summary>
        /// Lấy mã giỏ hàng của người dùng
        /// </summary>
        /// <param name="ma_use">mã người dùng</param>
        /// <returns>mã giỏ hàng của người dùng</returns>
        int GetIDGioHangByMaUser(int ma_use);
        /// <summary>
        /// Cập nhập lại thời gian đăng nhập cuối cùng
        /// </summary>
        /// <param name="ma_user"></param>
        int UpdateLastLogin(string lastLogin, int ma_user);
    }
}
