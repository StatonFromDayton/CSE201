<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="style.css"" rel="Stylesheet" type = "text/css" />
</head>
<body>

    <form id="form1" runat="server">
    <div>
        <h1 align="center"> Login Page</h1>
    </div>

    <div id="se">
	        <input type="search" name="mysearch" placeholder="Search...">
        </div>

    <ul>
        <li><a href="Login.aspx">Login</a></li>
        <li><a href="Default.aspx">Default</a></li>
        <li><a href="#contact">?????</a></li>
        <li><a href="#about">??????</a></li>
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Landing.aspx">
        </asp:Login>
    </ul>


    </form>


    </form>
</body>
</html>
