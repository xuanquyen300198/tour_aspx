using DoAnAspNet.core.Object;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAnAspNet.core.Interface
{
    public interface IRoom<Room>
    {
        IEnumerable GetRoomBySearch(OBFilter objFilter);

        int CountRoomBySearch(OBFilter objFilter);
        IEnumerable GetRoomByDanhMuc(string ma_tour);

        IEnumerable GetRoomFeatured();

        IEnumerable GetRoomByPage(int at, int total);

        IEnumerable GetRoomLaster();

        IEnumerable GetRoomSale();

        int CountRoomByDanhMuc(int maDanhMuc);
    }
}
