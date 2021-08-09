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
    public partial class AdminProduct_list : System.Web.UI.Page
    {
        public List<Tour> lstTour;
        public List<DanhMuc> lstDanhMuc;
        TourController tourController = new TourController();
        DanhMucsController danhMucsController = new DanhMucsController();
        public OBFilter oBFilter;
        protected void Page_Load(object sender, EventArgs e)
        {
            oBFilter = new OBFilter();
            oBFilter.limit = 10;
            oBFilter.offset = 0;
            lstTour = (List<Tour>)tourController.GetTourBySearch(oBFilter);
            lstDanhMuc = (List<DanhMuc>)danhMucsController.GetAllEntity();

            //repeater.DataSource = lstTour;
            //repeater.DataBind();
        }

        protected void repeater_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            if (e.CommandName == "delete")
            {
                try
                {
                    int res = tourController.DelEntity(id);
                    ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");
                }
                catch
                {
                    ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal2').modal('toggle');</script>");
                }
            }
            if (e.CommandName == "edit")
            {
                Session["id_edit"] = id;
                Response.Redirect("AdminProduct-add.aspx");
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('dismiss');</script>");
            Response.Redirect("AdminUser-list.aspx");
        }
    }
}