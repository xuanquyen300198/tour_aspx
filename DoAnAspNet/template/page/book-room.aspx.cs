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
    public partial class book_room : System.Web.UI.Page
    {
        public Room room;
        public Hotel hotel;
        public List<Room> lstRoomByTour;
        public string[] dateFrom;
        public string[] dateTo;
        public string ngayDatTu = "";
        public string ngayDatDen = "";
        public string strTu = "";
        public string strDen = "";
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
            DateTime StartDate = DateTime.ParseExact(strTu, "yyyy-MM-dd", null);
            DateTime EndDate = DateTime.ParseExact(strDen, "yyyy-MM-dd", null);
            longTime = (EndDate - StartDate).TotalDays;
            Session["dateFrom"] = strTu;
            Session["dateTo"] = strDen;
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
            quyDoi = double.Parse(thanhTienQ+"").ToString("#,###", cul.NumberFormat);
            const char V = '-';
            dateFrom = strTu.Split(V);
            dateTo = strDen.Split(V);
            if (room != null)
            {
                OBFilter obj = new OBFilter();
                obj.ma = room.ma_hotel;
                obj.limit = 1;
                obj.offset = 0;
                List<Hotel> lst = (List<Hotel>) hotelController.GetHotelBySearch(obj);
                if(lst.Count > 0)
                {
                    hotel = lst[0];
                }
            }
            if(strTu!=null && strTu != "")
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
            string ho = lastname.Text.Trim().ToString();
            string ten = firstname.Text.Trim().ToString();
            string mail = email.Text.Trim().ToString();
            Session["hoTen"] = ho + " " + ten;
            Session["mail"] = mail;
            string strTu1 = Request.QueryString["dateFrom"].ToString();
            string strDen1 = Request.QueryString["dateTo"].ToString();
            Response.Redirect("book-rom-pay.aspx?pId=" + room.id + "&dateFrom=" + strTu1 + "&dateTo=" + strDen1 + "");

        }
    }
}