using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnAspNet.template.page.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        public string username = "Admin";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["User"] as string))
            {
                string username = Session["User"].ToString();
            }
        }
    }
}