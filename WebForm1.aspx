<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bicycle.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awasome/4,.7.0/css/font-awasome.min.css" />


    <style type="text/css">
         body{
  background-image: url('');
   background-repeat:no-repeat;
   background-attachment: fixed;
  background-size:cover;
  width:100%;height:100%;
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
    color:#555;
}
p{
    color:#0d0c0c;
}
.container{
    max-width:1500px;
    margin:auto;
    padding-left:40px;
    padding-right:40px;
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
.col-2 img{
    max-width:100%;
    padding:40px 0;
}

.col-2 h1{
    font-size:40px;
    line-height:10px;
    margin:150px 90px;
    color:#e21e1e;
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
.col-3 img{
   width:100%;
}
.col-3:hover{
    transform:translateY(-10px);
}


.small-container h3{
           display:flex;
           justify-content:center;
           margin:30px 0;
           letter-spacing:2px;
 }
  .col-4{
       width:170px;
 }
  .col-4 h4{
        overflow-wrap:break-word;
 }
   .col-4:hover{
        transform:translateY(-5px);
 }
   .col-4 img
 {
          width:160%;
          
 }
 .row2{
          display:flex;
          flex-wrap:wrap;
          justify-content:space-around;
          max-width:70%;
          margin:auto;
  }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <div class="container" >   
        <div class="navbar">
            <div class="logo">

            <img src="vivabikes_Vlogo.png" />
            </div>

            <nav>
            <ul >
            

            <li class="fa fa-home"><a href="#">&nbsp; Home</a></li> 
            <li class="fa fa-user"><a href="#">&nbsp About</a></li>
            <li class="fa fa-shopping-bag"><a href="#">&nbsp; Shop Products</a></li>
            <li class="fa fa-address-book-of"><a href="#">&nbsp; My Cart</a></li> 
            <li class="fa fa-user"><a href="#">&nbsp; Login</a></li>
            <li class="fa fa-plus-square"><a href="#">&nbsp; Register</a></li>
 </ul>
 </nav>
 </div>
             <div style="width:1110px;height:330px;">
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <asp:AdRotator ID="AdRotator1" runat="server" 
                         AdvertisementFile="~/XMLFile1.xml" BackColor="White" BorderColor="Silver" BorderStyle="Double" Height="400px" Width="1400px"/>
                     <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
                     </asp:Timer>
                    
                 </ContentTemplate>
                 </asp:UpdatePanel><br />
                 <div style="width:1401px; height:25px; background-color:Black; text-align:center; color:White;">
               &copy Online Bicycle Shop Pvt. | All rights Reserved..
               </div>
             </div>




               <div class="row">
               <div class="col-2">

               <h1>Best online mobile cover shop</h1>
               <p> we provide quality covers</p>
               <a href="#" class="btn">shop now &#8594</a>
               </div>
              
               </div>
               </div>
               </div>
              
               
                              <!...................featured Categories...................>
   <div class="small-container">
      <h3>Cover Images</h3>
      <div class="row2">
      <div class="col-4">
      <img src="model1.jpg" height="250"/>
      <h4>Iphone cover</h4>
      <p>Rs.150</p>
      <button style="width:100%;">Buy Now&nbsp;<i class="fa fa-shopping-cart"></i></button>
    </div>
   
      <div class="col-4">
      <img src="model2.jpg" width="150" height="250"/>
      <h4>Iphone cover</h4>
      <p>Rs.200</p>
      <button style="width:100%;">Buy Now&nbsp;<i class="fa fa-shopping-cart"></i></button>
    </div>

       
       <div class="col-4">
      <img src="model3.jpg" width="150" height="250"/>
      <h4>Iphone cover</h4>
      <p>Rs.230</p>
      <button style="width:100%;">Buy Now&nbsp;<i class="fa fa-shopping-cart"></i></button>
    </div>


       <div class="col-4">
      <img src="model4.jpg" width="150" height="250"/>
      <h4>Iphone cover</h4>
      <p>Rs.300</p>
      <button style="width:100%;">Buy Now&nbsp;<i class="fa fa-shopping-cart"></i></button>
    </div>

     </div>
        </div>
               
     



    </div>
    </form>
</body>
</html>
