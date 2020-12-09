<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminapntview.aspx.cs" Inherits="WebApplication2.adminapntview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 487px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="app_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="172px" style="text-align: center" Width="1302px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="app_id" HeaderText="app_id" InsertVisible="False" ReadOnly="True" SortExpression="app_id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [app_id], [username], [phone], [date], [time], [reason] FROM [appoint]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
