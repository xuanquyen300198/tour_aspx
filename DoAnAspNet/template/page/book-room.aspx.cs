using DoAnAspNet.core.handling;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
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
        int idRoom;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPRoom = Request.QueryString["pId"].ToString();
            string strTu = Request.QueryString["dateFrom"].ToString();
            string strDen = Request.QueryString["dateTo"].ToString();
            Session["dateFrom"] = strTu;
            Session["dateTo"] = strDen;
            idRoom = int.Parse(idPRoom);
            RoomController roomController = new RoomController();
            HotelController hotelController = new HotelController();
            room = new Room();
            hotel = new Hotel();
            lstRoomByTour = new List<Room>();
            room = roomController.GetEntityByID(idRoom);
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
            
            Response.Redirect("book-rom-pay.aspx?pId=" + room.id + "&dateFrom=" + ngayDatTu + "&dateTo=" + ngayDatDen + "");

        }
    }
}