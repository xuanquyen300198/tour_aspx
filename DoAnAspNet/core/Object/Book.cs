using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class Book
    {
        public int id { get; set; }
        public string ma { get; set; }
        public int user_id { get; set; }
        public string ma_tour { get; set; }
        public string ma_room { get; set; }
        public string ngay_tao { get; set; }
        public string ngay_dat_tu { get; set; }
        public string ngay_dat_den { get; set; }
        public int trang_thai { get; set; }

        public Book() { }
        public Book(int user_id, string ma_tour, string ma_room, string ngay_tao, string ngay_dat_tu, string ngay_dat_den)
        {
            this.user_id = user_id;
            this.ma_tour = ma_tour;
            this.ma_room = ma_room;
            this.ngay_tao = ngay_tao;
            this.ngay_dat_tu = ngay_dat_tu;
            this.ngay_dat_den = ngay_dat_den;
        }
        public Book(int id, string ma, int user_id, string ma_tour, string ma_room, string ngay_tao, string ngay_dat_tu, string ngay_dat_den, int trang_thai) 
        {
            this.id = id;
            this.ma = ma;
            this.user_id = user_id;
            this.ma_tour = ma_tour;
            this.ma_room = ma_room;
            this.ngay_tao = ngay_tao;
            this.ngay_dat_tu = ngay_dat_tu;
            this.ngay_dat_den = ngay_dat_den;
            this.trang_thai = trang_thai;
        }
    }
}