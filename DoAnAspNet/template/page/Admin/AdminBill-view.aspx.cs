using DoAnAspNet.core.handling;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet.template.page.Admin
{
    public partial class AdminBill_view : System.Web.UI.Page
    {
        BillController billController = new BillController();
        public Bill bill;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnSua.Enabled = false;
                btnThem.Enabled = true;
                if (Session["id_edit"] != null || Session["id_view"] !=null)
                {
                    int id = 0;
                    if (Session["id_edit"] != null)
                    {
                        id = int.Parse(Session["id_edit"].ToString());
                        btnSua.Enabled = true;
                        btnThem.Enabled = false;
                    }
                    else if (Session["id_view"] != null)
                    {
                        id = int.Parse(Session["id_view"].ToString());
                        btnSua.Enabled = false;
                        btnThem.Enabled = true;
                    }
                    
                     
                    bill = new Bill();
                    OBFilter objFilter = new OBFilter();
                    objFilter.limit = 1;
                    objFilter.offset = 0;
                    objFilter.id = id;
                    List<Bill> lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
                    if (lstBill.Count > 0)
                    {
                        bill = lstBill[0];
                        if (!string.IsNullOrEmpty(bill.ma_tour))
                        {
                            txtDanhMuc.Value = "Tour du lịch";
                            txtTen.Value = bill.ten1;
                            Avatar.ImageUrl = "../../images/" + bill.anh1;
                            txtVanTat.Value = bill.vantat1;
                            

                        }
                        else if (!string.IsNullOrEmpty(bill.ma_room))
                        {
                            txtDanhMuc.Value = "Phòng";
                            txtTen.Value = bill.ten2;
                            Avatar.ImageUrl = "../../images/" + bill.anh2;
                            txtVanTat.Value = bill.vantat2;
                        }
                        txtThanhTien.Value = bill.thanh_tien;
                        txtGmail.Value = bill.email;
                        txtHoTen.Value = bill.ho_ten;
                        txtSoTaiKhoan.Value = bill.so_tai_khoan;
                        txtLoaiTaiKhoan.Value = bill.loai_thanhtoan == 1 ? "MasterCard" : (bill.loai_thanhtoan == 2 ? "Visa" : "JCB");
                        txtNgayDatTu.Value = bill.ngay_dat_tu;
                        txtNgayDatDen.Value = bill.ngay_dat_den;
                        txtNgayTao.Value = bill.ngay_tao;
                    }

                }
            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminIndex.aspx");
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                //int id = int.Parse(Session["ma_danh_muc_edit"].ToString());
                //string ma = txtMa.Value.Trim();
                //string danh_muc = txtTenBill.Value.Trim();
                //string mo_ta = txtDetail.Text.Trim();
                //int so_luong_mon = int.Parse(txtSoLuongMon.Value.Trim());
                //string fileName = avatarUpload.PostedFile.FileName;
                //if (fileName == "")
                //{
                //    fileName = "NoImage.png";
                //}
                //bill = new Bill(id, ma, danh_muc, fileName, mo_ta, so_luong_mon);
                //if (!File.Exists("../../images/" + fileName))
                //{
                //    avatarUpload.PostedFile.SaveAs(MapPath("../../images/" + fileName));
                //}
                //billController.EditEntity(bill);
                //Session.Remove("ma_danh_muc_edit");
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
            Response.Redirect("AdminIndex.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('dismiss');</script>");
            Response.Redirect("AdminBill-view.aspx");
        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {

        }
    }
}