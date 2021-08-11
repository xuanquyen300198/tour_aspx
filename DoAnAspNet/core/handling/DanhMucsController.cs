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
    public class DanhMucsController : BaseController<DanhMuc>, IDanhMuc<DanhMuc>
    {
        public override DanhMuc GetEntityByID(int id)
        {
            _id = "id";
            return base.GetEntityByID(id);
        }

        public override int DelEntity(int id)
        {
            _id = "id";
            return base.DelEntity(id);
        }

        public IEnumerable GetDanhMucBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
            }
            
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(ten) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            return _dbConnection.Query<DanhMuc>($"SELECT * FROM DANHMUC" + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);
            
        }
        public IEnumerable GetAllDanhMuc()
        {
            return _dbConnection.Query<DanhMuc>($"SELECT * FROM DANHMUC", commandType: System.Data.CommandType.Text);
        }

        public int CountDanhMucBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
            }

            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(ten) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            return _dbConnection.ExecuteScalar<int>($"SELECT count(*) FROM DANHMUC" + queryWhere, commandType: System.Data.CommandType.Text);
        }
    }
}