<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client_ViewBids.aspx.cs" Inherits="Online_Freelance_Market_Place.Client_ViewBids" %>

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
            font-size: large;
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
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>

                     
            </strong>

                     
            <hr />
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ClientConsole.aspx">Home </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Client_ViewProfile.aspx">view Profile </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ClientAccountInformation.aspx">Manage Account </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Client_PostProject.aspx">Post Project </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Client_ViewBids.aspx">View Bids </asp:HyperLink>|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout </asp:HyperLink>

            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td>Choose your project</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View bids" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>

                        <asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"

            Width="600px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound1" UseAccessibleHeader="True" DataKeyField="title" OnItemCommand="DataList1_ItemCommand">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

               Bids on Your Projects 

            </HeaderTemplate>


    <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate>

                                 <b>Project Title :</b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("ProjectID") %>'></asp:Label>
<br />
<b>Photo :</b>

              <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "photo") %>' style="padding-left:40px"/><br />
<br />

<b>FreelancerID :</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("FreelancerID") %>'></asp:Label>
<br />
 <b>BID :</b>

                <asp:Label ID="Label8" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
<br />
    <b>Offered By :</b>

                <asp:Label ID="Label9" runat="server" Text='<%# Bind("ClientID") %>'></asp:Label>
<br />
       <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("FreelancerID")%>' CommandName="viewProfile" Height="50px" Width="50px"  ImageUrl="~/images/profile.jpg"  />
                                
                       
 

                                 <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("FreelancerID")%>' CommandName="assignProject" Height="50px" Width="50px"  ImageUrl="~/images/Assign.jpg"  />
                                 <br />


                             </ItemTemplate> 




                </asp:DataList>




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
    </form>
</body>
</html>
