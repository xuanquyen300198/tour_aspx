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
    public partial class tour_detail : System.Web.UI.Page
    {
        public Tour tour;
        public List<Tour> lstTourByDm;
        public List<Hotel> lstHotelByTour;
        public List<Tour> lstTour;
        public List<Hotel> lstHotel;
        int idTour;

        protected void Page_Load(object sender, EventArgs e)
        {
            string idPTour = Request.QueryString["pId"].ToString();
            idTour = int.Parse(idPTour);
            TourController tourController = new TourController();
            HotelController hotelController = new HotelController();

            tour = new Tour();
            lstHotel = new List<Hotel>();
            tour = tourController.GetEntityByID(idTour);
            if (tour != null)
            {
                lstTour = (List<Tour>)tourController.GetTourByDanhMuc(tour.ma_danhmuc);
                lstHotel = (List<Hotel>)hotelController.GetHotelByDanhMuc(tour.ma);
            }
        }
    }
}