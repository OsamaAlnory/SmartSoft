using SmartSoft.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Pages
{
    public partial class Admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
            

        }

        protected void logutbtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn_Page.aspx");
        }
    }
}