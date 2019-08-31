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
    public partial class StudentFirstLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("LogIn_Page.aspx");
            }
            upload_btn.ServerClick += Upload_btn_ServerClick; ;
            CopyRights.Text = "Copyrights@Smartsoft-" + DateTime.Now.Year.ToString();
        }

        private void Upload_btn_ServerClick(object sender, EventArgs e)
        {
            
            string Studentname = _dittnamn.Value;
            string Gatunamn = _Gatunamn.Value;
            string Postnummer = _Postnummer.Value;
            string Stad = _Stad.Value;
            string Mobilnr = Phonenr.Value;

            if (Studentname == "" || Gatunamn == "" || Postnummer == "" || Stad == "" || Mobilnr == "")
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
                                string query = "insert into StudentInfo values (@Elevnamn,@Gatunamn, @Postnr,@Ort,@Phonenr,@Profilepic)";
                                using (SqlCommand cmd1 = new SqlCommand(query))
                                {
                                    cmd1.Connection = con;
                                    cmd1.Parameters.AddWithValue("@Elevnamn", Studentname);
                                    cmd1.Parameters.AddWithValue("@Gatunamn", Gatunamn);
                                    cmd1.Parameters.AddWithValue("@Postnr", Postnummer);
                                    cmd1.Parameters.AddWithValue("@Ort", Stad);
                                    cmd1.Parameters.AddWithValue("@Phonenr", Mobilnr);
                                    cmd1.Parameters.AddWithValue("@Profilepic", bytes);
                                    con.Open();
                                    cmd1.ExecuteNonQuery();
                                    con.Close();
                                    Changestatus();
                                    Clear();

                                }
                            }

                        }
                    }
                }
                Clear();
            }
        }

        void Clear()
        {
           
            _dittnamn.Value
            = _Gatunamn.Value
           = _Stad.Value
           = Phonenr.Value = null;

            _Postnummer.Value = null;
            FileUpload1.Dispose();
        }

        protected void Changestatus()
        {

            using (SqlConnection sqlcon = new SqlConnection(ConnectionString.con))
            {
                string Updatestat = "Update Accounts set IsLogged='True' where Username='" + Session["Username"] + "'";
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = Updatestat;
                cmd.Connection = sqlcon;
                cmd.ExecuteNonQuery();
            }
        }
    }
}