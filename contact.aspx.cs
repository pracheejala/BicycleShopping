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
    public partial class contact : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "insert into ContactDetails(name,email,mobile,message) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            string mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label9.Text = "Thanks For Contact Us ....";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
           

        }
    }
}