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
    public class RoomController : BaseController<Room>, IRoom<Room>
    {
        public int CountRoomByDanhMuc(int maDanhMuc)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetRoomByDanhMuc(string ma_hotel)
        {
            return _dbConnection.Query<Room>($"SELECT * FROM Room WHERE ma_hotel = '{ma_hotel}'", commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetRoomByPage(int at, int total)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetRoomBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And r.ma = '" + objFilter.ma + "'";
            }
            if (!string.IsNullOrEmpty(objFilter.ma_danhmuc))
            {
                queryWhere = queryWhere + " And r.ma_hotel = '" + objFilter.ma_danhmuc + "'";
            }

            if (!string.IsNullOrEmpty(objFilter.gia_tu))
            {
                queryWhere = queryWhere + " And r.gia_sau_giam >= " + objFilter.gia_tu + "";
            }
            if (!string.IsNullOrEmpty(objFilter.gia_den))
            {
                queryWhere = queryWhere + " And r.gia_sau_giam <= " + objFilter.gia_den + "";
            }
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(r.ten) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            return _dbConnection.Query<Room>($"SELECT r.*, h.ten 'dia_chi' FROM Room r left join hotel h on r.ma_hotel = h.ma " + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);
        }

        public int CountRoomBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
            }
            if (!string.IsNullOrEmpty(objFilter.ma_danhmuc))
            {
                queryWhere = queryWhere + " And ma_hotel = '" + objFilter.ma_danhmuc + "'";
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
            return _dbConnection.ExecuteScalar<int>($"SELECT count(*) FROM Room" + queryWhere+ "", commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetRoomFeatured()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetRoomLaster()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetRoomSale()
        {
            return _dbConnection.Query<Room>("proc_GetRoomSale", commandType: System.Data.CommandType.StoredProcedure);
        }
        public override Room GetEntityByID(int id)
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