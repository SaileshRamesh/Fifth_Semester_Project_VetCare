<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sinup.aspx.cs" Inherits="WebApplication2.sinup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 971px;
            width: 1853px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position:absolute; top: 19px; left: 455px; height: 915px; width: 500px;" height: 373px">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/pics/logo.PNG" Style="z-index: 100;
        left: -438px; position: absolute; top: -4px; height: 69px; width: 293px;" />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Username" style="position:absolute; top: 354px; left: 85px; height: 44px; width: 349px;" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" style="position:absolute; top: 10px; left: 142px; width: 222px; text-align: center; font-size: xx-large;" Text="Sign-Up User" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" style="position:absolute; top: 90px; left: 84px; width: 150px; height: 44px; right: 262px;" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" style="position:absolute; top: 89px; height: 47px; width: 155px; right: 62px;" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        &nbsp;<asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm Password" Textmode="Password" style="position:absolute; top: 631px; left: 85px; height: 40px; width: 353px;" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Password" Textmode="Password" style="position:absolute; top: 539px; left: 86px; height: 49px; width: 351px;" ValidationGroup="TextBox6" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="position:absolute; top: 719px; left: 172px; width: 191px; height: 31px;" Text="Submit" OnClick="Button1_Click" Font-Bold="True" ForeColor="White" BackColor="#0099CC" />
        <asp:Label ID="Label11" runat="server" style="position:absolute; top: 760px; left: 55px; width: 426px;"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter your address" style="position:absolute; top: 251px; left: 83px; height: 53px; width: 352px;" TextMode="MultiLine" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="position:absolute; top: 140px; left: 87px; width: 76px; height: 19px; right: 337px;" ErrorMessage="First Name" ControlToValidate="TextBox1" ForeColor="Black"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  style="position:absolute; top: 143px; left: 282px; width: 77px;" ErrorMessage="Last Name" ControlToValidate="TextBox2" ForeColor="Black" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="position:absolute; top: 404px; left: 85px; width: 97px; height: 23px;" ErrorMessage="Username" ControlToValidate="TextBox8" ForeColor="Black" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" style="position:absolute; top: 600px; left: 91px; height: 24px; width: 74px;" ErrorMessage="No match" ControlToCompare="TextBox6" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Black"></asp:CompareValidator>
        <asp:Label ID="Label12" runat="server" style="position:absolute; top: 49px; left: 124px; width: 287px;" Text="Please fill in this form to create an account"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" placeholder="Username" style="position:absolute; top: 354px; left: 85px; height: 44px; width: 349px;" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" placeholder="EmailId" style="position:absolute; top: 455px; left: 89px; height: 50px; width: 344px;" BackColor="#E0E0E0" BorderStyle="None"></asp:TextBox>
    </div>
        
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="position:absolute; top: 228px; left: 538px; width: 146px; bottom: 167px;" ErrorMessage="Enter valid number" ControlToValidate="TextBox3" ForeColor="Black" ValidationExpression="[0-9]{10}" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
            <asp:ImageButton ID="ImageButton1" runat="server" style="position:absolute; top: 826px; left: 686px; height: 47px; width: 48px;" ImageUrl="~/pics/homelogo.png" OnClick="ImageButton1_Click" ToolTip="Go back to home page" CausesValidation="False" />
        
      
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Contact" style="position:absolute; top: 193px; left: 538px; right: 168px; height: 31px; width:353px; bottom: 281px;" BackColor="#E1E1E1" BorderStyle="None"></asp:TextBox>

    </form>
</body>
</html>
