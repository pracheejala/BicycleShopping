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
    public partial class AddToCart1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    
                    Button1.Enabled=false;
                }
                else{
                     Button1.Enabled=true;
                }

                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("productimage");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        
                        dr = dt.NewRow();

                        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");
                    
                        SqlDataAdapter da = new SqlDataAdapter("select * from prodetail where productid=" + Request.QueryString["id"],conn);
                     
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        //int totalprice = price;

                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount = ";
                       GridView1.FooterRow.Cells[6].Text = "" + grandtotal().ToString() + " Rs";
                        Response.Redirect("AddToCart1.aspx");
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");

                        SqlDataAdapter da = new SqlDataAdapter("select * from prodetail where productid=" + Request.QueryString["id"], conn);
                    

                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                       dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        //int totalprice = price;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount = ";
                       GridView1.FooterRow.Cells[6].Text = "" + grandtotal().ToString() + " Rs";
                        Response.Redirect("AddToCart1.aspx");

                    }
                }
                else
                {
                    
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount = ";
                       GridView1.FooterRow.Cells[6].Text = "" + grandtotal().ToString() + " Rs";

                    }
                }

            }
            string orderdate = DateTime.Now.ToShortDateString();
            Session["orderdate"] = orderdate;
            orderid();
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return totalprice;
        }
                public void orderid()
        {
            String alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order: " + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray);
            Session["orderid"] = orderid;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Item Has Been Deleted From Shopping Cart
                    break;
                }
            }


            // Setting SNo. after deleting Row item from cart

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("AddToCart1.aspx");

        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Prachi\\Documents\\Visual Studio 2010\\Projects\\bicycle\\bicycle\\App_Data\\bshopping.mdf;Integrated Security=True;User Instance=True");
                scon.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetails(orderid, sno, productid, productname, price, quantity, orderdate) values('" + Session["orderid"] + "','"
        + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["productid"] + "','" + dt.Rows[i]["productname"] + "','" + dt.Rows[i]["price"] + "','" + 
        dt.Rows[i]["quantity"] + "','" + Session["orderdate"] + "')" ,scon);

                cmd.ExecuteNonQuery();
                scon.Close();
            }


            //If Session is Null Redirecting to login else Placing the order
           /* if (Session["username"] == null)
            {
                Response.Redirect("loginuser.aspx");
            }
            else
            {*/
                if (GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");

                }
                else
                {
                   

                    Response.Redirect("payment.aspx");

                }
            //}

        
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}