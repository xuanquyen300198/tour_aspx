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
        public Boolean insert = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstDanhMuc = new List<DanhMuc>();
                lstDanhMuc = (List<DanhMuc>)danhMucsController.GetAllDanhMuc();
                drlDanhMuc.DataSource = lstDanhMuc;
                drlDanhMuc.DataTextField = "ten";
                drlDanhMuc.DataValueField = "ma";
                drlDanhMuc.DataBind();

                //Avatar.ImageUrl = "img/NoImage.png";
                btnSua.Enabled = false;
                btnThem.Enabled = true;
                if (Session["id_edit"] != null)
                {
                    insert = false;
                    btnSua.Enabled = true;
                    btnThem.Enabled = false;
                    int ma_mon = int.Parse(Session["id_edit"].ToString());
                    tour = new Tour();
                    tour = tourController.GetEntityByID(ma_mon);
                    txtMa.Value = tour.ma;
                    txtTen.Value = tour.ten;
                    txtDiaDiem.Value = tour.dia_diem;
                    txtThoiGian.Value = tour.thoi_gian;
                    txtDonGia.Value = tour.gia.ToString();
                    Avatar.ImageUrl = "../../images/" + tour.anh;
                    Image1.ImageUrl = "../../images/" + tour.anh_ct1;
                    Image2.ImageUrl = "../../images/" + tour.anh_ct2;
                    Image3.ImageUrl = "../../images/" + tour.anh_ct3;
                    txtGiamGia.Value = tour.giam_gia.ToString();
                    txtVanTat.Value = tour.van_tat;
                    txtDetail.Text = tour.mo_ta;
                    
                    drlDanhMuc.SelectedValue = tour.ma_danhmuc.ToString();
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string ma = txtMa.Value;
            string ten = txtTen.Value;
            int don_gia = int.Parse(txtDonGia.Value);
            string fileName = avatarUpload.PostedFile.FileName;
            if (fileName == "")
            {
                fileName = "NoImage.png";
            }
            string fileNameCt1 = avatarUploadCt1.PostedFile.FileName;
            if (fileNameCt1 == "")
            {
                fileNameCt1 = "NoImage.png";
            }
            string fileNameCt2 = avatarUploadCt2.PostedFile.FileName;
            if (fileNameCt2 == "")
            {
                fileNameCt2 = "NoImage.png";
            }
            string fileNameCt3 = avatarUploadCt3.PostedFile.FileName;
            if (fileNameCt3 == "")
            {
                fileNameCt3 = "NoImage.png";
            }
            int giam_gia = int.Parse(txtGiamGia.Value);
            string gia_sau_giam = (don_gia - (don_gia * giam_gia / 100)) + "";
            string vanTat = txtVanTat.Value;
            string dia_diem = txtDiaDiem.Value;
            string thoi_gian = txtThoiGian.Value;
            string mo_ta = txtDetail.Text;
            string ma_danh_muc = drlDanhMuc.SelectedValue;
            tour = new Tour(ma,ten, fileName, ma_danh_muc+"", don_gia+"", giam_gia+"", mo_ta, "4",thoi_gian , vanTat, gia_sau_giam, fileNameCt1, fileNameCt2, fileNameCt2,dia_diem);
            try
            {
                tourController.AddNewEntity(tour);
                if (!File.Exists("../../images/" + fileName))
                {
                    avatarUpload.PostedFile.SaveAs(MapPath("../../images/" + fileName));
                }
                if (!File.Exists("../../images/" + fileNameCt1))
                {
                    avatarUploadCt1.PostedFile.SaveAs(MapPath("../../images/" + fileNameCt1));
                }
                if (!File.Exists("../../images/" + fileNameCt2))
                {
                    avatarUploadCt2.PostedFile.SaveAs(MapPath("../../images/" + fileNameCt2));
                }
                if (!File.Exists("../../images/" + fileNameCt3))
                {
                    avatarUploadCt3.PostedFile.SaveAs(MapPath("../../images/" + fileNameCt3));
                }
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
            int don_gia = int.Parse(txtDonGia.Value);
            string fileName = avatarUpload.PostedFile.FileName;
            if (fileName == "")
            {
                fileName = "NoImage.png";
            }
            string fileNameCt1 = avatarUploadCt1.PostedFile.FileName;
            if (fileNameCt1 == "")
            {
                fileNameCt1 = "NoImage.png";
            }
            string fileNameCt2 = avatarUploadCt2.PostedFile.FileName;
            if (fileNameCt2 == "")
            {
                fileNameCt2 = "NoImage.png";
            }
            string fileNameCt3 = avatarUploadCt3.PostedFile.FileName;
            if (fileNameCt3 == "")
            {
                fileNameCt3 = "NoImage.png";
            }
            int giam_gia = int.Parse(txtGiamGia.Value);
            string gia_sau_giam = (don_gia - (don_gia * giam_gia / 100)) + "";
            string vanTat = txtVanTat.Value;
            string dia_diem = txtDiaDiem.Value;
            string thoi_gian = txtThoiGian.Value;
            string mo_ta = txtDetail.Text;
            string ma_danh_muc = drlDanhMuc.SelectedValue;
            tour = new Tour(int.Parse(Session["id_edit"].ToString()), ma, ten, fileName, ma_danh_muc + "", don_gia + "", giam_gia + "", mo_ta, "4", thoi_gian, vanTat, gia_sau_giam, fileNameCt1, fileNameCt2, fileNameCt2, dia_diem);
            try
            {
                tourController.EditEntity(tour);
                if (!File.Exists("../../img/product/discount/" + fileName))
                {
                    avatarUpload.PostedFile.SaveAs(MapPath("../../images/" + fileName));
                }
                if (!File.Exists("../../img/product/discount/" + fileNameCt1))
                {
                    avatarUploadCt1.PostedFile.SaveAs(MapPath("../../images/" + fileNameCt1));
                }
                if (!File.Exists("../../img/product/discount/" + fileNameCt2))
                {
                    avatarUploadCt2.PostedFile.SaveAs(MapPath("../../images/" + fileNameCt2));
                }
                if (!File.Exists("../../img/product/discount/" + fileNameCt3))
                {
                    avatarUploadCt3.PostedFile.SaveAs(MapPath("../../images/" + fileNameCt3));
                }
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
            Response.Redirect("AdminProduct-list.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('dismiss');</script>");
            Response.Redirect("AdminProduct-add.aspx");
        }
    }
}