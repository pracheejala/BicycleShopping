<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartdetail.aspx.cs" Inherits="bicycle.cartdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <div>
        <p style="text-align: center; font-weight: 700; font-size: x-large; color: #FFFFFF; height: 74px; background-color: #000000;">
            &nbsp;Payment Details Report</p>
    </div> 
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" Height="349px" Width="862px" 
            style="text-align: center" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="FirstName" 
                    SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="LastName" 
                    SortExpression="lname" />
                <asp:BoundField DataField="cardno" HeaderText="CardNo" 
                    SortExpression="cardno" />
                <asp:BoundField DataField="cvv" HeaderText="CVV" SortExpression="cvv" />
                <asp:BoundField DataField="billingaddress" HeaderText="Address" 
                    SortExpression="billingaddress" />
                <asp:BoundField DataField="mobile" HeaderText="MobileNo." 
                    SortExpression="mobile" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                    SortExpression="pincode" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [CardDetail]"></asp:SqlDataSource>
    </form>
    <p align="center" style="text-align: center">
        &nbsp;</p>
</body>
</html>
