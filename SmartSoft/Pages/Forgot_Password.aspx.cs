using SmartSoft.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Pages
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        public string password;
        public string pass;

        Owner sg = new Owner();
        protected void Page_Load(object sender, EventArgs e)
        {
            sendbtn.ServerClick += Sendbtn_ServerClick;
            CopyRight.Text = "Copyrights@Smartsoft-" + DateTime.Now.Year.ToString();
        }

        private void Sendbtn_ServerClick(object sender, EventArgs e)
        {
            string myQuery = "select * from Accounts where Username='" + Username.Value.Trim() + "' and Epost='" + mail.Value.Trim() + "'";
            using (SqlConnection sql = new SqlConnection(ConnectionString.con))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myQuery;
                cmd.Connection = sql;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    password = ds.Tables[0].Rows[0]["Password"].ToString();
                    pass = sg.dekryptPassword(password);
                    Sendcode(pass, Username.Value);
                    clear();
                    Label2.ForeColor = System.Drawing.Color.Green;
                    Label2.Text = "Ditt lösenord har skickat till ditt konto, var vänlig och kolla din mailbox!";
                }
                else
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Ditt användarnamn eller Email är ogiltiga. (Finns inte i sytemet!)";
                }
                sql.Close();
            }
        }


        //Skicka Lösenordet
        private void Sendcode(string password, string Email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "MohanadRambo2000");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Glömt Lösenord (Smartsoft)";
            msg.Body = " Hej " + Username.Value + ", Lösenordet för det har kontot: " + mail.Value + " är : " + pass + " \n\n\nMed Vänliga Hälsningar\nSmartsoft";
            string toaddress = mail.Value;
            msg.To.Add(toaddress);
            string fromaddress = "SmartSoft <Admin@Admin>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
        }

        void clear()
        {
            Username.Value = mail.Value = "";
        }
    }
}