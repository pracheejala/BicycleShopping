<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderdetail.aspx.cs" Inherits="bicycle.orderdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #FFFFFF;
            font-size: x-large;
            height: 89px;
            background-color: #000000;
        }
        
    </style>
</head>
<body bgcolor="White" style="text-align: center">
    <form id="form1" runat="server">
    <div class="style1">
    
        <br />
        <strong>Order Details Report</strong></div>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" Height="293px" 
        Width="1480px">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="Order ID" 
                SortExpression="orderid" />
            <asp:BoundField DataField="orderdate" HeaderText="Order Date" 
                SortExpression="orderdate" />
            <asp:BoundField DataField="sno" HeaderText="S. No." SortExpression="sno" />
            <asp:BoundField DataField="productid" HeaderText="Product Id" 
                SortExpression="productid" />
            <asp:BoundField DataField="productname" HeaderText="Product Name" 
                SortExpression="productname" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [OrderDetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
