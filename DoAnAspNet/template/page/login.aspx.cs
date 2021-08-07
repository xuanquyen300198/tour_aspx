using DoAnAspNet.core.handling;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet.template.page
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            String name = txtName.Text.Trim();
            String pass = txtPass.Text.Trim();
            
            SHA256 sh = SHA256.Create();
            byte[] bytes = sh.ComputeHash(Encoding.UTF8.GetBytes(pass));
            String lassPass = BitConverter.ToString(bytes);

            Account_UsersController account_UsersController = new Account_UsersController();
            Account_User account_User = account_UsersController.GetUserByNameAndPass(name, lassPass);
            if (account_User != null)
            {
                string lastLogin = DateTime.Now.ToString("yyyy/MM/dd");
                int id = account_User.id;
                account_UsersController.UpdateLastLogin(lastLogin, id);
                Session["User"] = name;
                Session["User_ID"] = id + "";
                //Session["IDGioHang"] = account_UsersController.GetIDGioHangByMaUser(ma_User);

                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Sai tên tài khoản hoặc mật khẩu!')</script>");
            }

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnLogin2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/AdminLogin.aspx");
        }
    }
}