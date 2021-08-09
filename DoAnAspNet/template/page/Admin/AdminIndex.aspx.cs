using DoAnAspNet.core.handling;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet.template.page.Admin
{
    public partial class AdminIndex : System.Web.UI.Page
    {
        public List<Book> lstBook;
        //public List<GioHang_SanPham> gioHang_SanPhams;
        //public List<PhanHoi> phanHois;
        public int tongSoMon = 0;
        public int tongSoDon = 0;
        public int soDonDaGiao = 0;
        public int soDonDangCho = 0;
        public int tongTien = 0;
        BookController bookController = new BookController();
        //GioHang_SanPhamController gioHang_SanPhamController = new GioHang_SanPhamController();
        //PhanHoiController phanHoiController = new PhanHoiController();

        protected void Page_Load(object sender, EventArgs e)
        {
            lstBook = (List<Book>)bookController.GetAllEntity();
            //phanHois = (List<PhanHoi>)phanHoiController.GetAllEntity();

            foreach (var items in lstBook)
            {
                tongSoDon += 1;
                //tongTien += items.;
                //if (items.trang_thai_don_hang == 1)
                //{
                //    soDonDaGiao += 1;
                //    tongSoMon += items.tong_so_mon;
                //}
                //else
                //{
                //    soDonDangCho += 1;
                //}
            }

            repeater.DataSource = lstBook;
            repeater.DataBind();

            //repeater1.DataSource = phanHois;
            repeater1.DataBind();

        }

        protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "update")
            {
                int IDDonHang = int.Parse(e.CommandArgument.ToString());
                //int res = gioHang_SanPhamController.DelGioHang_SanPham(IDGioHang, ma_mon);
                //int res = BookController.updateTrangThaiDonHang(IDDonHang);
                Response.Redirect($"Page2.aspx?param={IDDonHang}");
            }
        }

        protected void repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                //phanHoiController.DelEntity(id);
                Response.Redirect("AdminIndex.aspx");
            }
        }
    }
}