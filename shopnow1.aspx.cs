﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bicycle
{
    public partial class shopnow1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"]="false";
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"]="true";
            Response.Redirect("Addtocard.aspx?id="+ e.CommandArgument.ToString());
        }
    }
}