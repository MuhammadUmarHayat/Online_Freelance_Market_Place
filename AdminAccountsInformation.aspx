<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAccountsInformation.aspx.cs" Inherits="Online_Freelance_Market_Place.AdminAccountsInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminConsole</title>
</head>
<link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Console| Accounts Information</h1>
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminConsole.aspx">Home</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserManagement.aspx">Ban user</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AdminAccountsInformation.aspx">Accounts</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdminResuls.aspx">Statistics</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>|
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <br />
                <table class="auto-style1">
                <tr>
                    <td>Account Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Transaction Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Retype Password</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

            
        </div>
    </form>
</body>
</html>
