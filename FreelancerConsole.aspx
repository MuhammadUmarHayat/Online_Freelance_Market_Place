<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FreelancerConsole.aspx.cs" Inherits="Online_Freelance_Market_Place.FreelancerConsole" %>

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
                Choose category: <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Projects" />

<asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"

            Width="600px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound1" UseAccessibleHeader="True" DataKeyField="title" OnItemCommand="DataList1_ItemCommand">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                Our Projects 

            </HeaderTemplate>


    <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate>

                                 <b>Title :</b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("title") %>'></asp:Label>
<br />
<b>Category :</b>

                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
<br />

<b>Description :</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
<br />
 <b>Tools :</b>

                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Tools") %>'></asp:Label>
<br />
    <b>Offered By :</b>

                <asp:Label ID="Label9" runat="server" Text='<%# Bind("ClientID") %>'></asp:Label>
<br />
                            
<b>Budeget :</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Budget") %>'></asp:Label>
<br />

<b>Duration :</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Duration") %>'></asp:Label>
<br />
 <b>Bid Opening Date :</b>

                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Start_Date") %>'></asp:Label>
<br />
<b>Closing Date :</b>

                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Due_Date") %>'></asp:Label>
<br />
<b>Status :</b>

                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
<br />
<b>Enter Your bid here  :</b>
                                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 <br />

                                 <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("title")%>' CommandName="bidNow" Height="50px" Width="50px"  ImageUrl="~/images/bidNow1.jpg"  />
                                 <br />


                             </ItemTemplate> 




                </asp:DataList>

            </div>


        </div>
    </form>
</body>
</html>
