<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #forum
        {
            height: 421px;
            width: 674px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Login Page</h1>
        <p> &nbsp;</p>
        <p> 
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </form>
</body>
</html>
