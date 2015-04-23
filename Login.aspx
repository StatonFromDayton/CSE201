<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="style.css"" rel="Stylesheet" type = "text/css" />
</head>
<body>

    <form id="form1" runat="server">
    <div>
        <h1 align="center"> Login Page </h1>
    </div>

    <!--<div id="se">
	        <input type="search" name="mysearch" placeholder="Search...">
      </div> -->

    <ul>
        <li><a href="Landing.aspx">Home Page</a></li>
        <li><a href="Search.aspx">Search Page</a></li>
        <li><a href="Request.aspx">Request App Page</a></li>
        <li><a href="Landing.aspx">Home Page</a></li>
    </ul>

    <div id = "login">
    <asp:Login ID="Login1" runat="server" BackColor="#202424" BorderStyle="Groove" 
            ForeColor="White" Width="292px">
    </asp:Login>
    </div>

    </form>

</body>
</html>
