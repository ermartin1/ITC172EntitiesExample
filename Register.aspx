<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <h1>Register</h1>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
        <td>Last Name</td>
        <td>
            <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Last Name is Required" ControlToValidate="LastNameTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>
        <tr>
            <td>First Name</td>
        <td>
            <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="First Name is Required" ControlToValidate="FirstNameTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>
        <tr>
            <td>Email</td>
        <td>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Email is Required" ControlToValidate="EmailTextBox">
             </asp:RequiredFieldValidator>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invalid Email" ControlToValidate="EmailTextBox" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
        </asp:RegularExpressionValidator></td>
    </tr>
 
     <tr>
    <td>Password</td>
        <td>
        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
               </td>
                <td>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator4" 
                        runat="server" 
                        ErrorMessage="Password Required"  
                        ControlToValidate="PasswordTextBox">

                    </asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="ConfirmTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                     <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator5" 
                        runat="server" 
                        ErrorMessage="Confirm Password Required"  
                        ControlToValidate="ConfirmTextBox">

                    </asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:CompareValidator 
                        ID="CompareValidator1" 
                        runat="server" 
                        ErrorMessage="Passwords don't match"
                        ControlToValidate="ConfirmTextBox"
                        ControlToCompare="PasswordTextBox">

                    </asp:CompareValidator></td>
            </tr>
 
     <tr>
            <td>House Number</td>
        <td>
            <asp:TextBox ID="HouseNumTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="House Number is Required" ControlToValidate="HouseNumTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>  
    
        <tr>
            <td>Street Name</td>
        <td>
            <asp:TextBox ID="StreetTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Street is Required" ControlToValidate="StreetNameTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>
     <tr>
            <td>City</td>
        <td>
            <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="City is Required" ControlToValidate="CityTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>
    
     <tr>
            <td>State</td>
        <td>
            <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="State is Required" ControlToValidate="StateTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>

         <tr>
            <td>Zip Code</td>
        <td>
            <asp:TextBox ID="ZipCodeTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="ZipCode is Required" ControlToValidate="ZipCodeTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>

     <tr>
            <td>Home Phone</td>
        <td>
            <asp:TextBox ID="HomePhoneTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="Home Phone is Required" ControlToValidate="HomePhoneTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>

  <tr>
            <td>Work Phone</td>
        <td>
            <asp:TextBox ID="WorkPhoneTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ErrorMessage="Work Phone is Required" ControlToValidate="WorkPhoneTextBox">
            </asp:RequiredFieldValidator></td>
    </tr>
            </tr>
              <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                </td>
                <td></td>
            </tr>

    </table>
    </div>
    </form>
</body>
</html>
