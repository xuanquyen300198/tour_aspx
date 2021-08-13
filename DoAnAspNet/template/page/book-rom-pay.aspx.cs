using DoAnAspNet.core.handling;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet.template.page
{
    public partial class book_rom_pay : System.Web.UI.Page
    {
        public Room room;
        public Hotel hotel;
        public List<Room> lstRoomByTour;
        public string[] dateFrom;
        public string[] dateTo;
        public string ngayDatTu = "";
        public string ngayDatDen = "";
        public string hoTen = "";
        public string email = "";
        int idRoom;
        public double longTime;
        public int total;
        public int thanhTien;
        public string quyDoi;
        public int thue;
        public int phiDichVu;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPRoom = Request.QueryString["pId"].ToString();
            string strTu = Request.QueryString["dateFrom"].ToString();
            string strDen = Request.QueryString["dateTo"].ToString();
            hoTen = Session["hoTen"].ToString();
            email = Session["mail"].ToString();
            DateTime StartDate = DateTime.ParseExact(strTu, "yyyy-MM-dd", null);
            DateTime EndDate = DateTime.ParseExact(strDen, "yyyy-MM-dd", null);
            longTime = (EndDate - StartDate).TotalDays;
            idRoom = int.Parse(idPRoom);
            RoomController roomController = new RoomController();
            HotelController hotelController = new HotelController();
            room = new Room();
            hotel = new Hotel();
            lstRoomByTour = new List<Room>();
            room = roomController.GetEntityByID(idRoom);
            total = Convert.ToInt32(longTime) * int.Parse(room.gia_sau_giam);
            thue = total * 10 / 100;
            phiDichVu = total * 10 / 100;
            thanhTien = total + thue + phiDichVu;
            int thanhTienQ = 23000 * thanhTien;
            CultureInfo cul = CultureInfo.GetCultureInfo("vi-VN");   // try with "en-US"
            quyDoi = double.Parse(thanhTienQ + "").ToString("#,###", cul.NumberFormat);
            if (room != null)
            {
                OBFilter obj = new OBFilter();
                obj.ma = room.ma_hotel;
                obj.limit = 1;
                obj.offset = 0;
                List<Hotel> lst = (List<Hotel>)hotelController.GetHotelBySearch(obj);
                if (lst.Count > 0)
                {
                    hotel = lst[0];
                }
            }

            const char V = '-';
            dateFrom = strTu.Split(V);
            dateTo = strDen.Split(V);
            if (strTu != null && strTu != "")
            {
                ngayDatTu = "Ngày " + dateFrom[2] + " Tháng " + dateFrom[1] + " Năm " + dateFrom[0];
            }
            if (strDen != null && strDen != "")
            {
                ngayDatDen = "Ngày " + dateTo[2] + " Tháng " + dateTo[1] + " Năm " + dateTo[0];
            }

        }
        protected void btnBookPayClick(object sender, EventArgs e)
        {
            string loai = drlLoai.SelectedItem.Value;
            string soDT = phone.Text.Trim().ToString();
            string soThe = cc_number.Text.Trim().ToString();
            string cccvc = cc_cvc.Text.Trim().ToString();
            if (!string.IsNullOrEmpty(Session["User_ID"] as string))
            {
                int user_id = int.Parse(Session["User_ID"].ToString());
                //Response.Redirect("book-rom-pay.aspx?pId=" + room.id + "&dateFrom=" + ngayDatTu + "&dateTo=" + ngayDatDen + "");
                BookController bookController = new BookController();
                BillController billController = new BillController();
                string ngayTao = DateTime.Now.ToString("yyyy/MM/dd");
                string ngayTu = (Session["dateFrom"].ToString()).Replace("-","/");
                string ngayDen = (Session["dateTo"].ToString()).Replace("-", "/");
                //Book book = new Book(user_id, "", room.ma, ngayTao, ngayTu, ngayDen);
                //int idInsert = bookController.AddNewEntity(book);

                Bill bill = new Bill(user_id, "", room.ma, hoTen, "", soDT, email, int.Parse(loai), soThe, thanhTien+"", ngayTao, ngayTu, ngayDen);
                billController.AddNewEntity(bill);
                lblModalTitle.Text = "Thông báo!";
                lblModalBody.Text = "Bạn đã đặt phòng thành công";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                //ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
                Response.Write("<script>alert('Bạn đã đặt phòng thành công!')</script>");
                //Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập hệ thống!')</script>");
            }
            
        }
    }
}