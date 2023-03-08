<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productdetail.aspx.cs" Inherits="bicycle.productdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            font-size: x-large;
            background-color: #000000;
        }
    </style>
</head>
<body>

    <p style="font-weight: 700; text-align: center; height: 64px;" class="style1">
        Product Details Report</p>
    <form id="form1" runat="server">
    <p align="center" style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" Height="327px" Width="1418px">
            <Columns>
                <asp:BoundField DataField="productid" HeaderText="Product Id" 
                    SortExpression="productid" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" 
                    SortExpression="productname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="productimage" HeaderText="Product Image" 
                    SortExpression="productimage" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#CCCCFF" />
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
            SelectCommand="SELECT * FROM [prodetail]"></asp:SqlDataSource>
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
