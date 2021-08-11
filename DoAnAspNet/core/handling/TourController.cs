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
    public class TourController : BaseController<Tour>, ITour<Tour>
    {
        public IEnumerable GetTourByDanhMuc(string ma_danhmuc)
        {
            return _dbConnection.Query<Tour>($"SELECT * FROM Tour WHERE ma_danhmuc = '{ma_danhmuc}'", commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetTourByPage(int at, int total)
        {
            throw new NotImplementedException();
        }
        public int CountTourBySearch(OBFilter objFilter)
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
            return _dbConnection.ExecuteScalar<int>($"SELECT count(1) FROM Tour" + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);

        }
        public IEnumerable GetTourBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma_danhmuc))
            {
                queryWhere = queryWhere + " And ma_danhmuc = '"+objFilter.ma_danhmuc + "'";
            }
            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
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
            return _dbConnection.Query<Tour>($"SELECT * FROM Tour"+queryWhere + " LIMIT "+ objFilter.limit+" OFFSET "+ objFilter.offset + "", commandType: System.Data.CommandType.Text);
           
        }

        public IEnumerable GetTourFeatured()
        {
            throw new NotImplementedException();
            //return _dbConnection.Query<Tour>("proc_GetTourByFeatured", commandType: System.Data.CommandType.StoredProcedure);
        }

        public IEnumerable GetTourLaster()
        {
            throw new NotImplementedException();
            //return _dbConnection.Query<Tour>("proc_GetTourLaster", commandType: System.Data.CommandType.StoredProcedure);
        }

        public IEnumerable GetTourSale()
        {
            return _dbConnection.Query<Tour>("proc_GetTourSale", commandType: System.Data.CommandType.StoredProcedure);
        }

        public override Tour GetEntityByID(int id)
        {
            _id = "id";
            return base.GetEntityByID(id);
        }

        public int CountTourByDanhMuc(int maDanhMuc)
        {
            throw new NotImplementedException();
            //return _dbConnection.ExecuteScalar<int>("proc_CountTourByMaDM", new { ma_danh_muc = maDanhMuc }, commandType: System.Data.CommandType.StoredProcedure);
        }

        public override int DelEntity(int id)
        {
            _id = "id";
            return base.DelEntity(id);
        }
    }
}