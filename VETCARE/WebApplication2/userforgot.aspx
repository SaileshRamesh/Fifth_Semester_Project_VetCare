<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userforgot.aspx.cs" Inherits="WebApplication2.userforgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 525px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            Enter Your Register Email Id<asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            <asp:Button ID="ButPwd" runat="server" Text="Get Your Password" OnClick="ButPwd_Click1"></asp:Button>
            <asp:Label ID="Labmsg" runat="server" Text="Label"></asp:Label>
        </center>
    
    </div>
    </form>
</body>
</html>
