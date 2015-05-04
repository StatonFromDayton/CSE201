<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RequestedApps.aspx.vb" Inherits="RequestedApps" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Requested Apps Page</title>
    <link href="style.css"" rel="Stylesheet" type = "text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 align="center"> Requested Applications </h1>
    </div>

<ul>
  <li><a href="Landing.aspx">Home Page</a></li>
  <li><a href="Login.aspx">Login Page</a></li>
  <li><a href="Search.aspx">Search Page</a></li>
  <li><a href="Forum.aspx">Forum Page</a></li>
  <li><a href="Request.aspx">Request App Page</a></li>
  <li><a href="RequestedApps.aspx">Requested Apps Page</a></li>
</ul>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="AppID" DataSourceID="AccessDataSource1" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="AppID" HeaderText="AppID" InsertVisible="False" 
                ReadOnly="True" SortExpression="AppID" />
            <asp:BoundField DataField="AppName" HeaderText="AppName" 
                SortExpression="AppName" />
            <asp:BoundField DataField="AppDescription" HeaderText="AppDescription" 
                SortExpression="AppDescription" />
            <asp:BoundField DataField="AppDevelopers" HeaderText="AppDevelopers" 
                SortExpression="AppDevelopers" />
            <asp:BoundField DataField="AppPicture" HeaderText="AppPicture" 
                SortExpression="AppPicture" />
            <asp:CommandField ShowDeleteButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/CSE201_Project.accdb" 
        DeleteCommand="DELETE FROM [Request] WHERE [AppID] = ?" 
        InsertCommand="INSERT INTO [Request] ([AppID], [AppName], [AppDescription], [AppDevelopers], [AppPicture]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Request]" 
        UpdateCommand="UPDATE [Request] SET [AppName] = ?, [AppDescription] = ?, [AppDevelopers] = ?, [AppPicture] = ? WHERE [AppID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="AppID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AppID" Type="Int32" />
            <asp:Parameter Name="AppName" Type="String" />
            <asp:Parameter Name="AppDescription" Type="String" />
            <asp:Parameter Name="AppDevelopers" Type="String" />
            <asp:Parameter Name="AppPicture" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AppName" Type="String" />
            <asp:Parameter Name="AppDescription" Type="String" />
            <asp:Parameter Name="AppDevelopers" Type="String" />
            <asp:Parameter Name="AppPicture" Type="String" />
            <asp:Parameter Name="AppID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </form>
</body>
</html>
