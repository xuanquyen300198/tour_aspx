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
        List<Bill> lstBill;
        BillController billController = new BillController();
        BookController bookController = new BookController();
        public OBFilter objFilter;
        public int totalPage = 1;
        public int count = 1;
        public int page = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            objFilter = new OBFilter();
            objFilter.limit = 10;
            objFilter.offset = 0;
            lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
            count = billController.CountBillByPage(objFilter);
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
            repeater.DataSource = lstBill;
            repeater.DataBind();

        }

        protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            if (e.CommandName == "delete")
            {
                Bill billN = billController.GetEntityByID(id);
                billController.DelEntity(id);
                bookController.DelEntity(billN.book_id);
                
                
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('toggle');</script>");

            }
            if (e.CommandName == "edit")
            {
                Session["id_edit"] = id;
                Session["id_view"] = null;
                Response.Redirect("AdminBill-view.aspx");
            }
            if (e.CommandName == "view")
            {
                Session["id_view"] = id;
                Session["id_edit"] = null;
                Response.Redirect("AdminBill-view.aspx");
            }
            if (e.CommandName == "print")
            {
                Session["id_print"] = id;
                Response.Redirect("../print.aspx");
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
                objFilter.ten = ma;
                objFilter.email = ten;
                lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
                count = billController.CountBillByPage(objFilter);
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
                repeater.DataSource = lstBill;
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
            objFilter.ten = ma;
            objFilter.email = ten;
            lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
            count = billController.CountBillByPage(objFilter);

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
            repeater.DataSource = lstBill;
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
                objFilter.ten = ma;
                objFilter.email = ten;
                lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
                count = billController.CountBillByPage(objFilter);
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
                repeater.DataSource = lstBill;
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
                objFilter.ten = ma;
                objFilter.email = ten;
                lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
                count = billController.CountBillByPage(objFilter);
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
                repeater.DataSource = lstBill;
                repeater.DataBind();


            }
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#myModal').modal('dismiss');</script>");
            Response.Redirect("AdminIndex.aspx");
        }
    }
}