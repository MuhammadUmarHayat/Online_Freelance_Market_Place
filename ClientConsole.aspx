<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientConsole.aspx.cs" Inherits="Online_Freelance_Market_Place.ClientConsole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ClientConsole</title>
    <style type="text/css">
        .auto-style1 {
            color: #00FF00;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Client  Console</h1>
            Wellcome 
                <strong> 
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>

                     
            </strong>

                     
            <hr />

              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ClientConsole.aspx">Home </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Client_ViewProfile.aspx">view Profile </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ClientAccountInformation.aspx">Manage Account </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Client_PostProject.aspx">Post Project </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Client_ViewBids.aspx">View Bids </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout </asp:HyperLink>




        </div>
    </form>
</body>
</html>
