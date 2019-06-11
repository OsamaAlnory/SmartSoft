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

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Main.AddTo(Producer.AddAccount, new string[] { "ID","Username","Password",
            "UType","School"}, 0, username.Text, password.Text, 1, school.Text);
            Clear();
        }

        void Clear()
        {
            username.Text = password.Text = school.Text="";
        }
    }
}