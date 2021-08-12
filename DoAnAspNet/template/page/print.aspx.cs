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
    public partial class print : System.Web.UI.Page
    {
        BillController billController = new BillController();
        Account_UsersController usersController = new Account_UsersController();
        public Bill bill;
        public Account_User user;
        public int total;
        public int discount;
        public int vat;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id_print"] != null)
                {
                    int id = int.Parse(Session["id_print"].ToString());

                    bill = new Bill();
                    user = new Account_User();
                    OBFilter objFilter = new OBFilter();
                    objFilter.limit = 1;
                    objFilter.offset = 0;
                    objFilter.id = id;
                    List<Bill> lstBill = (List<Bill>)billController.GetBillByPage(objFilter);
                    
                    if (lstBill.Count > 0)
                    {
                        bill = lstBill[0];
                        user = usersController.GetEntityByID(bill.user_id);
                        int value = int.Parse(bill.thanh_tien);
                        discount = value * 10 / 100;
                        vat = value * 8 / 100;
                        total = value + discount + vat;
                    }

                }
            }

        }
    }
}