<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegnForm.aspx.cs" Inherits="ASPNet1.RegnForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Name Cannot be Blank"></asp:RequiredFieldValidator>
        </div>
       <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
        <p>
           <asp:Label ID="Label3" runat="server" Text="Confirm Password :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Confirm Password does not match the Password"></asp:CompareValidator>
        </p>
         <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Age should be between 18 and 35 " MaximumValue="35" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Email :"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Email does not confirm to standards" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    </form>
</body>
</html>
