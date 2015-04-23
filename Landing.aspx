<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Landing.aspx.vb" Inherits="Landing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<!DOCTYPE html>
<head>
<link href="style.css"" rel="Stylesheet" type = "text/css" />
<title> Home Page </title>
</head>
<body>


    <form id="form1" runat="server">


<h1 align="center"> Home Page</h1>
<!--<div id="se">
	<input type="search" name="mysearch" placeholder="Search...">
</div>-->
<ul>
  <li><a href="Login.aspx">Login Page</a></li>
  <li><a href="Search.aspx">Search Page</a></li>
  <li><a href="Request.aspx">Request App Page</a></li>
  <li><a href="Landing.aspx">Home Page</a></li>
</ul>

<div id="search">
<h3>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Search..."></asp:TextBox>
    <asp:Image ID="Image1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Search" />
    </h3>
    </div>
    <div id="about">
    <h3>About</h3>
<pre>Welcome to AppX! This application allows you to search,
rate, and review all of the applications listed on the various
app stores.</pre>
</div>
<div id="hot">
    <h2>Hot Apps</h2>
    <asp:Image ID="Image3" runat="server" Height="150px" 
        ImageUrl="https://lh6.ggpht.com/1eVPA6Iukw-F4i5xq1ZWicaKBzmprLGw98YhdG20E-wlsHHg3PcKJqbY_fWLdJeGRw=w300" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" Height="150px"
        ImageUrl="http://upload.wikimedia.org/wikipedia/en/7/73/Candy_Crush.png" 
        Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="150px" 
        
        ImageUrl="https://lh6.ggpht.com/onlNBInQHIZtB2rY24BwrEsUUKwE753ao1BAvvhOw2ePEN1IHIUjaR3gvlGd3jyKTdg=w300" />
&nbsp;&nbsp;
    <br />
    
   </div>

    </form>


</body>
</html>
