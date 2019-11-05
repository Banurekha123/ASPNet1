<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servercontrols.aspx.cs" Inherits="ASPNet1.Servercontrols" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            City : &nbsp;&nbsp;<asp:DropDownList ID="City" runat="server">
            </asp:DropDownList><br /><br />
            Gender : &nbsp;Male : &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" />
          Female : &nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" />
           <br /><br />
            Name : &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp; :&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
