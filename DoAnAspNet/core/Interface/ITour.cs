using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using DoAnAspNet.core.Object;

namespace DoAnAspNet.core.Interface
{
    public interface ITour<Tour>
    {
        IEnumerable GetTourBySearch(OBFilter objFilter);

        IEnumerable GetTourByDanhMuc(string ma_danhmuc);

        IEnumerable GetTourFeatured();

        IEnumerable GetTourByPage(int at, int total);

        IEnumerable GetTourLaster();

        IEnumerable GetTourSale();

        int CountTourByDanhMuc(int maDanhMuc);
    }
}
