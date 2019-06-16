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
            
            if (Session["Username"] != null)
            {
                Loggedlbl.Text = Session["Username"].ToString();
                return;
               
            }
            else
            {
                Response.Redirect("LogIn_Page.aspx");
                 
            }

            object[] objs = Main.GetDBValue("Accounts", "Username", new string[] { "UType" }, new string[] { "1" });
            string A = "";
            for (int x = 0; x < objs.Length; x++)
            {
                if(x == 0)
                {
                    A += objs[x].ToString();
                } else
                {
                    A += ","+objs[x].ToString();
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
                Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {
                 
                    Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, 0,
                username.Text, password.Text, 1, school.Text);
                    Clear();
        
            }
            
        }

        void Clear()
        {
            username.Text = password.Text = school.Text="";
        }

         
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

        protected void btn_logut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn_Page.aspx");
        }
    }
}