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
    public partial class AdminRoom_list : System.Web.UI.Page
    {
        List<Room> lstRoom;
        RoomController roomController = new RoomController();
        public OBFilter objFilter;
        public int totalPage = 1;
        public int count = 1;
        public int page = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id_edit"] = null;
            objFilter = new OBFilter();
            objFilter.limit = 10;
            objFilter.offset = 0;
            lstRoom = (List<Room>)roomController.GetRoomBySearch(objFilter);
            count = roomController.CountRoomBySearch(objFilter);
            if (count > 10)
            {
                totalPage = count / 10;
            }
            List<int> lstPage = new List<int>();
            for (int i = 0; i < totalPage; i++)
            {
                lstPage.Add(i);
            }


            repeaterPage.DataSource = from c in lstPage select new { id = c + 1 }; ;
            repeaterPage.DataBind();
            repeater.DataSource = lstRoom;
            repeater.DataBind();

        }

        protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            if (e.CommandName == "delete")
            {

                roomController.DelEntity(id);
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");

            }
            if (e.CommandName == "edit")
            {
                Session["id_edit"] = id;
                Response.Redirect("AdminRoom-add.aspx");
            }
        }
        protected void repeater_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            int pPage = int.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "page" && pPage != page)
            {
                page = pPage;
                Session["page"] = page;
                string ma = textMa.Text.Trim().ToString();
                string ten = textTen.Text.Trim().ToString();
                objFilter.offset = (pPage - 1) * 10;
                objFilter.limit = 10;
                objFilter.ma = ma;
                objFilter.ten = ten;
                lstRoom = (List<Room>)roomController.GetRoomBySearch(objFilter);
                count = roomController.CountRoomBySearch(objFilter);
                if (count > 10)
                {
                    totalPage = count / 10;
                }
                List<int> lstPage = new List<int>();
                for (int i = 0; i < totalPage; i++)
                {
                    lstPage.Add(i);
                }
                repeaterPage.DataSource = from c in lstPage select new { id = c + 1 }; ;
                repeaterPage.DataBind();
                repeater.DataSource = lstRoom;
                repeater.DataBind();


            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string ma = textMa.Text.Trim().ToString();
            string ten = textTen.Text.Trim().ToString();
            objFilter = new OBFilter();
            objFilter.limit = 10;
            objFilter.offset = 0;
            objFilter.ma = ma;
            objFilter.ten = ten;
            lstRoom = (List<Room>)roomController.GetRoomBySearch(objFilter);
            count = roomController.CountRoomBySearch(objFilter);

            if (count > 10)
            {
                totalPage = count / 10;
            }
            List<int> lstPage = new List<int>();
            for (int i = 0; i < totalPage; i++)
            {
                lstPage.Add(i);
            }
            repeaterPage.DataSource = from c in lstPage select new { id = c + 1 }; ;
            repeaterPage.DataBind();
            repeater.DataSource = lstRoom;
            repeater.DataBind();
        }
        public void ClickPrev(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty((Session["page"] + "")))
            {
                page = int.Parse(Session["page"].ToString());
            }
            if (page != 1)
            {
                page--;
                int pPage = page - 1;
                Session["page"] = page;
                string ma = textMa.Text.Trim().ToString();
                string ten = textTen.Text.Trim().ToString();
                objFilter.offset = (pPage - 1) * 10;
                objFilter.limit = 10;
                objFilter.ma = ma;
                objFilter.ten = ten;
                lstRoom = (List<Room>)roomController.GetRoomBySearch(objFilter);
                count = roomController.CountRoomBySearch(objFilter);
                if (count > 10)
                {
                    totalPage = count / 10;
                }
                List<int> lstPage = new List<int>();
                for (int i = 0; i < totalPage; i++)
                {
                    lstPage.Add(i);
                }
                repeaterPage.DataSource = from c in lstPage select new { id = c + 1 }; ;
                repeaterPage.DataBind();
                repeater.DataSource = lstRoom;
                repeater.DataBind();


            }
        }
        public void ClickNext(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty((Session["page"] + "")))
            {
                page = int.Parse(Session["page"].ToString());
            }
            if (page != 1)
            {
                page++;
                int pPage = page - 1;
                Session["page"] = page;
                string ma = textMa.Text.Trim().ToString();
                string ten = textTen.Text.Trim().ToString();
                objFilter.offset = (pPage - 1) * 10;
                objFilter.limit = 10;
                objFilter.ma = ma;
                objFilter.ten = ten;
                lstRoom = (List<Room>)roomController.GetRoomBySearch(objFilter);
                count = roomController.CountRoomBySearch(objFilter);
                if (count > 10)
                {
                    totalPage = count / 10;
                }
                List<int> lstPage = new List<int>();
                for (int i = 0; i < totalPage; i++)
                {
                    lstPage.Add(i);
                }
                repeaterPage.DataSource = from c in lstPage select new { id = c + 1 }; ;
                repeaterPage.DataBind();
                repeater.DataSource = lstRoom;
                repeater.DataBind();


            }
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('dismiss');</script>");
            Response.Redirect("AdminRoom-list.aspx");
        }
    }
}