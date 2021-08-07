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
    public class BookController : BaseController<Book>, IBook<Book>
    {
        public int CountBookByDanhMuc(int maDanhMuc)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBookByDanhMuc(string ma_hotel)
        {
            return _dbConnection.Query<Book>($"SELECT * FROM Book WHERE ma_hotel = '{ma_hotel}'", commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetBookByPage(int at, int total)
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBookBySearch(Book book)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(book.ma_room))
            {
                queryWhere = queryWhere + " And ma_room = '" + book.ma_room + "'";
            }
            if (!string.IsNullOrEmpty(book.ngay_dat_tu))
            {
                queryWhere = queryWhere + " And ngay_dat_tu >= '" + book.ngay_dat_tu + "'";
            }

            if (!string.IsNullOrEmpty(book.ngay_dat_den))
            {
                queryWhere = queryWhere + " And ngay_dat_den <= '" + book.ngay_dat_den + "'";
            }

            return _dbConnection.Query<Book>($"SELECT * FROM BOOK " + queryWhere, commandType: System.Data.CommandType.Text);
        }

        public IEnumerable GetBookFeatured()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBookLaster()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetBookSale()
        {
            return _dbConnection.Query<Book>("proc_GetBookSale", commandType: System.Data.CommandType.StoredProcedure);
        }
        public override Book GetEntityByID(int id)
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