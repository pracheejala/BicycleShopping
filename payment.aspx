<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="bicycle.payment" %>

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
            color: #FFFFFF;
        }
         .inputbox
    {
        width:80%;
        margin-left:10%;
        margin-bottom:20px;
        font-size:100%;
        background-color:transparent;
        border:none;
        border-bottom:1px solid white;
        color:white;
        outline:none;   
    }
          .contact-form form input[type=submit]
   {
       background-color:Green;
       border:1px solid #0094ff;
       height:30px;
       border-radius:20px;
       width:80%;
       margin-left:10%;
       margin-bottom:20px;
       font-size:20px;
       text-transform:uppercase;
       margin-top:10px;
       font-weight:bold;
       
       
       
   }
   .contact-form form input[type=submit]:hover
   {
       background-color:Orange;
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
             border-style: solid;
            border-width: 2px;
            padding: 1px 4px;
            font-size: xx-large;
             color: #FFFFFF;
             background-color: #191919;
         }
         </style>
</head>
<body>
<div class="contact-form">
    <form id="form1" runat="server">
    
    
      <div class="form-content"> 

   
          <p class="style6">
              &nbsp;<strong><span class="style8"> Payment Details&nbsp;</span></strong></p>
         <hr style="color: #000000" />
          <asp:Image ID="Image1" runat="server" ImageUrl="~/payment.png"/>
          <hr style="color: #000000"/>
            <span class="style3">
        <label> First Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
              runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
          </label></span><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter First Name" CssClass="inputbox"></asp:TextBox>

<label><span class="style3">Last Name:</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
              ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
          </label>
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Last Name" CssClass="inputbox"></asp:TextBox>

            <label><span class="style3">Card number: </span> 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
          </label>
          <asp:TextBox ID="TextBox3" runat="server" placeholder="its Digit" CssClass="inputbox"></asp:TextBox>

            <span class="style3">

          <label>CVV: 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
          </label>
            </span>
          <asp:TextBox ID="TextBox4" runat="server" placeholder="3 digit" CssClass="inputbox"></asp:TextBox>
           <span class="style3">
                    <label>Mobile: 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="*" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
          </label>
            
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Mobile NO." CssClass="inputbox"></asp:TextBox> </span>

       <span class="style3">
                    <label>Address: 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ErrorMessage="*" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
          </label>
            
          <asp:TextBox ID="TextBox6" runat="server" placeholder="Billing Address" CssClass="inputbox"></asp:TextBox> </span>

 <span class="style3">
                    <label>Pincode: 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ErrorMessage="*" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
          </label>
            
          <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Pin" CssClass="inputbox"></asp:TextBox> </span>

            <asp:Button ID="Button1" runat="server" 
                 Text="Submit" 
                onclick="Button1_Click" BackColor="Black" BorderColor="White" 
              BorderWidth="3px" ForeColor="White"  />
        <dt></dt>
        <asp:Label ID="Label9" runat="server" CssClass="labeltext"
            ></asp:Label>
        <dt></dt>
    </dl>
    </div>
    </form>
</body>
</html>
