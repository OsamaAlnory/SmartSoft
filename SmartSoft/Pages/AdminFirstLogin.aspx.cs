using SmartSoft.Database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Pages
{
    public partial class AdminFirstLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            upload_btn.ServerClick += Upload_btn_ServerClick;
              
        }

        private void Upload_btn_ServerClick(object sender, EventArgs e)
        {
            string skolnamn = _skolnamn.Value;
            string  Adminname= _dittnamn.Value;
            string Gatunamn = _Gatunamn.Value;
            string Postnummer = _Postnummer.Value;
            string Stad = _Stad.Value;
            string Email = _Email.Value;

            if (skolnamn == "" && Adminname == "" && Gatunamn == "" && Postnummer == "" && Stad == "" && Email == "")
            {
                //Var vänlig och fyll i alla fälten.
                return;
            }
            else
            {
                foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
                {
                    string filename = Path.GetFileName(postedFile.FileName);
                    string contentType = postedFile.ContentType;
                    using (Stream fs = postedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);

                            using (SqlConnection con = new SqlConnection(ConnectionString.con))
                            {
                                string query = "insert into AdminInfo values (@Schoolname,@Adminname, @Streetname,@Postnumber,@City, @Epost,@Logo)";
                                using (SqlCommand cmd1 = new SqlCommand(query))
                                {
                                    cmd1.Connection = con;
                                    cmd1.Parameters.AddWithValue("@Schoolname", skolnamn);
                                    cmd1.Parameters.AddWithValue("@Adminname", Adminname);
                                    cmd1.Parameters.AddWithValue("@Streetname", Gatunamn);
                                    cmd1.Parameters.AddWithValue("@Postnumber", Postnummer);
                                    cmd1.Parameters.AddWithValue("@City", Stad);
                                    cmd1.Parameters.AddWithValue("@Epost", Email);
                                    cmd1.Parameters.AddWithValue("@Logo", bytes);
                                    con.Open();
                                    cmd1.ExecuteNonQuery();
                                    con.Close();
                                    Clear();
                                    
                                }
                            }
                        }
                    }
                }
                Clear();
               // Response.Redirect("RektorPage");
            }
                         
            
           
        }

        void Clear()
        {
             _skolnamn.Value
            = _dittnamn.Value
             = _Gatunamn.Value
            = _Stad.Value
            = _Email.Value = "";

            _Postnummer.Value = null;
            FileUpload1.Dispose();
        }
    }
     
}