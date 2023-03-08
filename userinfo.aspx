<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="bicycle.userinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
        <p style="text-align: center; font-weight: 700; font-size: x-large; color: #FFFFFF; height: 74px; background-color: #000000;">
            &nbsp;User&nbsp; Details Report</p>
    </div> 
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
        SelectCommand="SELECT * FROM [newuser]"></asp:SqlDataSource>
    
    <div align="center">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" Height="349px" Width="1462px" 
            style="text-align: center" ForeColor="Black" DataKeyNames="username">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="CustmorName" 
                    SortExpression="username" ReadOnly="True" />
                <asp:BoundField DataField="password" HeaderText="Password" 
                    SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="E-mail" 
                    SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="MobileNo." 
                    SortExpression="mobile" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" 
                    SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" 
                    SortExpression="state" />
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
    <p align="center" style="text-align: center">
        &nbsp;</p>
    </div>
    </form>
</body>
</html>
