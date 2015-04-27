<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forum.aspx.vb" Inherits="Forum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="161px" Width="355px"></asp:TextBox>
        <br />
    
        <asp:ListView ID="ListView1" runat="server">
             <LayoutTemplate>
            <table>
                <thread>
                    <tr>
                        <th align="center"> Name </th>
                        <th align="center"> Content </th>
                    </tr>
                </thread>
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"> <%# Eval("ForumName")%> </td>
                <td align="center"> <%# Eval("ForumContent")%></td>
            </tr>
        </ItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
