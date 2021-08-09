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
    public partial class AdminCategory_add : System.Web.UI.Page
    {
        DanhMucsController danhMucsController = new DanhMucsController();
        public DanhMuc danhMuc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnSua.Enabled = false;
                btnThem.Enabled = true;
                if (Session["ma_danh_muc_edit"] != null)
                {
                    btnSua.Enabled = true;
                    btnThem.Enabled = false;
                    int ma_danh_muc = int.Parse(Session["ma_danh_muc_edit"].ToString());
                    danhMuc = new DanhMuc();
                    danhMuc = danhMucsController.GetEntityByID(ma_danh_muc);
                    txtTenDanhMuc.Value = danhMuc.ten;
                    txtDetail.Text = danhMuc.mo_ta;
                    txtSoLuongMon.Value = danhMuc.so_luong_tour.ToString();
                }
            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                string danh_muc = txtTenDanhMuc.Value.Trim();
                string mo_ta = txtDetail.Text.Trim();
                int so_luong_mon = int.Parse(txtSoLuongMon.Value.Trim());
                danhMuc = new DanhMuc("", danh_muc,"", mo_ta, so_luong_mon);
                danhMucsController.AddNewEntity(danhMuc);
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                int ma_danh_muc = int.Parse(Session["ma_danh_muc_edit"].ToString());
                string danh_muc = txtTenDanhMuc.Value.Trim();
                string mo_ta = txtDetail.Text.Trim();
                int so_luong_mon = int.Parse(txtSoLuongMon.Value.Trim());
                danhMuc = new DanhMuc("", danh_muc, "", mo_ta, so_luong_mon);
                danhMucsController.EditEntity(danhMuc);
                Session.Remove("ma_danh_muc_edit");
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('dismiss');</script>");
            Response.Redirect("AdminCategory-list.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('dismiss');</script>");
            Response.Redirect("AdminCategory-add.aspx");
        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {

        }
    }
}