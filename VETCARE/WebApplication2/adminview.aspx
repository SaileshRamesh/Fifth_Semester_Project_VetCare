<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminview.aspx.cs" Inherits="WebApplication2.adminnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 780px;
            width: 1305px;
        }
        .auto-style6 {
            font-size: xx-large;
            font-family: "Arial Rounded MT Bold";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #44CF30">
    <div style="position:absolute; top: 18px; left: 149px; height: 646px; width: 449px; background-color: #C7FCC8;" height: 700px; width: 1298px; background-image: none;">
    
                    <asp:FileUpload ID="FileUpload1" runat="server" style="position:absolute; left: 72px; height: 27px; width: 295px; top: 81px; bottom: 538px;" BackColor="#D7D7D7" BorderStyle="None" />
    
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Product Name" style="position:absolute; top: 150px; left: 76px; height: 37px; width: 289px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="position:absolute; top: 197px; left: 80px; width: 235px; height: 30px;" ErrorMessage="Please enter product name" ControlToValidate="TextBox1" ForeColor="Black" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="position:absolute; top: 389px; left: 75px; width: 235px; height: 30px;" ErrorMessage="Please enter product price" ControlToValidate="TextBox2" ForeColor="Black" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute; top: 265px; left: 76px; height: 19px; width: 279px;" BackColor="#D7D7D7">
                        <asp:ListItem>Avian</asp:ListItem>
                        <asp:ListItem>Terretrian</asp:ListItem>
                        <asp:ListItem>Aqua</asp:ListItem>
                    </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" style="position:absolute; top: 555px; left: 147px; width: 129px; height: 26px;" OnClick="Button2_Click" Text="View my options!" BackColor="#0099CC" BorderColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" CausesValidation="False" />
    
        <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Insert Products<br />
        </span>
        <br />
        <br />
        <br />
        <br />
                    <asp:Label ID="Label2" runat="server" style="position:absolute; top: 239px; left: 81px; width: 112px;" Text="Select Category!"></asp:Label>
        <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server" style="position:absolute; top: 501px; left: 121px; width: 287px;" Text="Label"></asp:Label>
        <br />
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter the Price" style="position:absolute; top: 340px; left: 75px; width: 286px; height: 38px;" BackColor="#D7D7D7" BorderStyle="None"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                    <asp:Button ID="Button1" runat="server" style="position:absolute; top: 431px; left: 77px; height: 34px; width: 279px;" Text="Insert" OnClick="Button1_Click" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" Font-Size="Larger" ForeColor="White" />
    
    </div>
        <asp:Image ID="Image1" runat="server" style="position:absolute; top: 17px; left: 600px; height: 648px; width: 672px;" ImageUrl="~/pics/8 (2).jpg" />
    </form>
</body>
</html>
