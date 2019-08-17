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
             
        }


        protected void add_students_Click(object sender, EventArgs e)
        {
            //Funkar inte*********** Lägger inte till....!!!!
            student_pass.Value = EncryptPassword(student_pass.Value);
            //ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "get();", true);
            if (student_usernmae.Value == "" && student_pass.Value == "" && school_dropdown.SelectedValue == "" && student_epost.Value == "")
            {
                Main.Reg(this, "showError('Fyll i alla fälten.')");
                return;
            }
            else
            {

                Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, 0,
              student_usernmae.Value, student_pass.Value, 3, school_dropdown.SelectedValue, "false", student_epost.Value);
                Clear();

            }

        }
        void Clear()
        {
            student_usernmae.Value = student_pass.Value = student_epost.Value = school_dropdown.SelectedValue = "";
        }

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