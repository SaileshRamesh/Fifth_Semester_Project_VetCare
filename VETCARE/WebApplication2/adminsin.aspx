<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsin.aspx.cs" Inherits="WebApplication2.adminsin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            font-family: "Arial Rounded MT Bold";
        }
        .auto-style7 {
            text-align: center;
        }
        #form1 {
            height: 965px;
            width: 1321px;
        }
    </style>
</head>
<body style="height: 984px">
    <form id="form1" runat="server" style="background-color: #0099CC">
    <div style="position:absolute; top: 82px; left: 524px; height: 643px; width: 484px; background-color: #FFFFFF;" background-color: #00FFFF; height: 1001px; width: 1475px; margin-right: 14px;" class="auto-style7">
    
        <asp:Label ID="Label2" runat="server" style="position:absolute; top: 562px; left: 70px; width: 365px;" Text="Label"></asp:Label>
    
        <span class="auto-style6"><strong>Admin Sign-up</strong></span><asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" style="position:absolute; top: 92px; left: 60px; height: 33px; width: 158px; right: 262px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" style="position:absolute; top: 91px; left: 248px; height: 33px; width: 158px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
    
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Contact Number" style="position:absolute; top: 164px; left: 58px; width: 354px; height: 39px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
    
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Address" style="position:absolute; left: 59px; top: 240px; height: 39px; width: 359px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
    
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Username" style="position:absolute; top: 327px; left: 61px; height: 37px; width: 361px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
    
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Password" style="position:absolute; top: 410px; left: 62px; height: 41px; width: 353px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
    
                    <asp:Button ID="Button1" runat="server" style="position:absolute; top: 514px; left: 166px; height: 32px; right: 144px; width: 174px;" BackColor="#0099CC" BorderColor="#0099FF" BorderStyle="None" Font-Bold="True" Font-Underline="False" OnClick="Button1_Click" Text="Sign-Up"/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="position:absolute; top: 589px; left: 166px; width: 177px;" ErrorMessage="Enter 10 digit number" ControlToValidate="TextBox3" ForeColor="black" ValidationExpression="[0-9]{10}" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
        <br />
        please fill in the form to create an account!<br />
        ____________________________________________________________
        <asp:CheckBox ID="CheckBox1" runat="server" style="position:absolute; top: 474px; left: 103px;" Text="I accept the terms of Use & Privacy Policy" />
    
    </div>
    </form>
</body>
</html>
