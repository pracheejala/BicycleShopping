using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace bicycle
{
    public partial class home1 : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = "Hello, " + Session["username"].ToString();
                HyperLink1.Visible = false;
                LinkButton1.Visible = true;
            }
            else
            {
                HyperLink1.Visible = true;
                LinkButton1.Visible = false;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home1.aspx");
        }
    }
}