<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Request.aspx.vb" Inherits="Request" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<!DOCTYPE html>
<head>
<link href="style.css"" rel="Stylesheet" type = "text/css" />
    <style type="text/css">
        #form1
        {
            height: 528px;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">


<h1 align="center"> Request an App</h1>
<!--<div id="se">
	<input type="search" name="mysearch" placeholder="Search...">
</div>-->
<ul>
  <li><a href="Landing.aspx">Home Page</a></li>
  <li><a href="Search.aspx">Search Page</a></li>
  <li><a href="Login.aspx">Login Page</a></li>
  <li><a href="Default.aspx"> Requested Apps</a></li>
</ul>
<div id = "request">
        <p>
            <strong>Please insert the information for your application</strong></p>
        <p>
            App Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
            <asp:TextBox ID="NameText" runat="server" Height="25px" Width="250px"></asp:TextBox>&nbsp;</p>
        <p>
            Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:TextBox ID="DescriptionText" runat="server" Height="25px" Width="253px"></asp:TextBox></p>
        <p>
        App Developer:&nbsp;       
            <asp:TextBox ID="DeveloperText" runat="server" 
                Height="25px" Width="253px"></asp:TextBox></p>
<p>
        Image 
        URL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
        <asp:TextBox ID="ImageText" runat="server" 
                Height="25px" Width="253px"></asp:TextBox>
    
       
</p>

        <asp:Button ID="Submit" runat="server" Text="Submit" />
</div>

        <br />
        <br />
    <br />
        
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/CSE201_Project.accdb" 
        DeleteCommand="DELETE FROM [Request] WHERE [AppID] = ?" 
        InsertCommand="INSERT INTO [Request] ([AppName], [AppDescription], [AppDevelopers], [AppPicture]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Request]" 
        UpdateCommand="UPDATE [Request] SET [AppName] = ?, [AppDescription] = ?, [AppDevelopers] = ?, [AppPicture] = ? WHERE [AppID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="AppID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="NameText" Name="AppName" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="DescriptionText" Name="AppDescription" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DeveloperText" Name="AppDevelopers" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ImageText" Name="AppPicture" 
                PropertyName="Text" Type="String" />
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