<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="bicycle.homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body{
  background-image: url('');
   background-repeat:no-repeat;
   background-attachment: fixed;
  background-size:cover;
  width:100%;
  height:100%;
}
        *{
    margin:0;
padding:0;
box-sizing:border-box;
}
.navbar{
    display:flex;
    align-items:center;
    padding:20px;
}
nav {
    flex:1;
    text-align:right;
}
nav ul{
    display:inline-block;
    list-style-type:none;
}
nav ul li{
    display:inline-block;
    margin-right:20px;
    
}
.navbar img{
    width:117px;
            height: 79px;
        }
a
{
    text-decoration:none;
    color:black;
}
.a:hover{
    color:red;
}
.container{
    max-width:1450px;
    margin:auto;
    padding-left:50px;
    padding-right:50px;
}
p
{
    color:black;
}

.row{
    display:flex;
    align-item:center;
    flex-wrap:wrap;
    justify-content:space-around;
}
.col-2{
    flex-basic:50%;
    min-height:30px;
}

.btn{
    display:inline-block;
    background:#e21e1e;
    padding:8px 30px;
    color:#fff;
    margin:30px 0;
    border-radius:30pxl;
    transition:background 0.5s;
}
.header{
    background:radius-gradient(#fff,#3cc3d5);
}
.btn:hover{
    background:#f85f5f;
}

.row1{
     display:flex;
     flex-wrap:wrap;
     justify-content:space-around;
}
.btn:hover{
    background:#f85f5f;
}


    
        .style1
        {
            font-size: 40pt;
            text-align: center;
            color: black;
        }

    
        .style2
        {
            font-size: large;
            color: black;
        }

    
        .style3
        {
            font-weight: bold;
        }

        *, *:before, *:after {
  box-sizing: inherit;
            text-align: center;
            font-weight: 700;
        }

.column {
  float: left;
  width: 30.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}
    .container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
  text-align:center;
}
.button {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: #000;
            cursor: pointer;
            width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

    </style>
       
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">   
 
            <div class="navbar">
             <div class="logo">
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style=" text-align:right;">
          
            <nav>
            <ul>
            <li class="fa fa-home"><a href="#">&nbsp; Home</a></li> 
            <li class="fa fa-file"><a href="about2.aspx">&nbsp About</a></li>
            <li class="fa fa-address-card"><a href="contact.aspx">&nbsp; Contact Us</a></li> 
            <li class="fa fa-shopping-bag"><a href="productshop.aspx">&nbsp; Shop Products</a></li>
            <li class="fa fa-cart-arrow-down"><a href="AddToCart1.aspx">&nbsp; My Cart</a></li> 
            <li class=""><b><a href="loginuser.aspx">&nbsp;</a><asp:HyperLink ID="HyperLink2" 
                    runat="server" NavigateUrl="~/loginuser.aspx">SignOut</asp:HyperLink>
                        </b>
                        </li>
            <li class="fa fa-user"><b><a href="#"></a>
                <asp:HyperLink ID="HyperLink1" 
                    runat="server" NavigateUrl="~/loginuser.aspx">Login/Register</asp:HyperLink>
                        </b>
                        </li>
            </ul>
            </nav>
    </div>
            </div>
        </div>
        <hr />
     <div style="width:1110px;height:330px;">
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <asp:AdRotator ID="AdRotator1" runat="server" 
                         AdvertisementFile="~/XMLFile1.xml" BackColor="black" BorderColor="black" BorderStyle="Double" Height="400px" Width="1540px"/>
                     <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
                     </asp:Timer>
                    
                 </ContentTemplate>
                 </asp:UpdatePanel>
                
             </div>
         <div style="font-size:20px;
    line-height:20px; text-align:center;">
               <div>

               <br /><br /><br /><br /><br />

                   <h1 ><span class="style1">Best Bike In</span>
                       <span class="style1">The World !</span></h1><br />
               <p class="style2"> we provide quality Bike </p>
                
               <a href="productshop.aspx" class="btn">Shop Now &#8594</a>
               </div>
 
               </div>
                <div style="width:1545px; height:25px; background-color:Black; text-align:center; color:White;">
               &copy Online Bicycle Shop Pvt. | All rights Reserved..
               </div>
               </div>
               </div>
            <div class="row">
  <div class="column">
    <div class="card">
      <img src="model81.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Mode  Elegance 220D</h2>
       <br />
       
        <p>
            <asp:Button ID="Button1" runat="server" Text="View More" class="button" onclick="Button1_Click" /></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="model6.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Model  Elegance 320D</h2>
       <br />
        <p> <asp:Button ID="Button2" runat="server" Text="View More" class="button" onclick="Button1_Click" /></p>
      </div>
    </div><b></b>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="model7.jpg" alt="Mike" style="width:100%">
      <div class="container">
       
       
        <h2>Model  cruiser 420D 25 inch</h2>
        <br />
        <p> <asp:Button ID="Button3" runat="server" Text="View More" class="button" onclick="Button1_Click" /></p>
      </div>
    </div>
  </div>
  
</div>
              

    </form>
</body>
</html>
