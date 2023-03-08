<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopnow1.aspx.cs" Inherits="bicycle.shopnow1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 100%;
            height: 241px;
        }
        .style4
        {
            height: 48px;
            text-align: center;
        }
        .style5
        {
            color: #666666;
            font-family: "Arial Rounded MT Bold";
        }
        .style6
        {
            color: #00CC00;
            font-family: "Arial Rounded MT Bold";
        }
        .style7
        {
            text-align: center;
            height: 39px;
            color: #FF0000;
            font-weight: 700;
            font-size: large;
        }
        .style8
        {
            height: 37px;
        }
        .style9
        {
            height: 50px;
        }
        .style10
        {
            text-align: center;
            height: 19px;
        }
        .style11
        {
            font-size: x-large;
            color: #FF6600;
        }
        .style12
        {
            color: #000000;
        }
        .style13
        {
            font-size: x-large;
            color: #000000;
        }
    </style>
</head>
<body bgcolor="black">
    <form id="form1" runat="server">
    <div class="style2">
    
    &nbsp;
        <br />
        <strong><span class="style1"><span class="style5">&nbsp;</span><span class="style6">--- Select 
        Your Bike ---</span><br />
        <br />
        </span>
        </strong></div>
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Addtocard.aspx" 
            style="color: #FFFFFF">Show Shopping cart</asp:HyperLink>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="DataList1_ItemCommand" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="3" 
        RepeatDirection="Horizontal" Width="1296px" style="margin-right: 156px" 
        CellPadding="7" CellSpacing="7">
        <ItemTemplate>
            <table bgcolor="White" border="2" class="style3">
                <tr>
                    <td class="style10">
                        <span class="style11">Product ID:</span><asp:Label ID="Label2" runat="server" 
                            Text='<%# Eval("productid") %>' CssClass="style13"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style9">
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large;" 
                            Text='<%# Eval("productname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="211px" 
                            ImageUrl='<%# Eval("productimage") %>' style="text-align: center" 
                            Width="455px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style8">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("shortdesc") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <span class="style12">Price:</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%#Eval("productid")%>' CommandName="Addtocard" Height="97px" 
                            ImageUrl="~/buynow.png" Width="355px" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [productdetail]"></asp:SqlDataSource>
    </form>
</body>
</html>
