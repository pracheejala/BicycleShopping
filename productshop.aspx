<%@ Page Language="C#" AutoEventWireup="true" Codefile="productshop.aspx.cs" Inherits="bicycle.productshop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .style1
        {
            width: 100%;
            height: 228px;
        }
        .style2
        {
            height: 101px;
             width: 1228px;
         }
        .style5
        {
            height: 121px;
             width: 1228px;
         }
         .style10
         {
             text-align: center;
         }
         .style11
         {
             color: #000000;
         }
         .style12
         {
             color: #000000;
             font-size: large;
         }
         .style13
         {
             height: 9px;
             width: 1228px;
         }
         .style17
         {
             height: 20px;
             width: 1228px;
         }
         .style18
         {
             height: 22px;
             width: 1228px;
         }
         .style19
         {
             height: 13px;
             width: 1228px;
         }
         .style20
         {
             font-family: Bahnschrift;
         }
         .style21
         {
             font-size: medium;
         }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div class="style10">
    



        <div class="style10">
    



        
       <div class="style20" 
                
                
                style="color: #FFFFFF; font-size: x-large; font-weight: 700; height: 84px; background-color: #000000"><br /> --- Select 
        Your Bike ---</div>
    

    <br />

      
            <span class="style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;</span><asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                NavigateUrl="~/AddToCart1.aspx" 
                
                style="border-style: solid; border-width: 1px; padding: 1px 4px; color: #000000; background-color: #FFFFFF;" 
                CssClass="style21">Show Shopping Cart</asp:HyperLink>
            <span class="style21">&nbsp;&nbsp;&nbsp;
        </span>
        <br class="style21" />
        <br />
        <hr size="5" style="color: #FF0000; width: 112%; height: 5px" />
        </div>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            Height="600px" 
            Width="1416px" CellPadding="5" CellSpacing="9" DataKeyField="productid" 
            RepeatColumns="3" RepeatDirection="Horizontal" 
            onitemcommand="DataList1_ItemCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged" 
            style="margin-right: 0px" BackColor="White">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td style="text-align: center" class="style17">
                        <span class="style11"><strong>Product</strong></span><strong 
                            style="color: #000000"> ID&nbsp; :&nbsp; </strong>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("productid") %>' 
                            style="color: #FF3300; font-weight: 700;"></asp:Label>
                    </td>
                </tr>
                <tr>


                 <td style="text-align: center; font-size: large;" class="style18">
                        <strong style="color: #000000">Product Name&nbsp; : </strong>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("productname") %>' 
                            style="color: #000000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style5">
                        <asp:Image ID="Image1" runat="server" BorderColor="Black" 
                            Height="201px" ImageUrl='<%# Eval("productimage") %>' Width="397px" />
                    </td>
                </tr>
                <tr>
                 <td style="text-align: center" class="style13">
                        <strong style="color: #000000">Quantity:</strong>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                 <td style="text-align: center" class="style19">
                        <strong><span class="style12">Price&nbsp;&nbsp;&nbsp; : Rs.&nbsp;</span>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' 
                            style="color: #FF0000"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style2">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%#Eval("productid")%>' CommandName="AddToCart1" Height="89px" 
                            ImageUrl="~/buy3.png" Width="321px" />
                    </td>
                      </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [prodetail]"></asp:SqlDataSource>

    </div>
    <hr style="width: 1408px" />
    </form>
    <p class="style10">
        <a href="mailto:copyright@2021|VIVA"><span class="style11">VIVA</span></a> 
        BIKES.INDIA</p>
</body>
</html>
