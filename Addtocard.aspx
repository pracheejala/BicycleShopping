<%@ Page Language="C#" AutoEventWireup="true" Codefile="Addtocard.aspx.cs" Inherits="bicycle.Addtocard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            text-align: center;
            font-size: xx-large;
        }
        .style3
        {
            color: #666666;
        }
        .style4
        {
            color: #FFFFFF;
        }
        .style5
        {
            color: #FF0000;
        }
        .style6
        {
            color: #00CC00;
        }
    </style>
</head>
<body style="height: 508px" bgcolor=gray>
    <p>
        <br />
    </p>
    <p class="style2">
        &nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;<span class="style3"> </span>
        <span class="style6">&nbsp;---- Add to card ----</span><span class="style5">&nbsp;</span></strong></p>
    <form id="form1" runat="server">
    <p style="font-size: x-large">
        <span class="style4">&nbsp;&nbsp;&nbsp;
        </span>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/shopnow1.aspx" 
            style="font-size: medium" CssClass="style4">Continue Shopping</asp:HyperLink>
        &nbsp;</p>
    <div style="text-align: center">
    
        &nbsp;<asp:GridView 
            ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
            CellPadding="3" 
            EmptyDataText="No particular product available in shopping card" 
            Height="176px" Width="1156px" BorderStyle="None" CellSpacing="5" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="sr no.">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productid" HeaderText="Product Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                    <ItemStyle HorizontalAlign="Center" Height="50px" Width="75px" />
                </asp:ImageField>
                <asp:BoundField DataField="shortdesc" HeaderText="Description">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" 
                HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
