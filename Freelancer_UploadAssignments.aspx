<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Freelancer_UploadAssignments.aspx.cs" Inherits="Online_Freelance_Market_Place.Freelancer_UploadAssignments" %>

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
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
            </strong>
            <hr />
            <div>

            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FreelancerConsole.aspx">Home</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FreelancerProfile.aspx">View Profile</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Freelancer_UploadAssignments.aspx">Assignment Management</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/FreelancerAccountInformation.aspx">Manage Account Information</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/FreelancerAddSkills.aspx">Add Skills</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>|

            </div>


            <div>
               



                





                <table class="w-100">
                    <tr>
                        <td>Project Title</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>File Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Select File</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblInfo" runat="server" style="color: #FF99FF" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
               



                





            </div>


        </div>
    </form>
</body>
</html>
