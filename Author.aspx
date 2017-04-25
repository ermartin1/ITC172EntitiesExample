<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Author.aspx.cs" Inherits="AuthorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Author</title>
</head>
<body>
    <h1>Add Author</h1>
    <form id="form1" runat="server">
    <div>
    <p>Author Name <asp:TextBox ID="AuthorTextBox" runat="server"></asp:TextBox></p>
        <p>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" style="height: 26px" /></p>
    </div>
    </form>
</body>
</html>
