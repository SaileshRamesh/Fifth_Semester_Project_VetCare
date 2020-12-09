<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appoint.aspx.cs" Inherits="WebApplication2.appoint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 901px">
    <form id="form1" runat="server">
    <div style="height: 886px; width: 1307px;">
    
        <asp:Panel ID="Panel1" runat="server" style="position:absolute; top: 34px; left: 644px; width: 445px; height: 765px;" BackColor="#CCFFFF" BorderColor="#0033CC" BorderStyle="Solid" ForeColor="#00CCFF">
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Username" style="position:absolute; top: 49px; left: 82px;" Height="50px" Width="255px" BorderStyle="None"></asp:TextBox>
          
            <asp:TextBox ID="TextBox8" placeholder="Phone Number" style="position:absolute; top: 158px; left: 87px;" runat="server" Height="50px" Width="255px" BorderStyle="None"></asp:TextBox>
          
            <asp:TextBox ID="TextBox9" runat="server" placeholder="Reason To Visit" style="position:absolute; top: 568px; left: 97px;" Height="50px" Width="255px" BorderStyle="None"></asp:TextBox>
          
            <asp:Calendar ID="Calendar1" runat="server" style="position:absolute; top: 262px; left: 93px;" ForeColor="#3366CC"></asp:Calendar>
          
            <asp:Label ID="Label4" runat="server" style="position:absolute; top: 237px; left: 94px; width: 86px;" Text="Date To Visit" ForeColor="#3366CC"></asp:Label>
          
            <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute; top: 496px; left: 95px; width: 265px; height: 27px;">
                <asp:ListItem>10am</asp:ListItem>
                <asp:ListItem>11am</asp:ListItem>
                <asp:ListItem>12pm</asp:ListItem>
                <asp:ListItem>3pm</asp:ListItem>
                <asp:ListItem>4pm</asp:ListItem>
                <asp:ListItem>5pm</asp:ListItem>
                <asp:ListItem>6pm</asp:ListItem>
            </asp:DropDownList>
          
            <asp:Button ID="Button1" runat="server" style="position:absolute; top: 690px; left: 152px;" Height="32px" OnClick="Button1_Click" Text="Submit" Width="140px" BackColor="#3366CC" BorderStyle="None" ForeColor="White" />
          
            <asp:Label ID="Label1" runat="server" style="position:absolute; top: 658px; left: 96px; width: 279px;" Text="Label" ForeColor="#3366CC"></asp:Label>
          
            <asp:Button ID="Button2" runat="server" style="position:absolute; top: 729px; left: 151px; width: 141px; height: 26px;" OnClick="Button2_Click" Text="Next" BackColor="#3366CC" BorderStyle="None" ForeColor="White" />
          
            <asp:CustomValidator ID="CustomValidator1" runat="server" style="position:absolute; top: 692px; left: 301px; width: 133px; height: 60px;" ErrorMessage="Please Enter all the details" ForeColor="#0066CC" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
          
        </asp:Panel>
    
        <asp:Image ID="Image1" runat="server" style="position:absolute; top: 37px; left: 10px; height: 767px;" ImageUrl="~/pics/app.PNG" Width="629px" />
    
    </div>
    </form>
</body>
</html>
