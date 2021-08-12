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

namespace DoAnAspNet.template.page.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
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

            Account_AdminsController controller = new Account_AdminsController();
            Account_Admin account = controller.GetAdminByNameAndPass(name, lassPass);
            if (account != null)
            {
                Session["User"] = account.username;
                Session["User_ID"] = account.id + "";
                //Session["IDGioHang"] = account_UsersController.GetIDGioHangByMaUser(ma_User);

                Response.Redirect("AdminIndex.aspx");
            }
            else
            {
                Response.Write("<script>alert('Sai tên tài khoản hoặc mật khẩu!')</script>");
            }

        }

    }
}