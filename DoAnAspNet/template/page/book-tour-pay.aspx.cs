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
    public partial class book_tour_pay : System.Web.UI.Page
    {
        public Tour tour;
        public Hotel hotel;
        public List<Tour> lstTourByTour;
        public string[] dateFrom;
        public string[] dateTo;
        public string ngayDatTu = "";
        public string ngayDatDen = "";
        public string hoTen = "";
        public string email = "";
        int idTour;
        public double longTime;
        public int total;
        public int thanhTien;
        public string quyDoi;
        public int thue;
        public int phiDichVu;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPTour = Request.QueryString["pId"].ToString();
            ngayDatTu = Request.QueryString["dateFrom"].ToString();
            ngayDatDen = Request.QueryString["dateTo"].ToString();
            hoTen = Session["hoTen"].ToString();
            email = Session["mail"].ToString();


            idTour = int.Parse(idPTour);
            TourController TourController = new TourController();
            tour = new Tour();
            hotel = new Hotel();
            lstTourByTour = new List<Tour>();
            tour = TourController.GetEntityByID(idTour);

            total = int.Parse(tour.gia_sau_giam);
            thue = total * 10 / 100;
            phiDichVu = total * 10 / 100;
            thanhTien = total + thue + phiDichVu;
            int thanhTienQ = 23000 * thanhTien;
            CultureInfo cul = CultureInfo.GetCultureInfo("vi-VN");   // try with "en-US"
            quyDoi = double.Parse(thanhTienQ + "").ToString("#,###", cul.NumberFormat);


        }
        protected void btnBookPayClick(object sender, EventArgs e)
        {
            string loai = drlLoai.SelectedItem.Value;
            string soDT = phone.Text.Trim().ToString();
            string soThe = cc_number.Text.Trim().ToString();
            string cccvc = cc_cvc.Text.Trim().ToString();
            if (!string.IsNullOrEmpty(Session["User_ID"] as string))
            {
                int user_id = int.Parse(Session["User_ID"].ToString());
                //Response.Redirect("book-rom-pay.aspx?pId=" + Tour.id + "&dateFrom=" + ngayDatTu + "&dateTo=" + ngayDatDen + "");
                BookController bookController = new BookController();
                BillController billController = new BillController();
                string ngayTao = DateTime.Now.ToString("yyyy/MM/dd");
                string ngayTu = (Session["dateFrom"].ToString()).Replace("-", "/");
                string ngayDen = (Session["dateTo"].ToString()).Replace("-", "/");
                Bill bill = new Bill(user_id, tour.ma, "", hoTen, "", soDT, email, int.Parse(loai), soThe, thanhTien+"", ngayTao, ngayTu, ngayDen);
                billController.AddNewEntity(bill);
                lblModalTitle.Text = "Thông báo!";
                lblModalBody.Text = "Bạn đã đặt tour du lịch thành công";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                //Response.Write("<script>alert('Bạn đã đặt phòng thành công!')</script>");
                //Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập hệ thống!')</script>");
            }

        }
    }
}