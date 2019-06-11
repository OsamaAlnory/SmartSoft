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
            Main.AddTo(Producer.AddAccount, Fields.ACCOUNT, 0, 
                username.Text, password.Text, 1, school.Text);
            Clear();
        }

        void Clear()
        {
            username.Text = password.Text = school.Text="";
        }

        void FillGrid()
        {
            SqlConnection con = new SqlConnection(ConnectionString.con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlData = new SqlDataAdapter("VIEWALL", con);
            sqlData.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlData.Fill(dtbl);
            con.Close();
            AccountList.DataSource = dtbl;
            AccountList.DataBind();
        }
    }
}