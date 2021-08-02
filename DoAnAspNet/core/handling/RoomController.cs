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

        public IEnumerable GetRoomBySearch(string keySearch)
        {
            throw new NotImplementedException();
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