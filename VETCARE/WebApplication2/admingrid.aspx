<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admingrid.aspx.cs" Inherits="WebApplication2.admingrid" %>  
  
<!DOCTYPE html>
<script runat="server">

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admindelete.aspx");
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div style="height: 363px">  
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" style="position:absolute; top: 16px; left: 508px;" Text="Delete Products" Width="233px" OnClick="Button2_Click" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="59px" />
            <asp:Button ID="Button6" runat="server" style="position:absolute; top: 15px; left: 1122px; height: 34px; width: 101px;" Text="HOME" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" OnClick="Button6_Click" />
            <asp:Button ID="Button4" runat="server" style="position:absolute; top: 17px; left: 222px; width: 224px;" OnClick="Button4_Click" Text="View appointment" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="59px" />
            <asp:Button ID="Button5" runat="server" style="position:absolute; top: 13px; left: 792px;" OnClick="Button5_Click" Text="View payments" Width="235px" BackColor="#0099CC" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="59px" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Login" Height="358px" Width="1264px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="imagedata" HeaderText="imagedata" SortExpression="imagedata" />
                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                    <asp:BoundField DataField="pcategory" HeaderText="pcategory" SortExpression="pcategory" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:ImageField DataImageUrlField="imagedata">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Login" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [id], [imagedata], [pname], [pcategory], [price] FROM [product_tb]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>  
</html>  