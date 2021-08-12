using Dapper;
using DoAnAspNet.core.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnAspNet.core.handling
{
    public class Account_AdminsController : BaseController<Account_Admin>, IAccount_Admin
    {
        public Account_Admin GetAdminByNameAndPass(string userName, string userPass)
        {
            return _dbConnection.Query<Account_Admin>($"Select * from account_admin Where username='{userName}' AND password='{userPass}'").FirstOrDefault();
        }
        public Account_Admin GetAdminByID(int id)
        {
            return _dbConnection.Query<Account_Admin>($"Select * from account_admin Where id={id}").FirstOrDefault();
        }
        public List<Account_Admin> GetAccount_AdminBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";

            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
            }
            
            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(username) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            List<Account_Admin> lst = (List<Account_Admin>)_dbConnection.Query<Account_Admin>($"SELECT * FROM Account_Admin" + queryWhere + " LIMIT " + objFilter.limit + " OFFSET " + objFilter.offset + "", commandType: System.Data.CommandType.Text);
            return lst;
        }

        public int CountAccount_AdminBySearch(OBFilter objFilter)
        {
            string queryWhere = " Where 1 = 1";


            if (!string.IsNullOrEmpty(objFilter.ma))
            {
                queryWhere = queryWhere + " And ma = '" + objFilter.ma + "'";
            }

            if (!string.IsNullOrEmpty(objFilter.ten))
            {
                queryWhere = queryWhere + " And LOWER(username) LIKE LOWER('%" + objFilter.ten + "%') ";
            }
            return _dbConnection.ExecuteScalar<int>($"SELECT count(1) FROM Account_Admin" + queryWhere + "", commandType: System.Data.CommandType.Text);

        }
    }
}