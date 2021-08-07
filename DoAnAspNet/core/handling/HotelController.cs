using Dapper;
using DoAnAspNet.core.Interface;
using DoAnAspNet.core.Object;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.handling
{
    public class HotelController : BaseController<Hotel>, IHotel<Hotel>
    {
        public int CountHotelByDanhMuc(int maDanhMuc)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetHotelByDanhMuc(string ma_tour)
        {
            return _dbConnection.Query<Hotel>($"SELECT * FROM Hotel WHERE ma_tour = '{ma_tour}'", commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetHotelByPage(int at, int total)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetHotelBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
            }
            if (!string.IsNullOrEmpty(objFilter.ma_danhmuc))
            {
                queryWhere = queryWhere + " And ma_danhmuc = '" + objFilter.ma_danhmuc + "'";
            }

            if (!string.IsNullOrEmpty(objFilter.gia_tu))
            {
                queryWhere = queryWhere + " And gia_sau_giam >= " + objFilter.gia_tu + "";
            }
            if (!string.IsNullOrEmpty(objFilter.gia_den))
            {
                queryWhere = queryWhere + " And gia_sau_giam <= " + objFilter.gia_den + "";
            }
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(ten) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            return _dbConnection.Query<Hotel>($"SELECT * FROM Hotel" + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);
        }

        public int CountHotelBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma_danhmuc))
            {
                queryWhere = queryWhere + " And ma_danhmuc = '" + objFilter.ma_danhmuc + "'";
            }

            if (!string.IsNullOrEmpty(objFilter.gia_tu))
            {
                queryWhere = queryWhere + " And gia_sau_giam >= " + objFilter.gia_tu + "";
            }
            if (!string.IsNullOrEmpty(objFilter.gia_den))
            {
                queryWhere = queryWhere + " And gia_sau_giam <= " + objFilter.gia_den + "";
            }
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(ten) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            return _dbConnection.ExecuteScalar<int>($"SELECT count(1) FROM Hotel" + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);

        }
        public IEnumerable GetHotelFeatured()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetHotelLaster()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetHotelSale()
        {
            return _dbConnection.Query<Hotel>("proc_GetHotelSale", commandType: System.Data.CommandType.StoredProcedure);
        }
        public override Hotel GetEntityByID(int id)
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