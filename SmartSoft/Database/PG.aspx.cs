using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSoft.Database
{
    public partial class PG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Main.Send(this, "yes");
            Main.Send(this, "no");
        }

        protected void test_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(),
                "textas", "alert('" + "test" + "')", true);
            ScriptManager.RegisterStartupScript(this, GetType(),
    "tex", "ya 5ra", false);
            ScriptManager.RegisterStartupScript(this, GetType(),
                "textasd", "alert('" + "tt" + "')", true);

        }
    }
}