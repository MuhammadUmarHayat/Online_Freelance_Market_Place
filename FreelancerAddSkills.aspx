<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FreelancerAddSkills.aspx.cs" Inherits="Online_Freelance_Market_Place.FreelancerAddSkills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            font-size: x-large;
            color: #339933;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
<h1>Freelancer  Console: Add your Skills</h1>
            <asp:Label ID="Label10" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
            <hr />
            <div>

            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FreelancerConsole.aspx">Home</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FreelancerProfile.aspx">View Profile</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Freelancer_UploadAssignments.aspx">Assignment Management</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/FreelancerAccountInformation.aspx">Manage Account Information</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/FreelancerAddSkills.aspx">Add Skills</asp:HyperLink>|
                  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>|

                <br />
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>Skill name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Experience </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Details</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
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
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
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
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />

            </div>



        </div>
    </form>
</body>
</html>
