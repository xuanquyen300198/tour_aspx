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
    public partial class bill : System.Web.UI.Page
    {
        public List<Bill> lstBill;
        public List<Bill> lstBillTour;
        public List<Bill> lstBillRoom;
        public Boolean login = false;
        BillController billController = new BillController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["User_ID"] as string))
            {
                int user_id = int.Parse(Session["User_ID"].ToString());
                login = true;
                lstBill = new List<Bill>();
                lstBillTour = new List<Bill>();
                lstBillRoom = new List<Bill>();
                Bill billSearch = new Bill();
                billSearch.user_id = user_id;
                lstBill = (List<Bill>)billController.GetBillBySearch(billSearch);
                foreach(var item in lstBill)
                {
                    if (!string.IsNullOrEmpty(item.ma_tour))
                    {
                        lstBillTour.Add(item);
                    }
                    if (!string.IsNullOrEmpty(item.ma_room))
                    {
                        lstBillRoom.Add(item);
                    }
                }

            }
            else
            {
                login = false;
            }
        }
    }
}