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
    public partial class AccountsBy_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get School (Dropdown Auto fill)
            using (SqlConnection con = new SqlConnection(Database.ConnectionString.con))
            {
                SqlCommand cmd = new SqlCommand("Select ID,School from Accounts Where Username='" + Session["Username"] + "'", con);
                con.Open();
                school_dropdown.DataSource = cmd.ExecuteReader();
                school_dropdown.DataBind();
                SqlCommand cmd2 = new SqlCommand("Select ID,School from Accounts Where Username='" + Session["Username"] + "'", con);
                t_drop.DataSource = cmd2.ExecuteReader();
                t_drop.DataBind();
                con.Close();
            }
            school_dropdown.Items.Add("Hello");
            t_drop.Items.Add("Hello");
            add_students.ServerClick += Add_student_ServerClick;
            add_teachers.ServerClick += Add_teachers_ServerClick;
            add_parents.ServerClick += Add_parents_ServerClick;
            object[] ids = Main.GetDBValue("Accounts", "Username", null, null);
            string A = "";
            for (int x = 0; x < ids.Length; x++)
            {
                if (x == 0)
                {
                    A += ids[x].ToString();
                }
                else
                {
                    A += "," + ids[x].ToString();
                }
            }
            Main.Send(this, A);
        }

        /*Here (Addar inte) else sektion funkar inte (den läser inte värdet av input) 
        bara if sektion funkar även om det finns data i input boxes*/
        private void Add_teachers_ServerClick(object sender, EventArgs e)
        {
             
            t_pass.Value = EncryptPassword(t_pass.Value);
            if (t_name.Value == "" || t_pass.Value == "" || t_drop.SelectedValue == "" || t_post.Value == "")
            {
                Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {
                Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, null, 0,
                t_name.Value, t_pass.Value, 2, t_drop.SelectedItem.Text, "false", t_post.Value);
                Clear_teacher();
                Main.Reg(this, "showSuccess('Success!')");
            }
        }

        private void Add_parents_ServerClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
            return;
        }

        private void Add_student_ServerClick(object sender, EventArgs e)
        {
            student_pass.Value = EncryptPassword(student_pass.Value);
            if (student_usernmae.Value == "" || student_pass.Value == "" || school_dropdown.SelectedValue == "" || student_epost.Value == "")
            {
                Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {
                Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, null, 0,
                student_usernmae.Value, student_pass.Value, 3, 
                school_dropdown.SelectedItem.Text, "false", student_epost.Value);
                Clear_students();
                Main.Reg(this, "showSuccess('Success!')");
            }
        }

         private void Clear_teacher()
         {
            t_name.Value = t_pass.Value = t_post.Value ="";
            t_drop.SelectedValue = null;
         }

        private void Clear_students()
        {
            student_usernmae.Value = student_pass.Value = student_epost.Value = "";
            school_dropdown.SelectedValue = null;
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

    }
}