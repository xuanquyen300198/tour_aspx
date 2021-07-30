using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class DanhMuc
    {
        #region Declare
        public int id { get; set; }
        public string ma { get; set; }
        public string ten { get; set; }
        public string anh { get; set; }
        public string mo_ta { get; set; }

        public int so_luong_tour { get; set; }
        #endregion
        #region Contructor
        public DanhMuc() { }

        public DanhMuc(string ma,string ten, string anh, string mo_ta, int so_luong_tour)
        {
            this.ma = ma;
            this.ten = ten;
            this.anh = anh;
            this.mo_ta = mo_ta;
            this.so_luong_tour = so_luong_tour;
        }

        public DanhMuc(int id, string ma, string ten, string anh, string mo_ta, int so_luong_tour)
        {
            this.id = id;
            this.ma = ma;
            this.ten = ten;
            this.anh = anh;
            this.mo_ta = mo_ta;
            this.so_luong_tour = so_luong_tour;
        }

        #endregion
    }
}