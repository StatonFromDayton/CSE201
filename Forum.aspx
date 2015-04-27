<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forum.aspx.vb" Inherits="Forum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum Page</title>
    <link href="style.css"" rel="Stylesheet" type = "text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 align="center"> Forum Page </h1>
    </div>

    <ul>
        <li><a href="Landing.aspx">Home Page</a></li>
        <li><a href="Search.aspx">Search Page</a></li>
        <li><a href="Request.aspx">Request App Page</a></li>
        <li><a href="Login.aspx">Login Page</a></li>
    </ul>

    <div>
    
        <asp:ListView ID="ListView1" runat="server">
             <LayoutTemplate>
            <table>
                <thread>
                    <tr>
                        <th align="center"> Author </th>
                        <th>  </th>
                        <th>  </th>
                        <th align="center"> Content </th>
                    </tr>
                </thread>
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td align="left"> <%# Eval("ForumName")%> </td>
                <td> </td>
                <td> </td>
                <td align="left"> <%# Eval("ForumContent")%></td>
            </tr>
        </ItemTemplate>
        </asp:ListView>
    
        <br />
    
        <asp:TextBox ID="Author" runat="server" placeholder="Author.."></asp:TextBox>
        <br />
        <textarea ID="Content" runat="server" rows="10" cols="40" placeholder="Content.."></textarea>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/CSE201_Project.accdb" 
            DeleteCommand="DELETE FROM [Forum] WHERE [ForumID] = ?" 
            InsertCommand="INSERT INTO [Forum] ([ForumName], [ForumContent]) VALUES (?, ?)" 
            SelectCommand="SELECT * FROM [Forum]" 
            UpdateCommand="UPDATE [Forum] SET [ForumName] = ?, [ForumContent] = ? WHERE [ForumID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ForumID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Author" Name="ForumName" PropertyName="Text" 
                    Type="String" />
                <asp:SessionParameter Name="ForumContent" SessionField="Content" 
                    Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ForumName" Type="String" />
                <asp:Parameter Name="ForumContent" Type="String" />
                <asp:Parameter Name="ForumID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
