<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewProfile.aspx.cs" Inherits="Online_Freelance_Market_Place.viewProfile" %>

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

        
                        <asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="5" RepeatDirection="Horizontal"

            Width="600px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound1" UseAccessibleHeader="True" DataKeyField="title" OnItemCommand="DataList1_ItemCommand">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

               Bids on Your Projects 

            </HeaderTemplate>


    <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate>

                                 <b>User ID :</b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
<br />
<b>Photo :</b>

              <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "photo") %>' style="padding-left:40px"/><br />
<br />

<b>Name :</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
<br />
 <b>Email :</b>

                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Email ") %>'></asp:Label>
<br />
    <b>Mobile Number :</b>

                <asp:Label ID="Label9" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
<br />
      

                             </ItemTemplate> 




                </asp:DataList>








        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />








    </form>
</body>
</html>
