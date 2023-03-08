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
    public partial class Addtocard : System.Web.UI.Page
    { 
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["addproduct"].ToString()=="true")
            {
                Session["addproduct"] = "false";
                DataTable dt= new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("productimage");
                dt.Columns.Add("shortdesc");
                 dt.Columns.Add("price");

                 if (Request.QueryString["id"] != null)
                 {
                     if (Session["buyitems"] == null)
                     {
                         dr = dt.NewRow();
                         string mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True";
                         SqlConnection scon = new SqlConnection(mycon);
                         string myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                         SqlCommand cmd = new SqlCommand(); 
              
                         cmd.CommandText = myquery;
                         cmd.Connection = scon;
                         SqlDataAdapter da = new SqlDataAdapter();
                         da.SelectCommand = cmd;
                         DataSet ds = new DataSet();
                         da.Fill(ds);
                         dr["sno"] = 1;
                         dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                         dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                         dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                         dr["shortdesc"] = ds.Tables[0].Rows[0]["shortdesc"].ToString();
                         dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                         dt.Rows.Add(dr);
                         GridView1.DataSource = dt;
                         GridView1.DataBind();
                         Session["buyitems"] = dt;
                     }
                     else
                     {
                         dt = (DataTable)Session["buyitems"];
                         int sr;
                         sr = dt.Rows.Count;
                         dr = dt.NewRow();
                         string mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True";
                         SqlConnection scon = new SqlConnection(mycon);
                         string myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                         SqlCommand cmd = new SqlCommand();
                         cmd.CommandText = myquery;
                         cmd.Connection = scon;
                         SqlDataAdapter da = new SqlDataAdapter();
                         da.SelectCommand = cmd;
                         DataSet ds = new DataSet();
                         da.Fill(ds);
                     
                         dr["sno"] = sr + 1;
                         dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                         dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                         dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                         dr["shortdesc"] = ds.Tables[0].Rows[0]["shortdesc"].ToString();
                         dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                         dt.Rows.Add(dr);
                         GridView1.DataSource = dt;
                         GridView1.DataBind();
                         Session["buyitems"] = dt;
                     }


                 }
                 else
                 {
                   
                     dt = (DataTable)Session["buyitem"];
                     GridView1.DataSource = dt;
                     GridView1.DataBind();
                 }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}