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
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void Button1_Click(object sender, EventArgs e)
        {
            i = 0;
            con.Open();
            SqlCommand cmd =new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from adminlogin where username='"+TextBox1.Text+"'and password='"+TextBox2.Text+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
             i=Convert.ToInt32(dt.Rows.Count.ToString());
             con.Close();
             if (i == 1)
             {
                 Response.Redirect("adminhome.aspx");

             }
             else
             {
                 Label2.Text = "Invalid username & password";
             }
             con.Close();
           
        }
    }
}