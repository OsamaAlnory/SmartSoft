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
    public partial class Owner : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.GetPostBackEventReference(this, string.Empty);
            var _x = Request.QueryString["old"];
            if (_x != null)
            {
                Main.Send(Page, _x.ToString());
            }
            if (Session["Username"] != null)
            {
                Loggedlbl.Text = Session["Username"].ToString();
                //return;
            }
            else
            {
                //Response.Redirect("LogIn_Page.aspx");
            }

            object[] objs = Main.GetDBValue("Accounts", "Username", new string[] { "UType" }, new string[] { "1" });
            object[] ids = Main.GetDBValue("Accounts", "ID", new string[] { "UType" }, new string[] { "1" });
            string A = "";
            for (int x = 0; x < objs.Length; x++)
            {
                if (x == 0)
                {
                    A += objs[x].ToString() + ":" + ids[x];
                }
                else
                {
                    A += "," + objs[x].ToString() + ":" + ids[x];
                }
            }
            some_cr.Value = A;
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            
            password.Text = EncryptPassword(password.Text);
            //ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "get();", true);
            if (username.Text == "" && password.Text == "" && school.Text == "")
            {
                //
                Main.Reg(this, "ref()");
                //Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {
                 
                Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, 0,
                username.Text, password.Text, 1, school.Text, "false", epost.Text);
                Clear();
            }
            Main.Reg(Page, "ref()");
        }

        void Clear()
        {
            username.Text = password.Text = school.Text = epost.Text = "";
        }

        //Encrypt Password
        public string EncryptPassword(string pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string enkryptedpassword = Convert.ToBase64String(bytes);
            return enkryptedpassword;
        }

        //Decrypt Password
        public string dekryptPassword(string pass)
        {
            byte[] bytes = Convert.FromBase64String(pass);
            string dekryptpassword = System.Text.Encoding.Unicode.GetString(bytes);
            return dekryptpassword;
        }

        protected void btn_logut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn_Page.aspx");
        }

        public void RaisePostBackEvent(string eventArgument)
        {
            if (eventArgument.StartsWith("delete"))
            {
                string id = eventArgument.Split(':')[1].Split('_')[1];
                using (SqlConnection con = new SqlConnection(ConnectionString.con))
                {
                    con.Open();
                    using (SqlCommand command = new SqlCommand("DELETE FROM Accounts WHERE ID = '" + id + "'", con))
                    {
                        command.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
        }

    }
}