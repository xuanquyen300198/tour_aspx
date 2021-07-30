using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
namespace DoAnAspNet.core.Interface
{
    public interface IDanhMuc<DanhMuc>
    {
        IEnumerable GetDanhMucBySearch(string keySearch);
    }
}
