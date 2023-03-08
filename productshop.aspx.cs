using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bicycle
{
    public partial class productshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            Session["addproduct"]="false";
 
        }
       
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = true;
            if (e.CommandName == "AddToCart1")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddToCart1.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }

        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}
