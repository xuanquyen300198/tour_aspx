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
    public partial class index : System.Web.UI.Page
    {
        
        DanhMucsController danhMucsController = new DanhMucsController();
        TourController tourController = new TourController();
        HotelController hotelController = new HotelController();
        public List<DanhMuc> lstDanhmuc;
        public List<Tour> lstTour;
        public List<Hotel> lstHotel;
        protected void Page_Load(object sender, EventArgs e)
        {
            lstDanhmuc = new List<DanhMuc>();
            lstTour = new List<Tour>();
            lstHotel = new List<Hotel>();
            lstDanhmuc = (List<DanhMuc>)danhMucsController.GetAllDanhMuc();
            lstTour = (List<Tour>)tourController.GetTourSale();
            lstHotel = (List<Hotel>)hotelController.GetHotelSale();
        }
    }
}