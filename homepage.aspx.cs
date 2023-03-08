using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace bicycle
{
    public partial class homepage : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = "Hello, " + Session["username"].ToString();
                HyperLink1.Visible = false;
                HyperLink2.Visible = true;
                //LinkButton2.Visible = true;
            }
            else
            {
                HyperLink1.Visible = true;
                HyperLink2.Visible = false;
                //LinkButton2.Visible = false;
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("loginuser.aspx");

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("productshop.aspx");
        }
    }
}