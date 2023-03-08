using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace bicycle
{
    public partial class update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");
        int productID;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
               // refreshdata();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label9.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = productID;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
            if (fu.HasFile)
            {
                Label productid = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
                TextBox productname = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;

                TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
                TextBox quantity = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
                fu.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(fu.FileName));
                String link = "image/" + Path.GetFileName(fu.FileName);


                String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True";
                String updatedata = "Update productdetails set productname='" + productname.Text + "', price='" + price.Text + "', quantity='" + quantity.Text + "', productimage='" + link + "' where productid=" + productid.Text;
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatedata;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label9.Text = "Row Data Has Been Updated Successfully";
                GridView1.EditIndex = -1;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Please Select Product Image');</script>");
            }
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox productid = GridView1.FooterRow.FindControl("TextBox7") as TextBox;
            TextBox productname = GridView1.FooterRow.FindControl("TextBox8") as TextBox;

            TextBox price = GridView1.FooterRow.FindControl("TextBox10") as TextBox;
            TextBox quantity = GridView1.FooterRow.FindControl("TextBox11") as TextBox;

            FileUpload productimage = GridView1.FooterRow.FindControl(" FileUpload1") as FileUpload;

            String query = "insert into productdetails(productid,productname,price,quantity,productimage) values(" + productid.Text + ",'" + productname.Text + "','" + price.Text + "','" + quantity.Text + "','" + productimage + "')";
            String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label9.Text = "New Row Inserted Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

      /*  public void refreshdata()
        {


            SqlCommand cmd = new SqlCommand("select * from productdetails", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }*/
        /* protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
         {
             Label prroductid = GridView1.Rows[e.RowIndex].FindControl("Label7") as Label;
             String mycon = "Data Source=AJ-LAPTOP; Initial Catalog=projectx; Integrated Security=True";
             String updatedata = "DELETE FROM productdetails WHERE productid = productid.Text";
             SqlConnection con = new SqlConnection(mycon);
             con.Open();
             SqlCommand cmd = new SqlCommand();
             cmd.CommandText = updatedata;
             cmd.Connection = con;
             int id = cmd.ExecuteNonQuery();
             Label9.Text = "Row Data Has Been Deleted Successfully";
             GridView1.EditIndex = -1;
             SqlDataSource1.DataBind();
             GridView1.DataSource = SqlDataSource1;
             GridView1.DataBind();
         } */

        public string productimage { get; set; }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {

                CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
                if (chck.Checked)
                {
                    var Label = gvrow.FindControl("Label1") as Label;

                    SqlCommand cmd = new SqlCommand("delete from productdetails where productid=@productid", con);
                    cmd.Parameters.AddWithValue("productid", int.Parse(Label.Text));
                    con.Open();
                    int productid = cmd.ExecuteNonQuery();
                    Label9.Text = "Row Data Has Been Deleted Successfully";
                    GridView1.EditIndex = -1;
                    SqlDataSource1.DataBind();
                    GridView1.DataSource = SqlDataSource1;
                    GridView1.DataBind();
                    con.Close();
                    //refreshdata();


                }
            }
        }


    }
}

       