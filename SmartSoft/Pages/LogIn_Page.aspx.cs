using SmartSoft.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Pages
{
    public partial class LogIn_Page : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            login_btn.ServerClick += Login_btn_ServerClick;
            copyrights.Text= "Copyrights@Smartsoft-" + DateTime.Now.Year.ToString();

        }

        private void Login_btn_ServerClick(object sender, EventArgs e)
        {
            string Username = _User.Value;
            string dekPassword = _Pass.Value;

            if (_User.Value == "" || _Pass.Value == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Empty();", true);
                return;
            }
            else
            {
                SqlConnection connection = new SqlConnection(ConnectionString.con);
                connection.Open();
                string enkPassword = EncryptPassword(dekPassword);
                String query = "SELECT Username,Password,UType FROM Accounts WHERE (Username = '" + Username + "') AND (Password = '" + enkPassword + "');";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter sds = new SqlDataAdapter();
                DataSet ds = new DataSet();
                sds.SelectCommand = cmd;
                int i = 0;
                sds.Fill(ds, "enkPassword");
                if (ds.Tables[i].Rows.Count > 0)
                {
                    //Owner
                    if (ds.Tables[i].Rows[i]["UType"].ToString() == "0")
                    {
                        // If you login and you are admin
                        Session["Username"] = _User.Value.Trim();
                        Response.Redirect("Owner.aspx");
                        return;
                    }
                    //Admin(Rektor)
                    if (ds.Tables[i].Rows[i]["UType"].ToString() == "1")
                    {
                        Session["Username"] = _User.Value.Trim();
                        using (SqlConnection sqlcon = new SqlConnection(ConnectionString.con))
                        {
                            string query2 = "Select IsLogged From Accounts Where Username='" + Session["Username"] + "'";
                            SqlCommand cm = new SqlCommand();
                            cm.CommandText = query2;
                            cm.Connection = sqlcon;
                            SqlDataAdapter df = new SqlDataAdapter();
                            df.SelectCommand = cm;
                            DataSet dg = new DataSet();
                            df.Fill(dg);
                            if (dg.Tables[0].Rows.Count > 0)
                            {
                                var v = dg.Tables[0].Rows[0]["IsLogged"].ToString();
                                if (v == "false")
                                {
                                    Response.Redirect("AdminFirstLogin.aspx");
                                    return;
                                }
                                else
                                {
                                  //  Response.Redirect("RektoriPage.aspx");
                                    return;
                                }

                            }
                        }

                    }
                    //Lärare
                    if (ds.Tables[i].Rows[i]["UType"].ToString() == "2")
                    {

                        Session["Username"] = _User.Value.Trim();
                        ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Lärare();", true);
                        // Response.Redirect("LärarePage");
                        return;
                    }
                    //Elev
                    if (ds.Tables[i].Rows[i]["UType"].ToString() == "3")
                    {

                        Session["Username"] = _User.Value.Trim();
                        ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Elev();", true);
                        //Response.Redirect("ElevPage");
                        return;
                    }
                }
                else
                {
                    // Kontotypen Hittades Inte
                    //ALert Kolla info
                    Session.Abandon();
                    ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "NoType();", true);
                    return;
                }
            }
        }

 
        //Enkrypt Password
        public string EncryptPassword(string pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string enkryptedpassword = Convert.ToBase64String(bytes);
            return enkryptedpassword;
        }

        //Dekrypt Password
        public string dekryptPassword(string pass)
        {
            byte[] bytes = Convert.FromBase64String(pass);
            string dekryptpassword = System.Text.Encoding.Unicode.GetString(bytes);
            return dekryptpassword;
        }


    }
}