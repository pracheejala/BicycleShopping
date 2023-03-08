using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace bicycle
{
    public partial class loginuser : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\userinfo.mdf;Integrated Security=True;User Instance=True";
            SqlConnection scon = new SqlConnection(mycon);
            string myquary = "select * from newuser where username='"+TextBox1.Text+"'and Password='"+TextBox2.Text+"'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquary;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string uname;
            string pass;
            uname = ds.Tables[0].Rows[0]["username"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();
            scon.Close();
            if (uname == TextBox1.Text && pass == TextBox2.Text)
            {
                Session["username"] = uname;
                Response.Redirect("homepage.aspx");

            }
            else
            {
                Label1.Text = "Invalid Username & Password - Relogin";
            }
        }
    }
}