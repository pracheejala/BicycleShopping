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
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                /*if (Session["prachi"] == null)
                {
                    Response.Redirect("loginuser.aspx");
                }*/

               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");
            if (imageUpload.HasFile)
            {
                string filename = imageUpload.PostedFile.FileName;
                string filepath = "image/" + imageUpload.FileName;
                imageUpload.PostedFile.SaveAs(Server.MapPath("~/image/")+filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into prodetail values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+filepath+ "')",con);
               // Label2.Text = "Product Has Been Successfully Saved";
                cmd.ExecuteNonQuery();
                con.Close();
               
                Response.Write("<script>alert('product Added Successfully');</script>");
                Response.Redirect("addproduct.aspx");
            }

        }
        

        

    }
}