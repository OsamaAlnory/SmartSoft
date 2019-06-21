using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartSoft.Database
{
    public class Fields
    {

        public static readonly Fields ACCOUNT = new Fields("ID","Username","Password","UType","School","IsLogged","Epost");

        private string[] fields;
        private Fields(params string[] str)
        {
            fields = str;
        }

        public string[] getFields()
        {
            return fields;
        }

    }
}