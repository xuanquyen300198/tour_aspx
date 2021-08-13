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
    public partial class book_tour : System.Web.UI.Page
    {
        public Tour tour;
        public string[] dateFrom;
        public string[] dateTo;
        public string ngayDatTu = "";
        public string ngayDatDen = "";
        int idtour;
        public double longTime;
        public int total;
        public int thanhTien;
        public string quyDoi;
        public int thue;
        public int phiDichVu;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPtour = Request.QueryString["pId"].ToString();
            string strTu = Request.QueryString["dateFrom"].ToString();
            string strDen = Request.QueryString["dateTo"].ToString();
            Session["dateFrom"] = strTu;
            Session["dateTo"] = strDen;
            idtour = int.Parse(idPtour);
            TourController tourController = new TourController();
            tour = new Tour();
            tour = tourController.GetEntityByID(idtour);
            total = int.Parse(tour.gia_sau_giam);
            thue = total * 10 / 100;
            phiDichVu = total * 10 / 100;
            thanhTien = total + thue + phiDichVu;
            int thanhTienQ = 23000 * thanhTien;
            CultureInfo cul = CultureInfo.GetCultureInfo("vi-VN");   // try with "en-US"
            quyDoi = double.Parse(thanhTienQ + "").ToString("#,###", cul.NumberFormat);
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
            string ho = lastname.Text.Trim().ToString();
            string ten = firstname.Text.Trim().ToString();
            string mail = email.Text.Trim().ToString();
            Session["hoTen"] = ho + " " + ten;
            Session["mail"] = mail;

            Response.Redirect("book-tour-pay.aspx?pId=" + tour.id + "&dateFrom=" + ngayDatTu + "&dateTo=" + ngayDatDen + "");

        }
    }
}