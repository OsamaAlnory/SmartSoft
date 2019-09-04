using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace SmartSoft.Database
{
    public class Main
    {
        public static SqlConnection con = new SqlConnection(ConnectionString.con);
        private static char[] chars = {
        '0','1','2','3','4','5','6','7','8','9','-','_','.','@',
        'a','b','c','d','e','f','g','h','i','j','k',
        'l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E',
        'F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X',
        'Y','Z'};
        private static Random random = new Random();

        public static string convert(string code)
        {
            if (code.Length % 2 != 0)
            {
                //ERR
                return code;
            }
            //charStart = 14;
            string newCode = "";
            for(int x = 0; x < code.Length/2; x++)
            {
                int num = int.Parse(code.Substring(x*2, 2));
                newCode += chars[num];
            }
            return newCode;
        }

        public static void Send(Page page, string text)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), 
                "text"+random.Next(100000), "alert('"+text+ "');", true);
        }

        public static void SendError(Page page, string msg)
        {
            Reg(page, "showError('"+msg+"')");
        }

        public static void SendSuccess(Page page, string msg)
        {
            Reg(page, "showSuccess('"+msg+"')");
        }

        public static void Reg(Page page, string func)
        {
            Reg(page, "text"+random.Next(10000), func);
        }

        //public static FileType GetFileType(string contentType)
        //{
        //    FileType f = FileType.OTHER;
        //    string[] d = contentType.Split('/');
        //    if (d.Length > 0)
        //    {
        //        string a = d[0].ToLower();
        //        if (a == "video")
        //        {
        //            f = FileType.VIDEO;
        //        } else if(a == "image")
        //        {
        //            f = FileType.IMAGE;
        //        }
        //        //if (a == "jpeg" || a == "jpg" || a == "png" || a == "gif" || a == "tiff")
        //        //{
        //        //    f = FileType.IMAGE;
        //        //}
        //        //else if (a == "mp4" || a == "3gp" || a == )
        //        //{

        //        //}
        //    }
        //    return f;
        //}

        public static void Reg(Page page, string key, string func)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), key, func+";", true);
        }


        public static object[] GetDBValue(string tableName, string search, string[] conditions, string[] values)
        {
            object[] val = new object[64];
            object[] _val;
            using (SqlConnection connection = new SqlConnection(ConnectionString.con))
            {
                connection.Open();
                string query = "SELECT "+search+" FROM "+tableName;
                if(conditions != null)
                {
                    query += " WHERE ";
                    for (int x = 0; x < conditions.Length; x++)
                    {
                        query += "(";
                        if (x > 0)
                        {
                            query += " AND ";
                        }
                        query += conditions[x] + "='" + values[x] + "'";
                        query += ")";
                    }
                }
                SqlDataAdapter da = new SqlDataAdapter(query, connection);
                DataSet ds = new DataSet();
                da.Fill(ds);
                int A = 0;
                for(int x = 0; x < ds.Tables[0].Rows.Count; x++)
                {
                    A++;
                    val[x] = ds.Tables[0].Rows[x][search];
                }
                _val = new object[A];
                for(int x = 0; x < val.Length; x++)
                {
                    if(val[x] != null)
                    {
                        _val[x] = val[x];
                    }
                }
                connection.Close();
                //val = ds.Tables.Count+"";
            }
            //int valid = 0;
            //for(int x = 0; x < val.Length; x++)
            //{
            //    if(val[x] != null)
            //    {
            //        valid++;
            //    }
            //}
            //string[] NEW = new string[valid];

            return _val;
        }

        public static async void AddTo(Producer prod, Fields fields, Loadable l, 
            params object[] obj)
        {
            AddTo(prod, fields.getFields(), l, obj);
        }

        public static async void AddTo(Producer prod, string[] fields, Loadable l, 
            params object[] obj)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand sql = new SqlCommand(prod.ToString(), con);
            sql.CommandType = CommandType.StoredProcedure;
            for (int x = 0; x < fields.Length; x++) {
                sql.Parameters.AddWithValue("@"+fields[x], obj[x]);
            }
            await sql.ExecuteNonQueryAsync();
            con.Close();
            if(l != null)
            {
                l.OnFinish("DB");
            }
        }

    }
}