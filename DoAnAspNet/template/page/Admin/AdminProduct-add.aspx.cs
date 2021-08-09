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
    public partial class AdminProduct_add : System.Web.UI.Page
    {
        public Tour tour;
        TourController tourController = new TourController();
        public List<DanhMuc> lstDanhMuc;
        DanhMucsController danhMucsController = new DanhMucsController();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    lstDanhMuc = new List<DanhMuc>();
            //    lstDanhMuc = (List<DanhMuc>)danhMucsController.GetAllEntity();
            //    drlDanhMuc.DataSource = lstDanhMuc;
            //    drlDanhMuc.DataTextField = "danh_muc";
            //    drlDanhMuc.DataValueField = "ma_danh_muc";
            //    drlDanhMuc.DataBind();

            //    Avatar.ImageUrl = "img/NoImage.png";
            //    btnSua.Enabled = false;
            //    btnThem.Enabled = true;
            //    if (Session["ma_mon_edit"] != null)
            //    {
            //        btnSua.Enabled = true;
            //        btnThem.Enabled = false;
            //        int ma_mon = int.Parse(Session["ma_mon_edit"].ToString());
            //        tour = new Tour();
            //        tour = tourController.GetEntityByID(ma_mon);
            //        txtTenMon.Value = tour.ten_mon;
            //        txtDonGia.Value = tour.don_gia.ToString();
            //        Avatar.ImageUrl = "../../img/product/discount/" + Tour.images;
            //        txtSoLuong.Value = tour.so_luong.ToString();
            //        txtGiamGia.Value = tour.giam_gia.ToString();
            //        txtThanhPhan.Text = tour.thanh_phan;
            //        txtDetail.Text = tour.mo_ta;
            //        txtThongTin.Text = tour.thong_tin;
            //        txtDanhGia.Text = tour.danh_gia;
            //        drlDanhMuc.SelectedValue = tour.ma_danh_muc.ToString();
            //    }
            //}
        }

        //protected void btnThem_Click(object sender, EventArgs e)
        //{

        //    string ten_mon = txtTenMon.Value;
        //    int don_gia = int.Parse(txtDonGia.Value);
        //    string fileName = avatarUpload.PostedFile.FileName;
        //    if (fileName == "")
        //    {
        //        fileName = "NoImage.png";
        //    }
        //    int so_luong = int.Parse(txtSoLuong.Value);
        //    int giam_gia = int.Parse(txtGiamGia.Value);
        //    string thanh_phan = txtThanhPhan.Text;
        //    string mo_ta = txtDetail.Text;
        //    string thong_tin = txtThongTin.Text;
        //    string danh_gia = txtDanhGia.Text;
        //    int ma_danh_muc = int.Parse(drlDanhMuc.SelectedValue);
        //    string danh_muc = drlDanhMuc.SelectedItem.Text;
        //    tour = new Tour(ten_mon, ma_danh_muc, fileName, don_gia, so_luong, giam_gia, thanh_phan, 0, mo_ta, thong_tin, danh_gia, danh_muc);
        //    try
        //    {
        //        tourController.AddNewEntity(tour);
        //        if (File.Exists("../../img/product/discount/" + fileName))
        //        {
        //            avatarUpload.PostedFile.SaveAs(MapPath("../../img/product/discount/" + fileName));
        //        }
        //        ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
        //    }
        //    catch
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
        //    }
        //}

        //protected void btnSua_Click(object sender, EventArgs e)
        //{
        //    string ten_mon = txtTenMon.Value;
        //    int don_gia = int.Parse(txtDonGia.Value);
        //    string fileName = avatarUpload.PostedFile.FileName;
        //    if (fileName == "")
        //    {
        //        fileName = "NoImage.png";
        //    }
        //    int so_luong = int.Parse(txtSoLuong.Value);
        //    int giam_gia = int.Parse(txtGiamGia.Value);
        //    string thanh_phan = txtThanhPhan.Text;
        //    string mo_ta = txtDetail.Text;
        //    string thong_tin = txtThongTin.Text;
        //    string danh_gia = txtDanhGia.Text;
        //    int ma_danh_muc = int.Parse(drlDanhMuc.SelectedValue);
        //    string danh_muc = drlDanhMuc.SelectedItem.Text;
        //    tour = new Tour(int.Parse(Session["ma_mon_edit"].ToString()), ten_mon, ma_danh_muc, fileName, don_gia, so_luong, giam_gia, thanh_phan, 0, mo_ta, thong_tin, danh_gia, danh_muc);
        //    try
        //    {
        //        tourController.EditEntity(tour);
        //        if (File.Exists("../../img/product/discount/" + fileName))
        //        {
        //            avatarUpload.PostedFile.SaveAs(MapPath("../../img/product/discount/" + fileName));
        //        }
        //        Session.Remove("ma_mon_edit");
        //        ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
        //    }
        //    catch
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
        //    }
        //}

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('dismiss');</script>");
            Response.Redirect("AdminProduct-add.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('dismiss');</script>");
            Response.Redirect("AdminProduct-add.aspx");
        }
    }
}