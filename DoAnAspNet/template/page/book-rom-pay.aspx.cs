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
    public partial class book_rom_pay : System.Web.UI.Page
    {
        public Room room;
        public Hotel hotel;
        public List<Room> lstRoomByTour;
        public string[] dateFrom;
        public string[] dateTo;
        public string ngayDatTu = "";
        public string ngayDatDen = "";
        public string hoTen = "";
        public string email = "";
        int idRoom;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPRoom = Request.QueryString["pId"].ToString();
            ngayDatTu = Request.QueryString["dateFrom"].ToString();
            ngayDatDen = Request.QueryString["dateTo"].ToString();
            hoTen = Session["hoTen"].ToString();
            email = Session["mail"].ToString();
            idRoom = int.Parse(idPRoom);
            RoomController roomController = new RoomController();
            HotelController hotelController = new HotelController();
            room = new Room();
            hotel = new Hotel();
            lstRoomByTour = new List<Room>();
            room = roomController.GetEntityByID(idRoom);
            if (room != null)
            {
                OBFilter obj = new OBFilter();
                obj.ma = room.ma_hotel;
                obj.limit = 1;
                obj.offset = 0;
                List<Hotel> lst = (List<Hotel>)hotelController.GetHotelBySearch(obj);
                if (lst.Count > 0)
                {
                    hotel = lst[0];
                }
            }
            

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
                //Response.Redirect("book-rom-pay.aspx?pId=" + room.id + "&dateFrom=" + ngayDatTu + "&dateTo=" + ngayDatDen + "");
                BookController bookController = new BookController();
                BillController billController = new BillController();
                string ngayTao = DateTime.Now.ToString("yyyy/MM/dd");
                string ngayTu = (Session["dateFrom"].ToString()).Replace("-","/");
                string ngayDen = (Session["dateTo"].ToString()).Replace("-", "/");
                Book book = new Book(user_id, "", room.ma, ngayTao, ngayTu, ngayDen);
                bookController.AddNewEntity(book);

                Bill bill = new Bill(user_id, "", room.ma, hoTen, "", soDT, email, int.Parse(loai), soThe, room.giam_gia, ngayTao);
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