using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SmartSoft.Database
{
    public class ConnectionString
    {
        public static string con = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
        
    }
}