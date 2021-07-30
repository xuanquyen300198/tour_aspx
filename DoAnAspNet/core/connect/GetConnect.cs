using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace DoAnAspNet.core.connect
{
    public class GetConnect
    {
        public static IDbConnection GetDBConnection()
        {
            string host = "127.0.0.1";
            int port = 3309;
            string database = "tour";
            string username = "root";
            string password = "12341234";

            return establishConnect.GetDBConnection(host, port, database, username, password);
        }
    }
}