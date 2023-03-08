<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo1.aspx.cs" Inherits="bicycle.demo1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    *
    {box-sizing:border-box;
    
    }
    body
    {
        background-image: url('vivaimg22.jpg');
   background-repeat:no-repeat;
   background-attachment: fixed;
  background-size:cover;
  width:100%;height:100%;

    }
    .registration-box
    {
        width:600px;
        background-color:transparent;
        height:auto;
        position:relative;
        display:block;
        margin:50px auto;
        opacity:0.7;
        border-radius:45px;
        padding:50px 30px;
      
    }
    .registration-box h1
    {
        text-align:center;
        text-transform:uppercase;
       
    }
    .registration-box form label
    {
        display:block;
        margin-left:10%;
        padding-bottom:5px;
        font-size:100%;
        font-weight:bold;  
    }
    .inputbox
    {
        width:80%;
        margin-left:10%;
        margin-bottom:10px;
        font-size:100%;
        background-color:transparent;
        border:none;
        border-bottom:1px solid black;
        color:Black;
        outline:none;   
    }
   .registration-box form input[type=submit]
   {
       background-color:Green;
       border:1px solid #0094ff;
       height:40px;
       border-radius:20px;
       width:80%;
       margin-left:10%;
       margin-bottom:20px;
       font-size:20px;
       text-transform:uppercase;
       margin-top:10px;
       font-weight:bold;
       
       
       
   }
   .registration-box form input[type=submit]:hover
   {
       background-color: Red;
       border:1px solid #00ffff;
       
       
   }
   .labeltext
   {
       display:block;
       margin-left:auto;
       margin-right:auto;
       padding-bottom:15px;
       font-size:100%;
       font-weight:bold;
       width:80%;
       text-align:center;
       
   }
    
    </style>
</head>
<body>
   
    <div class="registration-box">
    <h1>Registartion Form</h1>
     <form id="form1" runat="server">
      <div class="form-content">
          <label>Username: </label>
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" CssClass="inputbox"></asp:TextBox>

           <label>Password: </label>
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter password" CssClass="inputbox"></asp:TextBox>

           <label>Confirm Password: </label>
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter confirm password" CssClass="inputbox"></asp:TextBox>

           <label>Email Id: </label>
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter email id" CssClass="inputbox"></asp:TextBox>

           <label>Mobile no.: </label>
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter mobile no." CssClass="inputbox"></asp:TextBox>

           <label>Address: </label>
          <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter address" CssClass="inputbox"></asp:TextBox>

           <label>City: </label>
          <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter city" CssClass="inputbox"></asp:TextBox>

           <label>State: </label>
          <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter stae" CssClass="inputbox"></asp:TextBox>

          <asp:Button ID="Button1" runat="server" Text="Submit" 
              onclick="Button1_Click"  />
          <asp:Label ID="Label1" runat="server" Text="" CssClass="labeltext"></asp:Label>
      </div>



       </form>
    </div>
  
</body>
</html>
