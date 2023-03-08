<%@ Page Language="C#" AutoEventWireup="true" Codefile="placeorder.aspx.cs" Inherits="bicycle.placeorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
          body{
  background-image: url('c2.jpg');
   background-repeat:no-repeat;
   background-attachment: fixed;
  background-size:cover;
  width:100%;height:100%;
}
        .style1
        {
            text-align: center;
            background-color: #333333;
        }
        .style3
        {
            width: 505px;
            height: 650px;
        }
        .style6
        {
            background-color: #333333;
            text-align: center;
        }
        .style7
        {
            width: 179px;
            text-align: left;
            height: 35px;
        }
        .style8
        {
            background-color: #000000;
            text-align: center;
            height: 48px;
        }
        .style9
        {
            width: 179px;
            text-align: center;
        }
        .style10
        {
            width: 179px;
        }
        .style11
        {
            background-color: #000000;
            width: 242px;
        }
        .style12
        {
            background-color: #000000;
            text-align: center;
            width: 242px;
        }
        .style13
        {
            background-color: #000000;
            text-align: center;
            width: 242px;
            height: 35px;
        }
        .style14
        {
            text-align: center;
            height: 116px;
        }
        .style15
        {
            background-color: #000000;
            text-align: center;
            height: 39px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    <table align=center style="margin-top:100px; "darkCyan" class="style3" 
            bgcolor="Black">
    <tr>
  <td class="style6" colspan="2" align=center>

    
   
    <asp:Label ID="Label1" runat="server" 
        
          style="font-weight: 700; font-size: xx-large; font-family: 'Book Antiqua'; color: #FFCC00;" 
          Text="---Cart Detail---"></asp:Label>
         </td>
         </tr>
         <tr>
          <td class="style12">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="First name" Width="269px"></asp:TextBox>
    
        </td>
       

        <td class="style9">
         <asp:TextBox ID="TextBox2" runat="server" placeholder="last name" Width="268px"></asp:TextBox>
    
        </td>
        </tr>
        <tr>
        <td class="style14" align=center colspan="2">
        
            <asp:Image ID="Image1" runat="server" ImageUrl="~/payment.png" Width="707px" 
                Height="104px" />
        
        </td>
        </tr>
         <tr>
        <td class="style1" align=center colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Card number:  " 
                style="font-weight: 700; color: #C0C0C0;"></asp:Label>
        &nbsp;</td>
        </tr>
          <tr>
        <td class="style1" align=center colspan="2">
         <asp:TextBox ID="TextBox3" runat="server" placeholder="its digit" Width="667px" 
                style="text-align: left"></asp:TextBox>
        </td>
        </tr>
          <tr>
        <td class="style11" align=center>
        
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Expiry Date: " 
                style="color: #C0C0C0"></asp:Label>
        
        </td>
       

        <td align=center class="style10">
        
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="cvv:" 
                style="color: #C0C0C0"></asp:Label>
        
        </td>
        </tr>
          <tr>
        <td class="style13" align=center>
        
            <asp:TextBox ID="TextBox4" runat="server" placeholder="mm/yy(061996)" 
                Width="268px"></asp:TextBox>
             
        
        </td>
       

        <td class="style7" align=center>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="3 digit" Width="269px"></asp:TextBox>
             
        </td>
        </tr>
        <tr>
        <td class="style6" align=center colspan="2">
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Billing Addreess" 
                TextMode="MultiLine" Width="687px" Height="24px" 
                style="background-color: #FFFFFF"></asp:TextBox>
            
        </td>
        </tr>
       
        <tr>
        <td class="style8" align=center colspan="2">
       
            <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" 
                Width="240px" Height="53px" onclick="Button1_Click" 
                style="text-align: center; background-color: #FF9900;" BackColor="#FF9933" BorderColor="Black" 
                BorderStyle="Double" /></td>
        </tr>
       
        <tr>
        <td class="style15" align=center colspan="2"> 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart1.aspx" 
                style="font-weight: 700; color: #FF0000;">Previous Page</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/homepage.aspx" 
                style="font-weight: 700; color: #FF0000;">Home Page</asp:HyperLink>
        </td>
        </tr>
          </table>
          </div>
    </form>
</body>
</html>
