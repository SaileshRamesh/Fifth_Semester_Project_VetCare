<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="WebApplication2.bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 854px; width: 1538px;">
    
        <asp:Panel ID="Panel1" runat="server" style="position:absolute; top: 59px; left: 599px; height: 793px; width: 627px;" BackColor="#003366">
            <asp:TextBox ID="TextBox10" runat="server" style="position:absolute; top: 59px; left: 81px; height: 47px; width: 270px;" BorderStyle="None"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" style="position:absolute; top: 173px; left: 83px; height: 44px; width: 264px;" BorderStyle="None"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" style="position:absolute; top: 269px; left: 81px; height: 49px; width: 279px;" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4"><strong>Product ID</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style4">&nbsp;&nbsp;<strong> Product Name</strong></span><br />
            <br />
            <asp:TextBox ID="TextBox7" runat="server" style="position:absolute; top: 365px; left: 83px; height: 41px; width: 274px;" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style4">Product Category<asp:CustomValidator ID="CustomValidator1" runat="server" style="position:absolute; top: 710px; left: 101px; width: 275px;" ErrorMessage="Please enter all details!" Font-Bold="True" ForeColor="White" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </span><br class="auto-style4" /> </strong>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute; top: 462px; left: 85px; height: 19px; width: 278px;">
                <asp:ListItem>Credit Card</asp:ListItem>
                <asp:ListItem>Debit Card</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style4"><strong>&nbsp;&nbsp; Price</strong></span><br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox9" runat="server" placeholder="Password" style="position:absolute; top: 602px; left: 86px; height: 36px; width: 281px;" BorderStyle="None"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" style="position:absolute; top: 449px; left: 384px;" ImageUrl="~/pics/payment (2).jpg" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4"><strong>Card type</strong></span><br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox8" runat="server" placeholder="Card Number" style="position:absolute; top: 520px; left: 85px; height: 38px; width: 273px;"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" style="position:absolute; top: 667px; left: 83px; height: 33px; width: 131px;" OnClick="Button1_Click" Text="PAY" BackColor="Lime" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
            <asp:Label ID="Label1" runat="server" style="position:absolute; top: 670px; left: 234px; width: 176px; height: 34px;" Text="Label" ForeColor="White"></asp:Label>
            <asp:Button ID="Button2" runat="server" style="position:absolute; top: 744px; left: 181px; height: 33px; width: 106px;" OnClick="Button2_Click" Text="Home" />
        </asp:Panel>
    
        <asp:Image ID="Image2" runat="server" style="position:absolute; top: 57px; left: 10px; height: 659px; width: 584px;" ImageUrl="~/pics/pay.jpg"/>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="position:absolute; top: 630px; left: 751px; width: 165px;" ErrorMessage="Enter 16 digit number" ControlToValidate="TextBox8" ForeColor="White" ValidationExpression="[0-9]{16}" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
    </div>
    </form>
</body>
</html>
