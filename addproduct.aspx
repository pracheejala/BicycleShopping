<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="bicycle.addproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 49%;
            height: 412px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: center;
            width: 279px;
        }
    </style>
</head>
<body>
<div style="color: #FFFFFF; font-size: x-large; font-weight: 700; text-align: center; height: 55px; background-color: #000000">Add Product</div>
<br />
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    
    <div>
    </div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style4">
                    Product Id:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Product Name:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Price:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Quantity:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Upload
                    Image:</td>
                <td class="style3">
                    <asp:FileUpload ID="imageUpload" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Category:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Insert Product" onclick="Button1_Click" 
                        Width="263px" Height="48px" 
                        style="font-weight: 700; background-color: #FF6600" />
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
