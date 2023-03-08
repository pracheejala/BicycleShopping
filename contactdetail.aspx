<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactdetail.aspx.cs" Inherits="bicycle.contactdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="text-align: center; font-weight: 700; font-size: x-large; color: #FFFFFF; height: 92px; background-color: #000000;">
        <br />
        Contact Details Report</p>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" Height="306px" Width="685px" 
            Font-Bold="True">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name " SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="E-mail ID" 
                    SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile No." 
                    SortExpression="mobile" />
                <asp:BoundField DataField="message" HeaderText="Message" 
                    SortExpression="message" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ContactDetails]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
