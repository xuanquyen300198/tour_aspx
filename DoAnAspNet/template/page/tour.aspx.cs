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
        public int totalPage = 1;
        public int page = 1;
        public List<Tour> lstTour;
        public List<DanhMuc> lstDanhmuc;
        OBFilter objFilter = new OBFilter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lstTour = new List<Tour>();
            lstDanhmuc = new List<DanhMuc>();
            
            objFilter.limit = 10;
            objFilter.offset = 0;
            
            lstDanhmuc = (List<DanhMuc>)danhMucsController.GetAllDanhMuc();
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            int countSelect = selectDanhMuc.Items.Count;
            if (lstDanhmuc.Count > 0 && countSelect <=0)
            {
                //ListItem itemDf = new ListItem("Địa điểm", "");
                //selectDanhMuc.Items.Add(itemDf);
                for (int i = 0; i < lstDanhmuc.Count; i++)
                {
                    ListItem item = new ListItem(lstDanhmuc[i].ten.ToString(), lstDanhmuc[i].ma.ToString());
                    selectDanhMuc.Items.Add(item);
                }
            }
            
            if (url.IndexOf("keySearch") >0 && url.IndexOf("selectedValue") >0)
            {
                string keySearch = Request.QueryString["keySearch"].ToString();
                string selectedValue = Request.QueryString["selectedValue"].ToString();
                objFilter.ten = keySearch;
                objFilter.ma_danhmuc = selectedValue;
                
            }else if (url.IndexOf("pMa") > 0)
            {
                string pMa = Request.QueryString["pMa"].ToString();
                objFilter.ma_danhmuc = pMa;
            }
            lstTour = (List<Tour>)tourController.GetTourBySearch(objFilter);
            count = tourController.CountTourBySearch(objFilter);
            if(count > 10)
            {
                totalPage = count / 10;
            }
            
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keySearch = textSearch.Text.Trim().ToString();
            string selectedValue = selectDanhMuc.SelectedItem.Value;
            string min = valueMin.Text.Trim().ToString();
            string max = valueMax.Text.Trim().ToString();
            objFilter.limit = 10;
            objFilter.offset = 0;
            objFilter.ma_danhmuc = selectedValue;
            objFilter.ten = keySearch;
            objFilter.gia_tu = min;
            objFilter.gia_den = max;
            
            lstTour = (List<Tour>)tourController.GetTourBySearch(objFilter);
            count = tourController.CountTourBySearch(objFilter);
            if (count > 10)
            {
                totalPage = count / 10;
            }
        }
        public void ClickPrev(object sender, EventArgs e)
        {
            if (page > 1)
            {
                page --;
            }
            string keySearch = textSearch.Text.Trim().ToString();
            string selectedValue = selectDanhMuc.SelectedItem.Value;
            string min = valueMin.Text.Trim().ToString();
            string max = valueMax.Text.Trim().ToString();
            objFilter.limit = 10;
            objFilter.offset = page -1;
            objFilter.ma_danhmuc = selectedValue;
            objFilter.ten = keySearch;
            objFilter.gia_tu = min;
            objFilter.gia_den = max;

            lstTour = (List<Tour>)tourController.GetTourBySearch(objFilter);
            count = tourController.CountTourBySearch(objFilter);
            if (count > 10)
            {
                totalPage = count / 10;
            }
        }
        public void ClickPage(object sender, EventArgs e)
        {
            string nextPagev = "2";
                //nextPage.Text.Trim().ToString();
            string keySearch = textSearch.Text.Trim().ToString();
            string selectedValue = selectDanhMuc.SelectedItem.Value;
            string min = valueMin.Text.Trim().ToString();
            string max = valueMax.Text.Trim().ToString();
            objFilter.limit = 10;
            objFilter.offset = int.Parse(nextPagev) - 1;
            objFilter.ma_danhmuc = selectedValue;
            objFilter.ten = keySearch;
            objFilter.gia_tu = min;
            objFilter.gia_den = max;

            lstTour = (List<Tour>)tourController.GetTourBySearch(objFilter);
            count = tourController.CountTourBySearch(objFilter);
            if (count > 10)
            {
                totalPage = count / 10;
            }
        }
        public void ClickNext(object sender, EventArgs e)
        {
            if (page < totalPage)
            {
                page ++;
            }
            string keySearch = textSearch.Text.Trim().ToString();
            string selectedValue = selectDanhMuc.SelectedItem.Value;
            string min = valueMin.Text.Trim().ToString();
            string max = valueMax.Text.Trim().ToString();
            objFilter.limit = 10;
            objFilter.offset = page - 1;
            objFilter.ma_danhmuc = selectedValue;
            objFilter.ten = keySearch;
            objFilter.gia_tu = min;
            objFilter.gia_den = max;

            lstTour = (List<Tour>)tourController.GetTourBySearch(objFilter);
            count = tourController.CountTourBySearch(objFilter);
            if (count > 10)
            {
                totalPage = count / 10;
            }
        }
    }
}