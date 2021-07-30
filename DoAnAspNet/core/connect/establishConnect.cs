using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
namespace DoAnAspNet.core.connect
{
    public class establishConnect
    {
        public static IDbConnection GetDBConnection(string host, int port, string database, string username, string password)
        {
            // Connection String.
            String connString = "Server=" + host + ";Database=" + database
                + ";port=" + port + ";User Id=" + username + ";password=" + password + ";Character Set=utf8";

            IDbConnection conn = new MySqlConnection(connString);

            return conn;

        }
    }
}