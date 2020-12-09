<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminupdate.aspx.cs" Inherits="WebApplication2.adminupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 624px">
    
        <table style="position:absolute; top: 27px; left: 353px; height: 399px; width: 431px;" width:100%;">
            <tr>
                <td>Product ID<br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="323px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    Image<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="331px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Product Name<br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Product Category<br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="320px">
                        <asp:ListItem>Avian</asp:ListItem>
                        <asp:ListItem>Terrestrial</asp:ListItem>
                        <asp:ListItem>Aqua</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Price<br />
                    <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="309px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Update" Width="119px" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
