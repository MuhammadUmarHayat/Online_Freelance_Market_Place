<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientAccountInformation.aspx.cs" Inherits="Online_Freelance_Market_Place.ClientAccountInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client account Information</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #660066;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Client Account Information </h1>
            <strong>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
            </strong>
        <hr />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ClientConsole.aspx">Home </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Client_ViewProfile.aspx">view Profile </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ClientAccountInformation.aspx">Manage Account </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Client_PostProject.aspx">Post Project </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Client_ViewBids.aspx">View Bids </asp:HyperLink>|
             <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Client_ViewBids.aspx">Review Projects </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout </asp:HyperLink>

        
        
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
            <br />
            <br />
            <br />

        
        
        
        </div>
    </form>
</body>
</html>
