using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class Account_Admin
    {
        #region Declare
        public int id { get; set; }
        public string ma { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string ten { get; set; }
        public DateTime ngay_sinh { get; set; }
        public int quyen { get; set; }
        #endregion
        public Account_Admin() { }
        #region Cotructor
        public Account_Admin(int id, string ma, string username, string password, string ten, int quyen)
        {
            this.id = id;
            this.ma = ma;
            this.username = username;
            this.password = password;
            this.ten = ten;
            this.quyen = quyen;
        }
        public Account_Admin(string ma,string username, string password, string ten, int quyen)
        {
            this.ma = ma;
            this.username = username;
            this.password = password;
            this.ten = ten;
            this.quyen = quyen;
        }
        public Account_Admin(int id,string ma, string username, string password, string ten, DateTime ngay_sinh , int quyen)
        {
            this.id = id;
            this.ma = ma;
            this.username = username;
            this.password = password;
            this.ten = ten;
            this.ngay_sinh = ngay_sinh;
            this.quyen = quyen;
        }

        #endregion
    }
}