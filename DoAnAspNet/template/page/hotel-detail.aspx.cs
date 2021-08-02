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
    public partial class hotel_detail : System.Web.UI.Page
    {
        public Hotel hotel;
        public List<Room> lstRoomByHotel;
        public List<Hotel> lstHotelByTour;
        int idHotel;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPHotel = Request.QueryString["pId"].ToString();
            idHotel = int.Parse(idPHotel);
            HotelController hotelController = new HotelController();
            RoomController roomController = new RoomController();

            hotel = new Hotel();
            lstHotelByTour = new List<Hotel>();
            lstRoomByHotel = new List<Room>();
            hotel = hotelController.GetEntityByID(idHotel);
            if (hotel != null)
            {
                lstHotelByTour = (List<Hotel>)hotelController.GetHotelByDanhMuc(hotel.ma_tour);
                lstRoomByHotel = (List<Room>)roomController.GetRoomByDanhMuc(hotel.ma);
            }
        }
    }
}