<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="ASPNet1.CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function IsEven(source, args) {
            if (args.Value == "") {
                args.IsValid = false;
            }
            else
                if (args.Value % 2 == 0) {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;

                }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter a Positive Number :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" 
                ForeColor="Red"
                ErrorMessage="Please enter a Positive Number" OnServerValidate="CustomValidator1_ServerValidate"
                ClientValidationFunction="IsEven"
                ValidateEmptyText="True"></asp:CustomValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
