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

        public static void Send(Page page, string text)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), 
                "text", "alert('"+text+ "')", true);
        }

        public static void Reg(Page page, string func)
        {
            Reg(page, "text", func);
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
            ScriptManager.RegisterStartupScript(page, page.GetType(), key, func, true);
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

        public static void AddTo(Producer prod, Fields fields, params object[] obj)
        {
            AddTo(prod, fields.getFields(), obj);
        }

        public static void AddTo(Producer prod, string[] fields, params object[] obj)
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
            sql.ExecuteNonQuery();
            con.Close();
        }

    }
}