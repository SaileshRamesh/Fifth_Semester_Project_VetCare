<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdetail.aspx.cs" Inherits="WebApplication2._new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 184px;
            text-align: left;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" style="position:absolute; top: 56px; left: 595px; width: 240px; height: 40px;" Text="      Pet Details" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" BorderStyle="None"></asp:Label>

        <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/logo.PNG" Style="z-index: 100;
        left: 19px; position: absolute; top: 16px; height: 103px; width: 367px;" />
        <asp:Label ID="Label2" runat="server" style="position:absolute; top: 799px; left: 526px; width: 264px;" Text="Label"></asp:Label>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/pd.jpg" Style="z-index: 100;
        left: 18px; position: absolute; top: 123px; height: 753px; width: 467px;" />
        <asp:Image ID="Image3" runat="server" ImageUrl="~/pics/pd2.jpg" Style="z-index: 100;
        left: 875px; position: absolute; top: 121px; height: 753px; width: 494px;" />

    </div>

    <table style="position:absolute; top: 124px; left: 500px; height: 773px; width: 360px;" "width: 80%; margin-top: 65px;" >
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Username" Height="40px" Width="316px" BackColor="#E4E4E4" BorderStyle="None"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Petname" Height="52px" Width="320px" BackColor="#E4E4E4" BorderStyle="None"></asp:TextBox>
                <br />
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="position:absolute; top: 168px; left: 6px; width: 214px; height: 19px; right: 140px;" ErrorMessage="Enter Pet Name" ControlToValidate="TextBox3" ForeColor="Black"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                <strong><span class="auto-style4">PET CATEGORY</span></strong><br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" style="margin-left: 0px" Width="321px">
                    <asp:ListItem>Avain</asp:ListItem>
                    <asp:ListItem>Aqua</asp:ListItem>
                    <asp:ListItem>Terretrian</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                <strong>GENDER</strong><br />
                <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="319px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Height of your pet" Height="36px" Width="312px" BackColor="#E4E4E4" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="position:absolute; top: 482px; left: 3px; width: 176px; height: 26px; right: 181px;" ErrorMessage="Enter Height" ControlToValidate="TextBox4" ForeColor="Black"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Weight of your pet" Height="39px" Width="310px" BackColor="#E4E4E4" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="position:absolute; top: 56px; left: 7px; width: 199px; height: 20px; right: 154px;" ErrorMessage="Enter UserName" ControlToValidate="TextBox2" ForeColor="Black"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="position:absolute; top: 590px; left: 3px; width: 316px; height: 27px; right: 41px;" ErrorMessage="Enter Weight" ControlToValidate="TextBox5" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            
            
        </tr>
    </table>
    
        <asp:Button ID="Button1" runat="server" style="position:absolute; top: 752px; left: 601px; height: 29px; width: 110px;" Text="SUBMIT" OnClick="Submit_Click" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" />

        <asp:ImageButton ID="ImageButton1" runat="server" style="position:absolute; top: 770px; left: 803px; height: 47px; width: 48px;" ImageUrl="~/pics/homelogo.png" ToolTip="Go back to home page" CausesValidation="False" OnClick="ImageButton1_Click" />

        <asp:Button ID="Button2" runat="server" style="position:absolute; top: 850px; left: 609px; width: 102px; height: 28px;" Text="NEXT" OnClick="Button2_Click" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" />

    </form>
    
    </body>
</html>
