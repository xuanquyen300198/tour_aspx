using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAnAspNet.core.Interface
{
    public interface IBook<Book>
    {
        IEnumerable GetBookBySearch(Book book);

        IEnumerable GetBookByDanhMuc(string ma_tour);

        IEnumerable GetBookFeatured();

        IEnumerable GetBookByPage(int at, int total);

        IEnumerable GetBookLaster();

        IEnumerable GetBookSale();

        int CountBookByDanhMuc(int maDanhMuc);
    }
}
