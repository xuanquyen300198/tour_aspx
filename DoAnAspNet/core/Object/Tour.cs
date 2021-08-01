using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class Tour
    {
        #region Declare
        public int id { get; set; }
        public string ma { get; set; }
        public string ten { get; set; }
        public string anh { get; set; }
        public string ma_danhmuc { get; set; }
        public string gia { get; set; }
        public string giam_gia { get; set; }
        public string yeu_thich { get; set; }
        public string mo_ta { get; set; }
        public string danh_gia { get; set; }
        public string ngay_tao { get; set; }

        public string ngay_capnhat { get; set; }

        public string ma_nguoi_tao { get; set; }

        public string ma_nguoi_capnhat { get; set; }
        public int trang_thai { get; set; }
        public string thoi_gian { get; set; }
        public string van_tat { get; set; }
        public string gia_sau_giam { get; set; }
        public string anh_ct1 { get; set; }
        public string anh_ct2 { get; set; }
        public string anh_ct3 { get; set; }
        public string dia_diem { get; set; }
        #endregion
        #region Contructor
        public Tour() { }

        public Tour(int id, string ma, string ten, string anh, string ma_danhmuc, string gia, string giam_gia, string yeu_thich, string mo_ta, string danh_gia, string ngay_tao, string ngay_capnhat, string ma_nguoi_tao, string ma_nguoi_capnhat, int trang_thai, string thoi_gian, string van_tat, string gia_sau_giam, string anh_ct1, string anh_ct2, string anh_ct3, string dia_diem)
        {
            this.id = id;
            this.ma = ma;
            this.ten = ten;
            this.anh = anh;
            this.ma_danhmuc = ma_danhmuc;
            this.gia = gia;
            this.danh_gia = giam_gia;
            this.yeu_thich = yeu_thich;
            this.mo_ta = mo_ta;
            this.danh_gia = danh_gia;
            this.ngay_tao = ngay_tao;
            this.ngay_capnhat = ngay_capnhat;
            this.ma_nguoi_tao = ma_nguoi_tao;
            this.ma_nguoi_capnhat = ma_nguoi_capnhat;
            this.trang_thai = trang_thai;
            this.thoi_gian = thoi_gian;
            this.van_tat = van_tat;
            this.gia_sau_giam = gia_sau_giam;
            this.anh_ct1 = anh_ct1;
            this.anh_ct2 = anh_ct2;
            this.anh_ct3 = anh_ct3;
            this.dia_diem = dia_diem;
        }
        #endregion
    }
}