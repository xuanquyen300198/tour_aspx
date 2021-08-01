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

        public IEnumerable GetDanhMucBySearch(string keySearch)
        {
            if (keySearch !=null && keySearch.Equals(""))
            {
                return _dbConnection.Query<Tour>($"SELECT * FROM DANHMUC WHERE LOWER(ten) LIKE '%{keySearch}%'", commandType: System.Data.CommandType.Text);
            }
            else
            {
                return _dbConnection.Query<Tour>($"SELECT * FROM DANHMUC ", commandType: System.Data.CommandType.Text);
            }
            
        }
        public IEnumerable GetAllDanhMuc()
        {
            return _dbConnection.Query<DanhMuc>($"SELECT * FROM DANHMUC", commandType: System.Data.CommandType.Text);
        }

    }
}