<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Log In</h1>
        <table>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox> </td>
            </tr>
             <tr>
                 <td>Password</td>
                 <td>
                     <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox></td>
             </tr>
            <tr> 
            <td>
                <asp:Button ID="LoginButton" runat="server" Text="Button" OnClick="LoginButton_Click" />
            </td>
            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Register.aspx" OnClick="LinkButton1_Click">Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>
