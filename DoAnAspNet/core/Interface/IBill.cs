using DoAnAspNet.core.Object;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAnAspNet.core.Interface
{

    public interface IBill<Bill>
    {
        IEnumerable GetBillBySearch(Bill bill);

        IEnumerable GetBillByDanhMuc(string ma_tour);

        IEnumerable GetBillFeatured();

        IEnumerable GetBillByPage(OBFilter obFilter);
        int CountBillByPage(OBFilter obFilter);

        IEnumerable GetBillLaster();

        IEnumerable GetBillSale();

        int CountBillByDanhMuc(int maDanhMuc);
    }
}
