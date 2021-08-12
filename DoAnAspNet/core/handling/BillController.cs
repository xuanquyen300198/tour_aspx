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

        public IEnumerable GetBillByPage(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma_tour))
            {
                queryWhere = queryWhere + " And b.ma_tour = '" + objFilter.ma_tour + "'";
            }
            if (objFilter.id!=0)
            {
                queryWhere = queryWhere + " And b.id = " + objFilter.id + "";
            }
            if (!string.IsNullOrEmpty(objFilter.gia_tu))
            {
                queryWhere = queryWhere + " And b.thanh_tien >= " + objFilter.gia_tu + "";
            }
            if (!string.IsNullOrEmpty(objFilter.gia_den))
            {
                queryWhere = queryWhere + " And b.thanh_tien <= " + objFilter.gia_den + "";
            }
            if (!string.IsNullOrEmpty(objFilter.email))
            {
                queryWhere = queryWhere + " And b.email = '" + objFilter.email + "' ";
            }
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And ( LOWER(t.ten) LIKE LOWER('%" + objFilter.ten + "%') ";
                queryWhere = queryWhere + " Or LOWER(r.ten) LIKE LOWER('%" + objFilter.ten + "%') )";
            }
            return _dbConnection.Query<Bill>($"SELECT b.*,t.ten 'ten1',t.anh 'anh1',t.van_tat 'vantat1',r.ten 'ten2',r.anh 'anh2',r.van_tat 'vantat2',bo.ngay_dat_tu, bo.ngay_dat_den FROM Bill b " +
                $"left join tour t on b.ma_tour = t.ma " +
                $"left join room r on b.ma_room = r.ma " +
                $"left join book bo on bo.id = b.book_id " +
                queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);
        }
        public int CountBillByPage(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma_tour))
            {
                queryWhere = queryWhere + " And ma_tour = '" + objFilter.ma_tour + "'";
            }

            if (!string.IsNullOrEmpty(objFilter.gia_tu))
            {
                queryWhere = queryWhere + " And thanh_tien >= " + objFilter.gia_tu + "";
            }
            if (!string.IsNullOrEmpty(objFilter.gia_den))
            {
                queryWhere = queryWhere + " And thanh_tien <= " + objFilter.gia_den + "";
            }
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And user_id = " + objFilter.user_id + " ";
            }
            return _dbConnection.ExecuteScalar<int>($"SELECT count(*) FROM Bill b " +
                $"left join tour t on b.ma_tour = t.ma " +
                $"left join room r on b.ma_room = r.ma " + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);

        }
        public IEnumerable GetBillBySearch(Bill bill)
        {
            return _dbConnection.Query<Bill>($"SELECT b.*,t.ten 'ten1',t.anh 'anh1',t.van_tat 'vantat1',r.ten 'ten2',r.anh 'anh2',r.van_tat 'vantat2' FROM Bill b " +
                $"left join tour t on b.ma_tour = t.ma " +
                $"left join room r on b.ma_room = r.ma " +
                $"WHERE b.user_id = '{bill.user_id}'", commandType: System.Data.CommandType.Text);
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
