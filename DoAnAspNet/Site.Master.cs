using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet
{
    public partial class SiteMaster : MasterPage
    {
        public Boolean login = false;
        public string indexAct = "";
        public string tourAct = "";
        public string hotelAct = "";
        public string billAct = "";
        public string style = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = HttpContext.Current.Request.Url.AbsolutePath;
            int start = path.LastIndexOf("/") + 1;
            string name = path.Substring(start , (path.Length - start));
            switch (name)
            {
                case "index":
                    indexAct = " active";
                    hotelAct = " ";
                    tourAct = " ";
                    billAct = " ";
                    style = "";
                    break; 
                case "hotel":
                    hotelAct = " active";
                    indexAct = " ";
                    tourAct = " ";
                    billAct = " ";
                    style = "";
                    break;
                case "hotel-detail":
                    hotelAct = " active";
                    indexAct = " ";
                    tourAct = " ";
                    billAct = " ";
                    style = "";
                    break;
                case "tour":
                    tourAct = " active";
                    hotelAct = " ";
                    indexAct = " ";
                    billAct = " ";
                    style = "";
                    break;
                case "tour-detail":
                    tourAct = " active";
                    hotelAct = " ";
                    indexAct = " ";
                    billAct = " ";
                    style = "";
                    break;
                case "room-detail":
                    tourAct = " ";
                    hotelAct = "active ";
                    indexAct = " ";
                    billAct = " ";
                    style = "";
                    break;
                case "bill":
                    billAct = " active";
                    hotelAct = " ";
                    tourAct = " ";
                    indexAct = " ";
                    style = "";
                    break;
                case "book-room":
                    billAct = " active";
                    hotelAct = " ";
                    tourAct = " ";
                    indexAct = " ";
                    style = "background-color: lightblue !important;";
                    break;
                case "book-room-pay":
                    billAct = " active";
                    hotelAct = " ";
                    tourAct = " ";
                    indexAct = " ";
                    style = "background-color: lightblue !important;";
                    break;
                case "book-tour":
                    billAct = " active";
                    hotelAct = " ";
                    tourAct = " ";
                    indexAct = " ";
                    style = "background-color: lightblue !important;";
                    break;
                case "book-tour-pay":
                    billAct = " active";
                    hotelAct = " ";
                    tourAct = " ";
                    indexAct = " ";
                    style = "background-color: lightblue !important;";
                    break;
                default:
                    indexAct = " active";
                    style = "";
                    break;
            }

            if (!string.IsNullOrEmpty(Session["User_ID"] as string))
            {
                login = true;
            }
        }
        protected void btnLogOutClick(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("register.aspx");
        }
    }
}