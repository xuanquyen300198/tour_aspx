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
    public partial class tour : System.Web.UI.Page
    {
        DanhMucsController danhMucsController = new DanhMucsController();
        TourController tourController = new TourController();
        public int count;
        public List<Tour> lstTour;
        protected void Page_Load(object sender, EventArgs e)
        {
            string keySearch = Session["keySearch"].ToString();
            string selectedValue = Session["selectedValue"].ToString();
            lstTour = new List<Tour>();
            Tour tourSearch = new Tour();
            if ((keySearch != null && keySearch != "") || (selectedValue != null && selectedValue != ""))
            {
                tourSearch.ten = keySearch;
                tourSearch.ma_danhmuc = selectedValue;
                lstTour = (List<Tour>)tourController.GetTourBySearch(tourSearch);
                int a = lstTour.Count;
            }

        }
    }
}