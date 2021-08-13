using DoAnAspNet.core.handling;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet.template.page.Admin
{
    public partial class AdminUser_add : System.Web.UI.Page
    {
        public Account_Admin account;
        Account_AdminsController accountController = new Account_AdminsController();
        public List<DanhMuc> lstDanhMuc;
        DanhMucsController danhMucsController = new DanhMucsController();
        public Boolean insert = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem item = new ListItem("Admin", "1");
                ListItem item1 = new ListItem("Quản trị viên", "2");
                ListItem item2 = new ListItem("Nhân viên", "3");
                drlDanhMuc.Items.Add(item);
                drlDanhMuc.Items.Add(item1);
                drlDanhMuc.Items.Add(item2);
                btnSua.Enabled = false;
                btnThem.Enabled = true;
                if (Session["id_edit"] != null)
                {
                    insert = false;
                    btnSua.Enabled = true;
                    btnThem.Enabled = false;
                    int id = int.Parse(Session["id_edit"].ToString());
                    account = new Account_Admin();
                    account = accountController.GetAdminByID(id);
                    txtMa.Value = account.ma;
                    txtTen.Value = account.ten;
                    txtUserName.Value = account.username;

                    drlDanhMuc.SelectedValue = account.quyen.ToString();
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string ma = txtMa.Value;
            string ten = txtTen.Value;
            string username = txtUserName.Value;
            string quyen = drlDanhMuc.SelectedValue;
            account = new Account_Admin(ma, username,"123456",ten, int.Parse(quyen));
            try
            {
                accountController.AddNewEntity(account);
                
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
            }
            catch
            {
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string ma = txtMa.Value;
            string ten = txtTen.Value;
            string username = txtUserName.Value;
            string quyen = drlDanhMuc.SelectedValue;
            account = new Account_Admin(int.Parse(Session["id_edit"].ToString()),ma, username,"123456",ten, int.Parse(quyen));
            
            try
            {
                accountController.EditEntity(account);
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
            }
            catch
            {
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
            }
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('dismiss');</script>");
            Response.Redirect("AdminUser-list.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('dismiss');</script>");
            Response.Redirect("AdminUser-add.aspx");
        }
    }
}