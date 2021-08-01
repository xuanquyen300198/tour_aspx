using DoAnAspNet.core.handling;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using DoAnAspNet.core.Object;

namespace DoAnAspNet.template.page
{
    public partial class register : System.Web.UI.Page
    {
        Account_UsersController account_UsersController = new Account_UsersController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string pass = txtPass.Text.Trim();
            string confpass = txtConfPassword.Text.Trim();
            string email = txtEmail.Text.Trim();
            string ngayTao = DateTime.Now.ToString("yyyy/MM/dd");
            string lastLogin = DateTime.Now.ToString("yyyy/MM/dd");
            SHA256 sh = SHA256.Create();
            byte[] bytes = sh.ComputeHash(Encoding.UTF8.GetBytes(pass));
            string lassPass = BitConverter.ToString(bytes);
            if (!pass.Equals(confpass)) 
            {
                Response.Write("<script>alert('Mật khẩu không trùng nhau!')</script>");
            }else if (account_UsersController.GetUserByUsername(name) != null)
            {
                Response.Write("<script>alert('Tên tài khoản đã tồn tại!')</script>");
            }
            else
            {
                Account_User account_User = new Account_User(name, lassPass, email, ngayTao, lastLogin);
                account_UsersController.AddNewEntity(account_User);
                //int ma_user = account_UsersController.GetUserByUsername(name).ma_user;
                //GioHang gioHang = new GioHang(ma_user, $"Giỏ hàng của {name}");
                //giohangsController.AddNewEntity(gioHang);
                Response.Redirect("login.aspx");
            }
        }
    }
}