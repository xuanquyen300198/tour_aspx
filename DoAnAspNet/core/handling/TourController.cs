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
        public IEnumerable GetTourByDanhMuc(int id)
        {
            throw new NotImplementedException();
            //return _dbConnection.Query<Tour>("proc_GetTourByDanhMuc", new { ma_danh_muc = id }, commandType: System.Data.CommandType.StoredProcedure);
        }

        public IEnumerable GetTourByPage(int at, int total)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetTourBySearch(string keySearch)
        {
            throw new NotImplementedException();
            //return _dbConnection.Query<Tour>($"SELECT * FROM Tour WHERE LOWER(ten_mon) LIKE '%{keySearch}%'", commandType: System.Data.CommandType.Text);
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
            _ma = "ma_mon";
            return base.GetEntityByID(id);
        }

        public int CountTourByDanhMuc(int maDanhMuc)
        {
            throw new NotImplementedException();
            //return _dbConnection.ExecuteScalar<int>("proc_CountTourByMaDM", new { ma_danh_muc = maDanhMuc }, commandType: System.Data.CommandType.StoredProcedure);
        }

        public override int DelEntity(int id)
        {
            _ma = "ma_mon";
            return base.DelEntity(id);
        }
    }
}