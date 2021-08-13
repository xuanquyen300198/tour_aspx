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
    public partial class room_detail : System.Web.UI.Page
    {
        public Room room;
        public List<Room> lstRoomByTour;
        RoomController roomController = new RoomController();
        BookController bookController = new BookController();
        int idRoom;
        public Boolean alert = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            string idPRoom = Request.QueryString["pId"].ToString();
            idRoom = int.Parse(idPRoom);
            

            room = new Room();
            lstRoomByTour = new List<Room>();
            room = roomController.GetEntityByID(idRoom);
            if (room != null)
            {
                lstRoomByTour = (List<Room>)roomController.GetRoomByDanhMuc(room.ma_hotel);
            }
        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            string dateFrom = txtDateFrom1.Text.Trim().ToString();
            string dateTo = txtDateTo.Text.Trim().ToString();
            string selectedKH = drlKH.SelectedItem.Value;
            string selectedTE = drlTreEm.SelectedItem.Value;
            Book bookSearch = new Book();
            bookSearch.ngay_dat_tu = dateFrom;
            bookSearch.ngay_dat_den = dateTo;
            bookSearch.ma_room = room.ma;
            List<Book> listBook = (List<Book>)bookController.GetBookBySearch(bookSearch);
            if(listBook.Count > 0)
            {
                lblModalTitle.Text = "Thông báo!";
                lblModalBody.Text = "Phòng đang được trong thời gian sử dụng.Vui lòng chọn lại!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
            }
            else
            {
                Response.Redirect("book-room.aspx?pId=" + room.id + "&dateFrom=" + dateFrom + "&dateTo="+ dateTo + "");
            }
        }
    }
}