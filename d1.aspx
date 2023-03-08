<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="d1.aspx.cs" Inherits="bicycle.d1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">
       
     body 
    {
  background-image: url('back1.jpg');
   background-repeat: repeat;
   background-attachment: fixed;
  background-size:cover;
  width:100%;
}
      
        .style2
        {
            font-size: x-large;
                color: #FFFFFF;
            }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 497px;
            height: 350px;
        }
            .style5
            {
                color: #FFFFFF;
            }
        </style>
        
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
         &nbsp;<span class="style2">&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx" 
             ForeColor="White" style="font-size: large">Back</asp:HyperLink>
         </span>
    <h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <span class="style5">---- ABOUT US ----</span></b></h1>
        <div class="style3">
            <span class="style2">&nbsp;
Lars Andersen, a former cyclist from the Danish national team,<br />
&nbsp;began VIVA Bike Design in </span>
            <br class="style2" />
            <span class="style2">2006 in Copenhagen, Denmark.

Viva creates bicycles<br />
&nbsp;which are comfortable, reliable, 
            <br />
            yet stylish when cycling and navigating the 
            <br />
            urban landscape.We are a small<br />
&nbsp;but innovative company. We are passionate 
            <br />
            about the design and development </span>
            <br class="style2" />
            <span class="style2">of each bicycle. 
            <br />
            <img alt="" class="style4" src="viva.jpg" /><br />
            To achieve a cohesive design on each Viva,<br />
&nbsp;we develop most of the main</span><br class="style2" />
            <span class="style2">&nbsp;components of the bicycle such as<br />
&nbsp;fenders, chain guards, saddles, grips, cargo carriers, </span>
            <br class="style2" />
            <span class="style2">chain covers, pedals, frames and forks, ensuring 
            <br />
            high quality standards and durability.<br />
&nbsp;We at Viva are confident that bicycles are<br />
&nbsp;becoming a worldwide trend, </span>
            <br class="style2" />
            <span class="style2">not only because cycling is in fashion but also,<br />
&nbsp;due to people becoming more</span><br class="style2" />
            <span class="style2">&nbsp;environmentally conscious.

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Share our passion! Enjoy life, ride a VIVA.
            </span>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
   

    </div>
    </form>
    </div>
    </form>
</body>
</html>
