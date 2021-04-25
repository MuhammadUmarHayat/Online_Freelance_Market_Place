<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Online_Freelance_Market_Place.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout</title>
</head>
<link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Logout...</h1>
            You are successfully logged out. to login again <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx"> Click Here</asp:HyperLink>
        </div>
    </form>
</body>
</html>
