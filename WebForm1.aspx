<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Online_Freelance_Market_Place.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #0000CC;
            font-size: x-large;
        }
        .auto-style3 {
            color: #00FF00;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>
                Online Freelance Market Place
            </h1>
            <hr />
            <center>



                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="3"><strong><span class="auto-style3">SAQIB SHAHZAD MC190402602</span> </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Choose user type</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Client</asp:ListItem>
                                <asp:ListItem>Freelancer</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>User ID</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><strong>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationForm.aspx">Register Now</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                
            <div>
                Choose category: <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Projects" />

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



            </center>



        </div>
    </form>
</body>
</html>
