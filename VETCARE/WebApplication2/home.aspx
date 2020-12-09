<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" style="position:absolute; top: 662px; left: 38px; height: 31px; width: 1416px;" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Larger" ForeColor="Black">&quot;SAVING ONE ANIMAL MAY NOT CHANGE THE WORLD BUT IT WILL SURELY CHANGE THE WORLD FOR ONE ANIMAL&quot;</asp:TextBox>
        <asp:Image ID="Image6" runat="server" style="position:absolute; top: 1745px; left: 7px; height: 405px; width: 1340px;" ImageUrl="~/pics/home1.PNG" />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1.jpg" Style="z-index: 100;
        left: 18px; position: absolute; top: 88px; width: 1302px; height: 567px; margin-right: 139px;" />
        
        <asp:Button ID="Button2" runat="server" style="position:absolute; top: 45px; left: 1091px;" Text="Admin login" OnClientClick="Button2_Click" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Underline="True" OnClick="Button2_Click1" />
        
    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/logo.PNG" Style="z-index: 100;
        left: 19px; position: absolute; top: 16px; height: 69px; width: 293px;" />
        <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>
    
        <asp:Button ID="Button1" runat="server" style="position:absolute; top: 46px; left: 1211px;" Text="Login" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="0px" Font-Bold="True" Font-Italic="False" Font-Strikeout="False" Font-Underline="True" OnClick="Button1_Click" ToolTip="This goes to login/sinup page" />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:Image ID="Image5" runat="server" style="position:absolute; top: 1374px; left: 10px; height: 373px; width: 1330px;" ImageUrl="~/pics/home2.PNG" />
    
        <asp:Image ID="Image4" runat="server" style="position:absolute; top: 1083px; left: -30px; height: 299px; width: 1379px;" ImageUrl="~/pics/home3.PNG" />
    
    </div>
        <asp:Image ID="Image3" runat="server" style="position:absolute; top: 715px; left: -13px; height: 392px; width: 1395px;" ImageUrl="~/pics/home4.PNG" />
    </form>
</body>
</html>
