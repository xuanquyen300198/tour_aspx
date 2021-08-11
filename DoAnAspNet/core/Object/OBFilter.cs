using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class OBFilter
    {
        public int id { get; set; }
        public string ma { get; set; }
        public string ten { get; set; }
        public string ma_danhmuc { get; set; }

        public string gia_tu { get; set; }
        public string ma_tour { get; set; }
        public string ma_room { get; set; }
        public string gia_den { get; set; }
        public int user_id { get; set; }
        public int limit { get; set; }
        public int offset { get; set; }
        public OBFilter() { }
        public OBFilter( int id, string ma, string ten,string ma_danhmuc,string gia_tu, string gia_den, string ma_tour, string ma_room,int user_id, int limit, int offset) 
        {
            this.id = id;
            this.ma = ma;
            this.ten = ten;
            this.ma_danhmuc = ma_danhmuc;
            this.gia_tu = gia_tu;
            this.gia_den = gia_den;
            this.ma_tour = ma_tour;
            this.ma_room = ma_room;
            this.user_id = user_id;
            this.limit = limit;
            this.offset = offset;
        }
    }
}