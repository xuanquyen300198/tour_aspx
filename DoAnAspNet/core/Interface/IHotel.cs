using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
namespace DoAnAspNet.core.Interface
{
    public interface IHotel<Hotel>
    {
        IEnumerable GetHotelBySearch(string keySearch);

        IEnumerable GetHotelByDanhMuc(int id);

        IEnumerable GetHotelFeatured();

        IEnumerable GetHotelByPage(int at, int total);

        IEnumerable GetHotelLaster();

        IEnumerable GetHotelSale();

        int CountHotelByDanhMuc(int maDanhMuc);
    }
}
