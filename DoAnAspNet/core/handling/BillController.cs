using Dapper;
using DoAnAspNet.core.Interface;
using DoAnAspNet.core.Object;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAnAspNet.core.handling
{
    public class BillController : BaseController<Bill>, IBill<Bill>
    {
        public int CountBillByDanhMuc(int maDanhMuc)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBillByDanhMuc(string ma_hotel)
        {
            return _dbConnection.Query<Bill>($"SELECT * FROM Bill WHERE ma_hotel = '{ma_hotel}'", commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetBillByPage(int at, int total)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBillBySearch(string keySearch)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBillFeatured()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBillLaster()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBillSale()
        {
            return _dbConnection.Query<Bill>("proc_GetBillSale", commandType: System.Data.CommandType.StoredProcedure);
        }
        public override Bill GetEntityByID(int id)
        {
            _id = "id";
            return base.GetEntityByID(id);
        }
        public override int DelEntity(int id)
        {
            _id = "id";
            return base.DelEntity(id);
        }
    }
}
