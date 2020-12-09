<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindelete.aspx.cs" Inherits="WebApplication2.admindelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 732px;
            width: 1300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position:absolute; top: 32px; left: 600px; height: 472px; width: 415px;" height: 381px">
    
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Product ID" style="position:absolute; top: 139px; left: 43px;" Height="45px" Width="322px" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="position:absolute; top: 194px; left: 119px; width: 235px; height: 30px;" ErrorMessage="Please enter product Id" ControlToValidate="TextBox1" ForeColor="Black" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
    
                    <asp:Button ID="Button1" runat="server" style="position:absolute; top: 342px; left: 53px; height: 47px;" OnClick="Button1_Click" Text="Delete Product" Width="311px" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" />
    
                    <asp:Label ID="Label1" runat="server" style="position:absolute; top: 265px; left: 177px;" Text="Label"></asp:Label>
    
                    <asp:Button ID="Button2" runat="server" style="position:absolute; top: 418px; left: 147px; height: 33px; width: 129px;" Text="Back" OnClick="Button2_Click" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" CausesValidation="False" />
    
    </div>
        <asp:Image ID="Image1" runat="server" style="position:absolute; top: 54px; left: 749px; height: 84px; width: 102px;" ImageUrl="~/pics/del.png" />
        <asp:Image ID="Image2" runat="server" style="position:absolute; top: 32px; left: 154px; height: 484px;" ImageUrl="~/pics/delman.jpg" />
    </form>
</body>
</html>
