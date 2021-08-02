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
            if (lstDanhmuc.Count > 0)
            {
                for (int i = 0; i < lstDanhmuc.Count; i++)
                {
                    ListItem item = new ListItem(lstDanhmuc[i].ten.ToString(), lstDanhmuc[i].ma.ToString());
                    selectDanhMuc.Items.Add(item);
                }
            }
            lstTour = (List<Tour>)tourController.GetTourSale();
            lstHotel = (List<Hotel>)hotelController.GetHotelSale();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keySearch = textSearch.Text.Trim().ToString();
            string selectedValue = selectDanhMuc.SelectedItem.Value;
            if (keySearch != null && (selectedValue != null && selectedValue != ""))
            {
                Response.Redirect("tour.aspx?keySearch=" + keySearch + "&selectedValue="+ selectedValue+"");
            }
        }
    }
}