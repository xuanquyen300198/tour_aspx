using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class Bill
    {
        public int id { get; set; }
        public string ma { get; set; }
        public int user_id { get; set; }
        public string ma_tour { get; set; }
        public string ma_room { get; set; }
        public int trang_thai { get; set; }
        public string ho_ten { get; set; }
        public string dia_chi { get; set; }
        public string so_dien_thoai { get; set; }
        public string email { get; set; }
        public int loai_thanhtoan { get; set; }
        public string so_tai_khoan { get; set; }
        public string thanh_tien { get; set; }
        public string ngay_tao { get; set; }
        public string ten1 { get; set; }
        public string ten2 { get; set; }
        public string anh1 { get; set; }
        public string anh2 { get; set; }
        public string vantat1 { get; set; }
        public string vantat2 { get; set; }
        public string ngay_dat_tu { get; set; }
        public string ngay_dat_den { get; set; }
        public int book_id { get; set; }
        public Bill() { }
        public Bill(int user_id, string ma_tour, string ma_room, string ho_ten, string dia_chi, string so_dien_thoai, string email, int loai_thanhtoan, string so_tai_khoan, string thanh_tien, string ngay_tao,string ngay_dat_tu, string ngay_dat_den)
        {
            this.user_id = user_id;
            this.ma_tour = ma_tour;
            this.ma_room = ma_room;
            this.ho_ten = ho_ten;
            this.dia_chi = dia_chi;
            this.so_dien_thoai = so_dien_thoai;
            this.email = email;
            this.loai_thanhtoan = loai_thanhtoan;
            this.so_tai_khoan = so_tai_khoan;
            this.thanh_tien = thanh_tien;
            this.ngay_tao = ngay_tao;
            this.ngay_dat_tu = ngay_dat_tu;
            this.ngay_dat_den = ngay_dat_den;
        }
        public Bill(int user_id, string ma_tour, string ma_room, string ho_ten, string dia_chi, string so_dien_thoai, string email, int loai_thanhtoan, string so_tai_khoan, string thanh_tien, string ngay_tao, int book_id)
        {
            this.user_id = user_id;
            this.ma_tour = ma_tour;
            this.ma_room = ma_room;
            this.ho_ten = ho_ten;
            this.dia_chi = dia_chi;
            this.so_dien_thoai = so_dien_thoai;
            this.email = email;
            this.loai_thanhtoan = loai_thanhtoan;
            this.so_tai_khoan = so_tai_khoan;
            this.thanh_tien = thanh_tien;
            this.ngay_tao = ngay_tao;
            this.book_id = book_id;
        }
        public Bill(int id, string ma, int user_id, string ma_tour, string ma_room, int trang_thai,string ho_ten, string dia_chi, string so_dien_thoai, string email, int loai_thanhtoan, string so_tai_khoan, string thanh_tien, string ngay_tao, string ten1 ,string ten2, string anh1, string anh2, string vantat1, string vantat2, string ngay_dat_tu, string ngay_dat_den, int book_id) 
        {
            this.id = id;
            this.ma = ma;
            this.user_id = user_id;
            this.ma_tour = ma_tour;
            this.ma_room = ma_room;
            this.trang_thai = trang_thai;
            this.ho_ten = ho_ten;
            this.dia_chi = dia_chi;
            this.so_dien_thoai = so_dien_thoai;
            this.email = email;
            this.loai_thanhtoan = loai_thanhtoan;
            this.so_tai_khoan = so_tai_khoan;
            this.thanh_tien = thanh_tien;
            this.ngay_tao = ngay_tao;
            this.ten1 = ten1;
            this.ten2 = ten2;
            this.anh1 = anh1;
            this.anh2 = anh2;
            this.vantat1 = vantat1;
            this.vantat2 = vantat2;
            this.ngay_dat_tu = ngay_dat_tu;
            this.ngay_dat_den = ngay_dat_den;
            this.book_id = book_id;
        }

    }
}