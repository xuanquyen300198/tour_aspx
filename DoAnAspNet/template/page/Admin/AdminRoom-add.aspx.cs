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
    public partial class AdminRoom_add : System.Web.UI.Page
    {
        public Room room;
        RoomController roomController = new RoomController();
        public List<Hotel> lstHotel;
        HotelController hotelController = new HotelController();
        public Boolean insert = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstHotel = new List<Hotel>();
                lstHotel = (List<Hotel>)hotelController.GetAllEntity();
                drlHotel.DataSource = lstHotel;
                drlHotel.DataTextField = "ten";
                drlHotel.DataValueField = "ma";
                drlHotel.DataBind();

                //Avatar.ImageUrl = "img/NoImage.png";
                btnSua.Enabled = false;
                btnThem.Enabled = true;
                if (Session["id_edit"] != null)
                {
                    insert = false;
                    btnSua.Enabled = true;
                    btnThem.Enabled = false;
                    int ma_mon = int.Parse(Session["id_edit"].ToString());
                    room = new Room();
                    room = roomController.GetEntityByID(ma_mon);
                    txtMa.Value = room.ma;
                    txtTen.Value = room.ten;
                    txtThoiGian.Value = room.thoi_gian;
                    txtDonGia.Value = room.gia.ToString();
                    Avatar.ImageUrl = "../../images/" + room.anh;
                    Image1.ImageUrl = "../../images/" + room.anh_ct1;
                    Image2.ImageUrl = "../../images/" + room.anh_ct2;
                    Image3.ImageUrl = "../../images/" + room.anh_ct3;
                    txtGiamGia.Value = room.giam_gia.ToString();
                    txtVanTat.Value = room.van_tat;
                    txtDetail.Text = room.mo_ta;

                    drlHotel.SelectedValue = room.ma_hotel.ToString();
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
            string thoi_gian = txtThoiGian.Value;
            string mo_ta = txtDetail.Text;
            string ma_danh_muc = drlHotel.SelectedValue;
            room = new Room(ma, ten, fileName, ma_danh_muc + "", don_gia + "", giam_gia + "", mo_ta, "4", thoi_gian, vanTat, gia_sau_giam, fileNameCt1, fileNameCt2, fileNameCt2);
            roomController.AddNewEntity(room);
            try
            {
                //roomController.AddNewEntity(room);
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
            string thoi_gian = txtThoiGian.Value;
            string mo_ta = txtDetail.Text;
            string ma_danh_muc = drlHotel.SelectedValue;
            room = new Room(int.Parse(Session["id_edit"].ToString()), ma, ten, fileName, ma_danh_muc + "", don_gia + "", giam_gia + "", mo_ta, "4", thoi_gian, vanTat, gia_sau_giam, fileNameCt1, fileNameCt2, fileNameCt2);
            try
            {
                roomController.EditEntity(room);
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
            Response.Redirect("AdminRoom-list.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('dismiss');</script>");
            Response.Redirect("AdminRoom-add.aspx");
        }
    }
}