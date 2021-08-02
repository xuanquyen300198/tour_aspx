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

        public int limit { get; set; }
        public int offset { get; set; }
        public OBFilter() { }
        public OBFilter( int id, string ma, string ten, int limit, int offset) 
        {
            this.id = id;
            this.ma = ma;
            this.ten = ten;
            this.limit = limit;
            this.offset = offset;
        }
    }
}