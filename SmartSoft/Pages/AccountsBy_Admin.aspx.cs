using SmartSoft.Database;
using System;
using System.Collections.Generic;
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
 
            add_students.ServerClick += Add_student_ServerClick;
            add_teachers.ServerClick += Add_teachers_ServerClick;
            add_parents.ServerClick += Add_parents_ServerClick;
          
        }

        //Here (Addar inte) else sektion funkar inte (den läser inte värdet av input)
        private void Add_teachers_ServerClick(object sender, EventArgs e)
        {
             
            teacher_pass.Value = EncryptPassword(teacher_pass.Value);

            if (teacher_username.Value == "" || teacher_pass.Value == "" || teacher_dropdownlist.SelectedValue == "" || teacher_epost.Value == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
               // Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {

                Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, 0,
               teacher_username.Value, teacher_pass.Value, 2, teacher_dropdownlist.SelectedValue, "false", teacher_epost.Value);
                Clear_teacher();
               

            }
           
        }

        private void Add_parents_ServerClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
            return;
        }

        private void Add_student_ServerClick(object sender, EventArgs e)
        {
            // ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);

            student_pass.Value = EncryptPassword(student_pass.Value);

            if (student_usernmae.Value == "" || student_pass.Value == "" || school_dropdown.SelectedValue == "" || student_epost.Value == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "hello();", true);
                //Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {

                Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, 0,
              student_usernmae.Value, student_pass.Value, 3, school_dropdown.SelectedValue, "false", student_epost.Value);
                Clear_students();

            }
        }

       

         void Clear_teacher()
         {
            teacher_username.Value = teacher_pass.Value = teacher_epost.Value ="";
            teacher_dropdownlist.SelectedValue = null;
         }

        void Clear_students()
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