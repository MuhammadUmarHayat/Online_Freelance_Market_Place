<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminConsole.aspx.cs" Inherits="Online_Freelance_Market_Place.AdminConsole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminConsole</title>
</head>
<link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Console</h1>
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminConsole.aspx">Home</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserManagement.aspx">Ban user</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AdminAccountsInformation.aspx">Accounts</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdminResuls.aspx">Statistics</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>|
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
