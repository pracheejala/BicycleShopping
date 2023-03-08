<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="bicycle.Adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     body{
  background-image: url('vivaimg22.jpg');
   background-repeat:no-repeat;
   background-attachment: fixed;
  background-size:cover;
  width:100%;height:100%;
}
        .style1
        {
            font-size: x-large;
            text-align: center;
        }
        
       .style4
       {
           font-size: larger;
           color: #003300;
       }

       .style6
       {
           font-size: xx-large;
           color: #336600;
       }
       

        .style3
        {
            text-align: center;
        }

       .style5
       {
           font-size: large;
       }
       </style>
</head>
<body>
   
    <form id="form1" runat="server">
    <div>
     <div class="style1">
    
        <strong>
        <br />
        <span class="style4">
        <br />
         <br />
        <br style="border-style: solid; border-width: 2px; padding: 1px 4px" />
        </span><span class="style6">
        ---Admin Login Here---</span></strong></div>
    <p>
        &nbsp;</p>
    <p class="style3">
        <strong><span class="style5">Username</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
    </p>
    <p class="style3">
        <strong><span class="style5">Password</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="217px"></asp:TextBox>
    </p>
    <p class="style3">
        &nbsp;</p>
    <p class="style3">
        <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="#33CC33" 
            BorderWidth="3px" Font-Bold="True" Height="46px" Text="Submit" 
            Width="190px" onclick="Button1_Click" />
    </p>
    <p class="style3">
        <asp:Label ID="Label2" runat="server" style="color: #FF0000"></asp:Label>
    </p>
    </div>
    </form>
</body>
</html>
