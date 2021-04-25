<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownloadTest1.aspx.cs" Inherits="Online_Freelance_Market_Place.DownloadTest1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>ASP.NET Uploading and Downloading Files</title>
<link href="bootstrap.min.css" rel="stylesheet" />

<style>
.mytable {
width: 50%;
margin: 10px;
}

body {
padding: 5px;
}
</style>
</head>
    <body>
<form id="form1" runat="server">
<div>
<h2>ASP.NET - Uploading and Downloading files</h2>
<table class="table table-condensed mytable">
<tr>
<td>File Name:
</td>
<td>
<asp:TextBox runat="server" ID="txtFileName" Width="150" />
</td>
</tr>
<tr>
<td>Select File:
</td>
<td>
<asp:FileUpload runat="server" ID="fileupload1" />
</td>
</tr>
<tr>
<td colspan="2">
    <asp:Button runat="server" ID="btnUpload" OnClick="btnUpload_Click" Text="Submit" CssClass="btn btn-success" />
</td>
</tr>
</table>
<asp:Label runat="server" ID="lblInfo" />
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
    </form>
</body>
</html>