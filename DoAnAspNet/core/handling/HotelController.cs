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

        public IEnumerable GetHotelBySearch(string keySearch)
        {
            throw new NotImplementedException();
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
    }
}