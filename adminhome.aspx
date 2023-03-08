<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="bicycle.adminhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #000000;
            background-color: #FFFFFF;
        }
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body bgcolor=black>
    <form id="form1" runat="server">
    <div>
    <div>
    <h1 class="style1"> Welcome Admin</h1>
    </div>
    <div style="width:1110px;height:295px;">
         
          <ContentTemplate>
              <asp:Image ID="Image1" runat="server" Height="289px" ImageUrl="~/admin.jpg" 
                  Width="1500px" BorderColor="Black" BorderWidth="4px" />
          </ContentTemplate>
       
    </div>
    <br />
    <div style="text-align: center; background-color: #000000;">
        <asp:Button ID="Button1" runat="server" Text="Add Product" Height="51px" 
            Width="193px" onclick="Button1_Click" 
            style="font-weight: 700; background-color: #FFFFFF" />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update Product" Height="51px" 
            Width="211px" style="font-weight: 700" onclick="Button2_Click" />
    </div>
    <div>
     <h2 class="style1"> Reports</h2>
    </div>
    </div>
    
    <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="64px" 
        onclick="Button3_Click" Text="Order Detail" Width="226px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Height="65px" onclick="Button4_Click" 
        Text="Cart Details" Width="245px" style="font-weight: 700" />
    <br />
    <br />
    <asp:Button ID="Button5" runat="server" Height="65px" onclick="Button5_Click" 
        style="font-weight: 700" Text="Contact Details" Width="221px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" Height="65px" onclick="Button6_Click" 
        style="font-weight: 700" Text="Product Details" Width="247px" />
    <br />
    <br />
    <asp:Button ID="Button7" runat="server" Height="56px" onclick="Button7_Click" 
        style="font-weight: 700" Text="User INFO" Width="222px" />
    <br />
    <br />
    <hr />
    <br />
    </form>
</body>
</html>
