using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using DoAnAspNet.core.Object;

namespace DoAnAspNet.core.Interface
{
    public interface IHotel<Hotel>
    {
        IEnumerable GetHotelBySearch(OBFilter objFilter);
        int CountHotelBySearch(OBFilter objFilter);
        IEnumerable GetHotelByDanhMuc(string ma_tour);

        IEnumerable GetHotelFeatured();

        IEnumerable GetHotelByPage(int at, int total);

        IEnumerable GetHotelLaster();

        IEnumerable GetHotelSale();

        int CountHotelByDanhMuc(int maDanhMuc);
    }
}
