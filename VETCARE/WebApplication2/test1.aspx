<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="WebApplication2.test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <centre>
            <h1>Products</h1>
            <hr  />
            <asp:DataList ID="DataList1" runat="server" ReapeatColumns="0" CellPadding="0" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table style="display:block;">
                    <tr>
                        <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("imagedata") %>' Height="300" Width="300"></asp:Image></td>
                    </tr>
                    <tr>
                        <!--<td>Product ID</td>-->
                        <br />
                        <td><%#Eval("id") %></td>
                        
                    </tr>
                     <tr>
                        <!--<td>Product Name ID</td>-->
                        <br />
                        <td><%#Eval("pname") %></td>
                        
                    </tr>
                     <tr>
                        <!--<td>Product Category</td>-->
                        <br />
                        <td><%#Eval("pcategory") %></td>
                        
                    </tr>
                     <tr>
                        <!--<td>Price</td>-->
                        <br />
                        <td><%#Eval("price") %></td>
                        
                    </tr>
                    <hr />
                    
                </table>
            </ItemTemplate>
            </asp:DataList>
        </centre>
    
    </div>
    </form>
</body>
</html>
