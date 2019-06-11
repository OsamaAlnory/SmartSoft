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
         
        SqlConnection con = new SqlConnection(ConnectionString.con);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sql = new SqlCommand("ADDADMIN", con);
            sql.CommandType = CommandType.StoredProcedure;
            sql.Parameters.AddWithValue("@ID", (_AdminId.Value == ""?0:Convert.ToInt32(_AdminId.Value)));
            sql.Parameters.AddWithValue("@Username",username.Text.Trim());
            sql.Parameters.AddWithValue("@Password", password.Text.Trim());
            sql.Parameters.AddWithValue("@UType", 1);
            sql.Parameters.AddWithValue("@School", school.Text.Trim());
            sql.ExecuteNonQuery();
            con.Close();
            Clear();
             
             
        }

        void Clear()
        {
            username.Text = password.Text = school.Text="";
        }
    }
}