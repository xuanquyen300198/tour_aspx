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
        public List<DanhMuc> lstDanhmuc;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lstTour = new List<Tour>();
            lstDanhmuc = new List<DanhMuc>();
            OBFilter objFilter = new OBFilter();
            objFilter.limit = 10;
            objFilter.offset = 0;
            lstDanhmuc = (List<DanhMuc>)danhMucsController.GetAllDanhMuc();
            if (lstDanhmuc.Count > 0)
            {
                for (int i = 0; i < lstDanhmuc.Count; i++)
                {
                    ListItem item = new ListItem(lstDanhmuc[i].ten.ToString(), lstDanhmuc[i].ma.ToString());
                    selectDanhMuc.Items.Add(item);
                }
            }
            string keySearch = Request.QueryString["keySearch"].ToString();
            string selectedValue = Request.QueryString["selectedValue"].ToString();
            if ((!string.IsNullOrEmpty(keySearch)) || (!string.IsNullOrEmpty(selectedValue)))
            {
                objFilter.ten = keySearch;
                objFilter.ma = selectedValue;
                lstTour = (List<Tour>)tourController.GetTourBySearch(objFilter);
            }

        }
    }
}