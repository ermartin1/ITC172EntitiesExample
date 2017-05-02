<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donation Page</title>
</head>
<body>
    <h1>Donation Page</h1>
    <form id="form1" runat="server">
    <div>
      <p> <asp:TextBox ID="DonateTextBox" runat="server"></asp:TextBox> </p> 
        <p>
            <asp:Button ID="SubmitButton" runat="server" Text="Button" OnClick="SubmitButton_Click" />
        </p>
    </div>
    </form>
</body>
</html>
