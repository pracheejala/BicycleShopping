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
    public partial class placeorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CardDetail(fname,lname,cardno,expirydate,cvv,billingaddress) values(@fname,@lname,@cardno,@expirydate,@cvv,@billingaddress)",con);
            cmd.Parameters.AddWithValue("@fname",TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@cardno", TextBox3.Text);
            cmd.Parameters.AddWithValue("@expirydate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@cvv", TextBox5.Text);
            cmd.Parameters.AddWithValue("@billingaddress", TextBox6.Text);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Payment Make Successfully..');</script>");
            Session["address"] = TextBox6.Text;
            Response.Redirect("");
     
        }
      


        
}
}