using SmartSoft.Database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Pages
{
    public partial class School_Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
                //Get Teacher
                using (SqlConnection con = new SqlConnection(Database.ConnectionString.con))
                {
                    SqlCommand cmd = new SqlCommand("Select ID,Teacher from Classes", con);
                    con.Open();
                    Teacher_dropdown.DataSource = cmd.ExecuteReader();
                    Teacher_dropdown.DataBind();
                    con.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);

                }
                //Get Class
                using (SqlConnection con2 = new SqlConnection(Database.ConnectionString.con))
                {
                    SqlCommand cmd1 = new SqlCommand("Select ID,Class from Classes", con2);
                    con2.Open();
                    Class_dropdown.DataSource = cmd1.ExecuteReader();
                    Class_dropdown.DataBind();
                    con2.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);

                }
            
                //ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
            
            //object[] getteacher = Main.GetDBValue("Classes","Teacher", new string[] { "Creator" },  new string[] { Session["Username"].ToString() });
            //object[] getclass = Main.GetDBValue("Classes", "Class", new string[] { "Creator" }, new string[] { Session["Username"].ToString() });

          
        }

        //Problem här (Den addar inte till Databass Async Problem)***
        protected void addkurs_Click(object sender, EventArgs e)
        {
            if (Kursnamn.Text == "" || Teacher_dropdown.SelectedItem == null || Class_dropdown.SelectedItem == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
                // Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {

               Main.AddTo(Producer.AddCourse, Fields.COURSES, null, 0,
               Kursnamn.Text, Teacher_dropdown.SelectedItem,Class_dropdown.SelectedItem);
               Clear_AddCourses();
            }
            Clear_AddCourses();
        }

        void Clear_AddCourses()
        {
            Kursnamn.Text = Teacher_dropdown.SelectedValue = Class_dropdown.SelectedValue = "";
        }
    }
}