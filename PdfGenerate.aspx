<%@ Page Language="C#" AutoEventWireup="true" Codefile="PdfGenerate.aspx.cs" Inherits="bicycle.PdfGenerate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 240px;
        }
        .style2
        {
            width: 244px;
        }
        .style3
        {
            width: 246px;
        }
        .style4
        {
            text-align:center;
            width: 247px;
        }
        .style5
        {
            width: 636px;
        }
        .style6
        {
            font-size: medium;
            width: 446px;
        }
        .style7
        {
            font-size: large;
        }
        .style8
        {
            height: 28px;
        }
        .style9
        {
            height: 28px;
            font-size: x-large;
            font-family: "Bodoni MT";
        }
        .style10
        {
            height: 29px;
        }
    </style>
</head>
<body style="text-align: center" bgcolor="White">
    <form id="form1" runat="server">
    <div style="color: #FFFFFF; font-weight: 700; height: 51px; background-color: #000000">Your Order Succefully Placed</div>
    <div>
    <br />
  

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel1" runat="server" 
            style="border-style: solid; border-width: 3px; padding: 1px 4px">
         <table border="2" class="style1">
                <tr>
                    <td style="text-align: center" class="style9">
                        <strong>Retail Invoice PDF</strong></td>
                </tr>
               
                <tr>
                    <td class="style3">
                        <span class="style7">Order No:&nbsp;</span>
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
                        <br />
                        <br />
                        <span class="style7">Order Date:</span>&nbsp;
                        <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="style2">
                        <table border="1" class="style4">
                            <tr>
                                <td class="style6">
                                    <strong><span class="style7">Delivery Address:</span></strong><br /> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </td>
                                <td class="style5">
                                    <strong><span class="style7">Sold By:</span></strong><br /> &nbsp;&nbsp;&nbsp;&nbsp; Lakshmi Cycle Mart,Shirpur</td>
                            </tr>
                        </table>
                    </td>
                </tr>
              
                
                 <tr>
                    <td class="style10">
                        <strong>GSTIN NO</strong>: 08DISPP4489K1Z4</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            Height="224px" Width="1285px">
                             <Columns>
                                <asp:BoundField DataField="sno" HeaderText="Sr. No.">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productid" HeaderText="Product ID">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productname" HeaderText="Product Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                             <HeaderStyle BackColor="#FF3300" ForeColor="Black" />
                        </asp:GridView>
                         <tr>
                    <td class="style8">
                        <br />
                        <strong><span class="style7">Grand Total : </span></strong>&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" 
                            style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                        <br />
                    </td>
                </tr>
                        <tr>
                            <td class="style8">
                                <strong>Tracking ID :</strong> FMPP0774730529</td>
                        </tr>
          <tr>
          <td>
            <br />
              <strong>&nbsp; We declare that: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THIS IS COMPUTER GENERATED INVOICE <br />
                    </td>
                </tr>
                </table>
        </asp:Panel>
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Downlod Bill" Font-Bold="True" 
            Height="50px" Width="279px" onclick="Button1_Click" BackColor="#FF6600" 
            BorderColor="#FF9900" style="font-size: large" BorderWidth="2px" />
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx" 
            style="font-size: large; color: #000000;">Go to Home Page</asp:HyperLink>
        </p>
    </form>
</body>
</html>
