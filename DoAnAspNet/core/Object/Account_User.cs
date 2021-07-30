using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.Object
{
    public class Account_User
    {
        #region Declare
        public int id { get; set; }
        public string ma { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string ten_nguoi_dung { get; set; }
        public string ngay_sinh { get; set; }
        public string dia_chi { get; set; }
        public string ngay_tao { get; set; }
        public string last_login { get; set; }
        public string sdt { get; set; }
        public string email { get; set; }
        public string image { get; set; }

        #endregion

        #region Contructor
        public Account_User() { }
        public Account_User(string username, string password, string email, string ngay_tao, string last_login) 
        {
            this.username = username;
            this.password = password;
            this.email = email;
            this.ngay_tao = ngay_tao;
            this.last_login = last_login;
        }
        public Account_User(int id, string ma, string username, string password, string ten_nguoi_dung,string ngay_sinh, string dia_chi, string ngay_tao, string last_login, string sdt, string email, string image) 
        {
            this.id = id;
            this.ma = ma;
            this.username = username;
            this.password = password;
            this.ngay_sinh = ngay_sinh;
            this.ten_nguoi_dung = ten_nguoi_dung;
            this.dia_chi = dia_chi;
            this.ngay_tao = ngay_tao;
            this.last_login = last_login;
            this.sdt = sdt;
            this.email = email;
            this.image = image;
        }

        #endregion
    }
}