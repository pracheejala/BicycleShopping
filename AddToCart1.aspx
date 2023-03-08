<%@ Page Language="C#" AutoEventWireup="true" Codefile="AddToCart1.aspx.cs" Inherits="bicycle.AddToCart1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            font-size: large;
            color: #000000;
        }
        .style3
        {
            color: #000000;
        }
    </style>
</head>
<body style="text-align: center">
<div style="color: #FFFFFF; font-weight: 700; font-size: large; height: 62px; background-color: #000000"><br />MY CART</div>
    <form id="form1" runat="server">
    <div>
       
        <strong><span class="style2">You have following Product in your cart</span><span class="style1"><span 
            class="style3">&nbsp;&nbsp;</span><br class="style3" />
        <br />
        &nbsp;
        </span></strong>
        <asp:HyperLink ID="HyperLink1" runat="server" style="border-style: solid; border-width: 2px; padding: 1px 4px; font-weight: 700; color: #000000; background-color: #C0C0C0; font-size: medium;" 
            NavigateUrl="~/productshop.aspx">Add More</asp:HyperLink>

        <br />

<hr size="5" />
    </div>
    <br /><div align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" 
        EmptyDataText="no product available in shopping cart" Font-Bold="True" 
        ShowFooter="True" Width="1446px" onrowdeleting="GridView1_RowDeleting" 
        HorizontalAlign="Center" BorderColor="#CCCCCC" BorderStyle="None" 
        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
        style="margin-right: 5px; text-align: center;" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="productid" HeaderText="Product ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="productname" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                <ItemStyle Height="200px" HorizontalAlign="Center" Width="200px" />
            </asp:ImageField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
            <ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="Black" ForeColor="White" />
        <HeaderStyle BackColor="Black" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="center" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </div>
    <asp:Button ID="Button1" runat="server" Text="CheckOut" Height="57px" 
        Width="167px" onclick="Button1_Click" BackColor="#00CC00" Font-Bold="True" 
        Font-Size="15pt" BorderColor="Black" BorderWidth="3px" />
    </form>
</body>
</html>
