<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="bicycle.contact" %>

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
             color: #FFFFFF;
             text-align: center;
             font-family: "Arial Unicode MS";
         }
         .style3
         {
             color: #FFFFFF;
         }
         .style6
         {
             text-align: center;
         }
          .contact-form
    {
        width:500px;
        background-color:transparent;
        height:auto;
        position:relative;
        display:block;
        margin:50px auto;
        opacity:0.7;
        border-radius:45px;
        padding:50px 30px;
      
    }
         .contact-form form label
    {
        display:block;
        margin-left:10%;
        padding-bottom:5px;
        font-size:100%;
        font-weight:bold;  
    }
         .inputbox
    {
        margin-left:10%;
        margin-bottom:20px;
        font-size:100%;
        background-color:transparent;
        border-bottom:1px solid white;
        color:white;
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
          .contact-form form input[type=submit]
   {
       background-color:Green;
       border:1px solid #0094ff;
       height:50px;
       border-radius:20px;
       width:80%;
       margin-left:10%;
       margin-bottom:20px;
       font-size:15px;
       text-transform:uppercase;
       margin-top:10px;
       font-weight:bold;
             text-align: center;
         }
   .contact-form form input[type=submit]:hover
   {
       background-color:Orange;
       border:4px solid #00ffff;
       
       
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
             color: #FFFFFF;
             text-align: center;
         }
         #form1
         {
             border-style: solid;
             border-width: 1px;
             padding: 1px 4px;
         }
         .style8
         {
             font-size: xx-large;
             color: #FF9933;
             background-color: #191919;
         }
         .style9
         {
             color: #FFFFFF;
             border-style: groove;
             border-width: 2px;
             padding: 1px 4px;
         }
     </style>
</head>
<body>
<div class="contact-form">
    <form id="form1" runat="server">
    <div class="form-content"> 

   
    <p class="style6">
        <strong><span class="style8"><span class="style9">&nbsp; Contact Us&nbsp; </span></span></strong></p>
       
    <dl>
        <dd>
            <p class="style1">
                Send us an email at <a href="mailto:info@vivabikes.in" 
                    style="color: #FFFFFF; background-color: #333333">info@vivabikes.in</a> 0r 
                fill the form below</p>
        </dd> <br />
        <hr style="color: #000000" /><br />
            <span class="style3">
        <label>Name:</label></span><asp:TextBox ID="TextBox1" runat="server" 
                placeholder="Enter Name" CssClass="inputbox" Width="391px"></asp:TextBox>

<label><span class="style3">Email:</span> </label>
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email ID" 
                CssClass="inputbox" Width="391px"></asp:TextBox>

            <label><span class="style3">Mobile no.: </span> </label>
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter mobile no." 
                CssClass="inputbox" Width="391px"></asp:TextBox>

            <span class="style3">

          <label>Message: </label>
            </span>
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Type your Message..." 
                CssClass="inputbox" Width="392px"></asp:TextBox>


      
            <asp:Button ID="Button1" runat="server" 
                 Text="Send Message" 
                onclick="Button1_Click" BackColor="White" BorderColor="Black" 
                BorderWidth="5px"  />
        <dt></dt>
        <asp:Label ID="Label9" runat="server" CssClass="labeltext"
            ></asp:Label>
        <dt></dt>
    </dl>
    
   
    <p class="style1">
        &nbsp;</p>
    
    
   
       
    </form>

    </div>
     <p class="style1">
        &nbsp;<a href="mailto:copyright@2021|VIVA"><span class="style3">VIVA</span></a> 
        BIKES.INDIA</p>
</body>
</html>
