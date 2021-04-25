<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Online_Freelance_Market_Place.UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminConsole</title>
</head>
<link href="StyleSheet1.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Console|User managment</h1>
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminConsole.aspx">Home</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserManagement.aspx">Ban user</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AdminAccountsInformation.aspx">Accounts</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdminResuls.aspx">Statistics</asp:HyperLink>|
             <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>|


        </div>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FMPFinalDB1ConnectionString %>" SelectCommand="SELECT DISTINCT [userID], [Name], [Address], [Email], [MobileNo], [userType], [status] FROM [users] WHERE ([userType] NOT LIKE '%' + @userType + '%')" UpdateCommand="update users set stats=@status">
            <SelectParameters>
                <asp:Parameter DefaultValue="admin" Name="userType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
