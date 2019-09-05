using SmartSoft.Database;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Pages
{
    public partial class School_Classes : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

             
        }

        protected void addklass_Click(object sender, EventArgs e)
        {
            if (klassnamn.Text == "" || teachernamn.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
                // Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {

               Main.AddTo(Producer.AddClass, Fields.CLASSES, null, 0,
               klassnamn.Text, teachernamn.Text, Session["Username"]);
               Clear_AddClasses();

            }
            Clear_AddClasses();


        }

        public void Clear_AddClasses()
        {
            klassnamn.Text = teachernamn.Text = "";


        }
    }
}