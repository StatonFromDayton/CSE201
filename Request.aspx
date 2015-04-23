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
  <li><a href="Landing.aspx"> Home Page</a></li>
</ul>
<div id = "request">
        <p>
            <strong>Please insert the information for your application</strong></p>
        <p>
            App Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
            <asp:TextBox ID="NAME" runat="server" Height="25px" Width="250px"></asp:TextBox>&nbsp;</p>
        <p>
            Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:TextBox ID="DESCRIPTION" runat="server" Height="25px" Width="253px"></asp:TextBox></p>
        <p>
        App Developer:&nbsp;       <asp:TextBox ID="DEVELOPER" runat="server" 
                Height="25px" Width="253px"></asp:TextBox></p>
<p>
        Image 
        URL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
        <asp:TextBox ID="DEVELOPER0" runat="server" 
                Height="25px" Width="253px"></asp:TextBox>
    
       
</p>

        <asp:Button ID="ENTER" runat="server" Text="Submit" />
</div>

        <br />
        <br />
    <br />
        
    </form>

 

</body>
</html>