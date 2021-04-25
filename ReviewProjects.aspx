<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewProjects.aspx.cs" Inherits="Online_Freelance_Market_Place.ReviewProjects" %>

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

<div>


    <asp:GridView runat="server" ID="gridviewFiles" UseAccessibleHeader="true" CssClass="table table-hover table-condensed mytable" AutoGenerateColumns="false">
<Columns>


    <asp:BoundField HeaderText="Id" DataField="Id" />
<asp:BoundField HeaderText="Project Title" DataField="projectTitle" />
<asp:BoundField HeaderText="Freelancer ID" DataField="fId" />

<asp:BoundField HeaderText="File name" DataField="FileName" />





<asp:TemplateField HeaderText="File">
<ItemTemplate>
<asp:LinkButton runat="server" Text='<%# Eval("FilePath") %>'
OnClick="FileDownload_Clicked"/>
</ItemTemplate>
</asp:TemplateField>

   
</Columns>
</asp:GridView>

</div>
<div>



<h1>
    Add your review Here

</h1>
<br />


    <table class="w-100">
        <tr>
            <td>Select Project Title</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mark</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Failed</asp:ListItem>
                    <asp:ListItem>NeedImprovements</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="149px" TextMode="MultiLine" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Stars</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Rank</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
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
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" style="color: #FF66FF; font-weight: 700"></asp:Label>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</div>
        </div>
    </form>
</body>
</html>
