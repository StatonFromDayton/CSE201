<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Landing.aspx.vb" Inherits="Landing" %>

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


<h1 align="center"> Home Page</h1>
<div id="se">
	<input type="search" name="mysearch" placeholder="Search...">
</div>
<ul>
  <li><a href="Login.aspx">Login</a></li>
  <li><a href="Default.aspx">Default</a></li>
  <li><a href="#contact">?????</a></li>
  <li><a href="#about">??????</a></li>
</ul>

<h3 style="margin-left: 920px">About</h3>
<div id="Welc">
<pre style="margin-left: 760px">Welcome to AppX! This application allows you to search,
rate, and review all of the applications listed on the various
app stores.</pre>
    </div>

<h3 style="margin-left: 880px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hot Apps</h3>

<div id'"hot">
    <asp:Image ID="Image1" runat="server" Height="150px" 
        ImageUrl="http://upload.wikimedia.org/wikipedia/en/7/73/Candy_Crush.png" 
        Width="150px" ImageAlign="Middle" />


    <asp:Image ID="Image2" runat="server" Height="150px" 
        ImageUrl="https://lh6.ggpht.com/1eVPA6Iukw-F4i5xq1ZWicaKBzmprLGw98YhdG20E-wlsHHg3PcKJqbY_fWLdJeGRw=w300" 
        Width="150px" />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" 
        ImageUrl="https://lh6.ggpht.com/onlNBInQHIZtB2rY24BwrEsUUKwE753ao1BAvvhOw2ePEN1IHIUjaR3gvlGd3jyKTdg=w300" 
        Width="150px" />


</div>
    </form>


</body>
</html>
