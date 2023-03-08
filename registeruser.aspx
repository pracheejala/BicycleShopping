<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registeruser.aspx.cs" Inherits="bicycle.registeruser" %>

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
            text-align: center;
           
        }
        .style2
        {
            font-size: xx-large;
        }
        .style3
        {
            font-size: large;
        }
        .style4
        {
            font-size: xx-large;
            color: #336600;
        }
        .style5
        {
            font-size: x-large;
            color: #009933;
        }
        .inputbox
    {
        width:80%;
        margin-left:3%;
        margin-bottom:5px;
        font-size:100%;
        background-color:transparent;
        border-bottom:1px solid black;
        color:Black;
        outline:none;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
        }
        .form1 input[type=submit]
        {
             background-color:Green;
       border:1px solid #0094ff;
       height:40px;
       border-radius:20px;
       width:80%;
       margin-left:10%;
       margin-bottom:10px;
       font-size:20px;
       text-transform:uppercase;
       margin-top:10px;
       font-weight:bold;
        }
        .form1 input[type=submit]:hover
        {
             background-color: Red;
       border:1px solid #00ffff;
        }
        .style6
        {
            font-size: xx-large;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>
        <br class="style2" />
        <br class="style2" />
        <span class="style4">&nbsp;</span><span class="style6">---REGISTER HERE---</span></strong></div>
    <p>
        &nbsp;</p>
    <p class="style1">
        <span class="style3"><strong>Username :&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" CssClass="inputbox" Width="214px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p class="style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Ckeck Availability" />
    </p>
    <p class="style1">
        <strong><span class="style3">Password :&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" 
            CssClass="inputbox" Width="216px"></asp:TextBox>
    </p>
    <p class="style1">
        <strong><span class="style3">Confirm Pass :</span></strong>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter confirm password" 
            CssClass="inputbox" Width="217px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
    <p class="style1">
        <span class="style3"><strong>Email Id :&nbsp;&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Email id" 
            CssClass="inputbox" Width="214px"></asp:TextBox>
    </p>
    <p class="style1">
        <span class="style3"><strong>Mobile No. : </strong></span>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Mobile no." 
            CssClass="inputbox" Width="214px"></asp:TextBox>
    </p>
    <p class="style1">
        <span class="style3"><strong>Address&nbsp;:&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Address" 
            CssClass="inputbox" Width="215px"></asp:TextBox>
    </p>
    <p class="style1">
        <span class="style3"><strong>City :</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter City" 
            CssClass="inputbox" Width="216px"></asp:TextBox>
    </p>
    <p class="style1">
        <strong><span class="style3">State :&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter State" 
            CssClass="inputbox" Width="216px"></asp:TextBox>
    </p>
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" BackColor="#00CC66" Font-Bold="True" 
            Height="38px" Text="Sign In" Width="215px" onclick="Button1_Click" />
    </p>
    <p class="style1">
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
     
    </form>
</body>
</html>
