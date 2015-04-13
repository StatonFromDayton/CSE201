<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content ="width=device-width, initial-scale=1">
    <title> AppX </title>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"> </script>
    <script src="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.js"></script>
</head>
<body>

    <div data-role="header">
        <h6> AppX </h6>
    </div>

    <div data-role="content">
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/CSE201_Project.accdb" 
            SelectCommand="SELECT * FROM [Application]">
        </asp:AccessDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" DataTextField="AppName" DataValueField="AppID" AutoPostBack="True" data-inline="true">
        </asp:DropDownList>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource2" 
            DataKeyNames="AppID">
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
                AppDevelopers:
                <asp:TextBox ID="AppDevelopersTextBox" runat="server" 
                    Text='<%# Bind("AppDevelopers") %>' />
                <br />
                AppPlatform:
                <asp:TextBox ID="AppPlatformTextBox" runat="server" 
                    Text='<%# Bind("AppPlatform") %>' />
                <br />
                AppVersion:
                <asp:TextBox ID="AppVersionTextBox" runat="server" 
                    Text='<%# Bind("AppVersion") %>' />
                <br />
                AppPrice:
                <asp:TextBox ID="AppPriceTextBox" runat="server" 
                    Text='<%# Bind("AppPrice") %>' />
                <br />
                AppDescription:
                <asp:TextBox ID="AppDescriptionTextBox" runat="server" 
                    Text='<%# Bind("AppDescription") %>' />
                <br />
                AppPicture:
                <asp:TextBox ID="AppPictureTextBox" runat="server" 
                    Text='<%# Bind("AppPicture") %>' />
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
                AppDevelopers:
                <asp:TextBox ID="AppDevelopersTextBox" runat="server" 
                    Text='<%# Bind("AppDevelopers") %>' />
                <br />
                AppPlatform:
                <asp:TextBox ID="AppPlatformTextBox" runat="server" 
                    Text='<%# Bind("AppPlatform") %>' />
                <br />
                AppVersion:
                <asp:TextBox ID="AppVersionTextBox" runat="server" 
                    Text='<%# Bind("AppVersion") %>' />
                <br />
                AppPrice:
                <asp:TextBox ID="AppPriceTextBox" runat="server" 
                    Text='<%# Bind("AppPrice") %>' />
                <br />
                AppDescription:
                <asp:TextBox ID="AppDescriptionTextBox" runat="server" 
                    Text='<%# Bind("AppDescription") %>' />
                <br />
                AppPicture:
                <asp:TextBox ID="AppPictureTextBox" runat="server" 
                    Text='<%# Bind("AppPicture") %>' />
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
                AppDevelopers:
                <asp:Label ID="AppDevelopersLabel" runat="server" 
                    Text='<%# Bind("AppDevelopers") %>' />
                <br />
                AppPlatform:
                <asp:Label ID="AppPlatformLabel" runat="server" 
                    Text='<%# Bind("AppPlatform") %>' />
                <br />
                AppVersion:
                <asp:Label ID="AppVersionLabel" runat="server" 
                    Text='<%# Bind("AppVersion") %>' />
                <br />
                AppPrice:
                <asp:Label ID="AppPriceLabel" runat="server" Text='<%# Bind("AppPrice") %>' />
                <br />
                AppDescription:
                <asp:Label ID="AppDescriptionLabel" runat="server" 
                    Text='<%# Bind("AppDescription") %>' />
                <br />
                AppPicture:
                <asp:Label ID="AppPictureLabel" runat="server" 
                    Text='<%# Bind("AppPicture") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/CSE201_Project.accdb" 
            
            SelectCommand="SELECT * FROM Application WHERE (AppID = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="AppID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SecondPage.aspx">HyperLink</asp:HyperLink>
        <br />
    
    </div>
    </form>
    </div>

    <div data-role="footer">
        <h6> Copyright </h6>
    </div>
</body>
</html>
