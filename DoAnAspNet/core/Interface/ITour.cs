﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
namespace DoAnAspNet.core.Interface
{
    public interface ITour<Tour>
    {
        IEnumerable GetTourBySearch(string keySearch);

        IEnumerable GetTourByDanhMuc(int id);

        IEnumerable GetTourFeatured();

        IEnumerable GetTourByPage(int at, int total);

        IEnumerable GetTourLaster();

        IEnumerable GetTourSale();

        int CountTourByDanhMuc(int maDanhMuc);
    }
}