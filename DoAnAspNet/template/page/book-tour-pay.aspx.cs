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
                Book book = new Book(user_id, tour.ma, "", ngayTao, ngayTu, ngayDen);
                bookController.AddNewEntity(book);

                Bill bill = new Bill(user_id, tour.ma, "", hoTen, "", soDT, email, int.Parse(loai), soThe, tour.giam_gia, ngayTao);
                billController.AddNewEntity(bill);
                Response.Write("<script>alert('Bạn đã đặt phòng thành công!')</script>");
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập hệ thống!')</script>");
            }

        }
    }
}