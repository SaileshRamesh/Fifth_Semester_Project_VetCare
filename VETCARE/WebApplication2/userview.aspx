<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userview.aspx.cs" Inherits="WebApplication2.userview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1136px">
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="uservw" Height="237px" Width="1266px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="imagedata" HeaderText="imagedata" SortExpression="imagedata" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                <asp:BoundField DataField="pcategory" HeaderText="pcategory" SortExpression="pcategory" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:ImageField DataImageUrlField="imagedata">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="uservw" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [id], [imagedata], [pname], [pcategory], [price] FROM [product_tb]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="509px" style="margin-top: 0px" BackColor="White" BorderColor="White">
            <table style="position:absolute; top: 1360px; left: 525px; height: 240px; width: 271px;" width:100%;">
                <tr>
                    <td>Product ID<br />
                        <asp:TextBox ID="TextBox5" runat="server" Height="49px" Width="261px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Please enter product id" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Button ID="Button5" runat="server" Height="35px" Text="Proceed to Pay" Width="218px" OnClick="Button5_Click" BackColor="Lime" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" style="position:absolute; top: 1299px; left: 461px; height: 48px; width: 391px;" Text="Buy Products" OnClick="Button4_Click" BackColor="Lime" Font-Bold="True" Font-Italic="False" ForeColor="White" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
