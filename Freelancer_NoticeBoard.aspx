<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Freelancer_NoticeBoard.aspx.cs" Inherits="Online_Freelance_Market_Place.Freelancer_NoticeBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Freelancer Console</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #339933;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Freelancer  Console</h1>
            <strong>
            <asp:Label ID="Label10" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
            </strong>
            <hr />
            <div>

             <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/FreelancerConsole.aspx">Home</asp:HyperLink>|
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Freelancer_NoticeBoard.aspx">Notice Board</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FreelancerProfile.aspx">View Profile</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Freelancer_UploadAssignments.aspx">Assignment Management</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/FreelancerAccountInformation.aspx">Manage Account Information</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/FreelancerAddSkills.aspx">Add Skills</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>|

            </div>


            <div>
               
<h1> New Assigned Projects</h1>
<br />
                
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            </div>
            <div>
               
<h1> Submitted Projects</h1><br />

                <asp:GridView ID="GridView2" runat="server"></asp:GridView>

            </div>

        </div>
    </form>
</body>
</html>
