<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Search Page</title>
    <link href="style.css"" rel="Stylesheet" type = "text/css" />
</head>
<body>

    <form id="form1" runat="server">
    <div>
        <h1 align="center"> Search Page </h1>
    </div>

    <!--<div id="se">
	        <input type="text" name="mysearch" placeholder="Search..." 
                onclick="return searchBar_onclick()">
    </div> -->

<ul>
  <li><a href="Landing.aspx">Home Page</a></li>
  <li><a href="Login.aspx">Login Page</a></li>
  <li><a href="Search.aspx">Search Page</a></li>
  <li><a href="Forum.aspx">Forum Page</a></li>
  <li><a href="Request.aspx">Request App Page</a></li>
  <li><a href="RequestedApps.aspx">Requested Apps Page</a></li>
</ul>

    <div id="search2">
    <p>
        <h3>Search For Apps</h3>
        <asp:TextBox ID="SearchTextBox" runat="server" placeholder="Search..."></asp:TextBox>
        <asp:Button ID="SearchButton" runat="server" Text="Search" />
        <br />
    </p>
    </div>

    </form>

    <div id="apps">
    <asp:ListView ID="ListView1" runat="server">
        <LayoutTemplate>
            <table>
                <thread>
                    <tr>
                        <th align="center">  </th>
                        <th align="center"> Name </th>
                        <th align="center"> Rating </th>
                        <th align="center"> Developers </th>
                        <th align="center"> Platform </th>
                        <th align="center"> Version </th>
                        <th align="center"> Price </th>
                        <th align="center"> Description </th>
                    </tr>
                </thread>
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td> <img src="<%# Eval("AppPicture")%>" alt="ERROR" style="width:100px;height:100px"></td>
                <td align="center"> <%# Eval("AppName")%> </td>
                <td align="center"> <%# Eval("AppRating")%></td>
                <td align="center"> <%# Eval("AppDevelopers")%></td>
                <td align="center"> <%# Eval("AppPlatform")%></td>
                <td align="center"> <%# Eval("AppVersion")%></td>
                <td align="center"> <%# Eval("AppPrice")%></td>
                <td align="center"> <%# Eval("AppDescription")%></td>
            </tr>
        </ItemTemplate>
    </asp:ListView>

    </div>
    </body>
</html>
