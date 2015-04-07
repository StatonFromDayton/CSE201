<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/CSE201_Project.accdb" SelectCommand="SELECT [AppID], [AppName], [AppRating] FROM [Application]">
        </asp:AccessDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" DataTextField="AppName" DataValueField="AppID" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/CSE201_Project.accdb" 
            SelectCommand="SELECT [AppID], [AppName], [AppRating] FROM [Application] WHERE ([AppID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="AppID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="AppID" DataSourceID="AccessDataSource2">
            <EditItemTemplate>
                AppID:
                <asp:Label ID="AppIDLabel1" runat="server" Text='<%# Eval("AppID") %>' />
                <br />
                AppName:
                <asp:TextBox ID="AppNameTextBox" runat="server" Text='<%# Bind("AppName") %>' />
                <br />
                AppRating:
                <asp:TextBox ID="AppRatingTextBox" runat="server" Text='<%# Bind("AppRating") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                AppName:
                <asp:TextBox ID="AppNameTextBox" runat="server" Text='<%# Bind("AppName") %>' />
                <br />
                AppRating:
                <asp:TextBox ID="AppRatingTextBox" runat="server" Text='<%# Bind("AppRating") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                AppID:
                <asp:Label ID="AppIDLabel" runat="server" Text='<%# Eval("AppID") %>' />
                <br />
                AppName:
                <asp:Label ID="AppNameLabel" runat="server" Text='<%# Bind("AppName") %>' />
                <br />
                AppRating:
                <asp:Label ID="AppRatingLabel" runat="server" Text='<%# Bind("AppRating") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SecondPage.aspx">HyperLink</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
