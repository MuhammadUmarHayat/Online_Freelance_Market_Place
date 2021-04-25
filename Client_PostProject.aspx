<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client_PostProject.aspx.cs" Inherits="Online_Freelance_Market_Place.Client_PostProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #660066;
        }
        .auto-style3 {
            color: #FF0066;
        }
        .auto-style4 {
            color: #00FF00;
            font-size: x-large;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
<h1> Post A project</h1>

<hr />


  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ClientConsole.aspx">Home </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Client_ViewProfile.aspx">view Profile </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ClientAccountInformation.aspx">Manage Account </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Client_PostProject.aspx">Post Project </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Client_ViewBids.aspx">View Bids </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout </asp:HyperLink>





            <br />
            <table class="auto-style1">
                <tr>
                    <td>User ID</td>
                    <td><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Choose category</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Programming</asp:ListItem>
                            <asp:ListItem>Networking</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                            <asp:ListItem>Computer Graphics</asp:ListItem>
                            <asp:ListItem>Arts</asp:ListItem>
                            <asp:ListItem>Gamming</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Height="18px" Width="462px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Height="117px" TextMode="MultiLine" Width="472px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td>
                        <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Total Budget</td>
                    <td>
                        <asp:TextBox ID="txtBudget" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Tools</td>
                    <td>
                        <asp:TextBox ID="txtTools" runat="server" Height="76px" TextMode="MultiLine" Width="473px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Start Date</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Due Date</td>
                    <td>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar2_SelectionChanged" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
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
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style3"></asp:Label>
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







        </div>
    </form>
</body>
</html>
