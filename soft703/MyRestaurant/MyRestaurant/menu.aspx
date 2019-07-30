<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMenu.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="MyRestaurant.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceForMenu">

    <Columns>
        <asp:BoundField DataField="menuID" HeaderText="menuID" SortExpression="menuID" />
        <asp:BoundField DataField="menuName" HeaderText="menuName" SortExpression="menuName" />
        <asp:BoundField DataField="menuDescription" HeaderText="menuDescription" SortExpression="menuDescription" />
        <asp:BoundField DataField="menuImage" HeaderText="menuImage" SortExpression="menuImage" />
        <asp:BoundField DataField="menuPrice" HeaderText="menuPrice" SortExpression="menuPrice" />
        <asp:BoundField DataField="menuType" HeaderText="menuType" SortExpression="menuType" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceForMenu" runat="server" ConnectionString="<%$ ConnectionStrings:dbMyRestaurantConnectionString2 %>" SelectCommand="SELECT * FROM [tblMenu]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF; color: #284775;">menuID:
            <asp:Label ID="menuIDLabel" runat="server" Text='<%# Eval("menuID") %>' />
            <br />
            menuName:
            <asp:Label ID="menuNameLabel" runat="server" Text='<%# Eval("menuName") %>' />
            <br />
            menuDescription:
            <asp:Label ID="menuDescriptionLabel" runat="server" Text='<%# Eval("menuDescription") %>' />
            <br />
            menuImage:
            <asp:Label ID="menuImageLabel" runat="server" Text='<%# Eval("menuImage") %>' />
            <br />
            menuPrice:
            <asp:Label ID="menuPriceLabel" runat="server" Text='<%# Eval("menuPrice") %>' />
            <br />
            menuType:
            <asp:Label ID="menuTypeLabel" runat="server" Text='<%# Eval("menuType") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">menuID:
            <asp:TextBox ID="menuIDTextBox" runat="server" Text='<%# Bind("menuID") %>' />
            <br />
            menuName:
            <asp:TextBox ID="menuNameTextBox" runat="server" Text='<%# Bind("menuName") %>' />
            <br />
            menuDescription:
            <asp:TextBox ID="menuDescriptionTextBox" runat="server" Text='<%# Bind("menuDescription") %>' />
            <br />
            menuImage:
            <asp:TextBox ID="menuImageTextBox" runat="server" Text='<%# Bind("menuImage") %>' />
            <br />
            menuPrice:
            <asp:TextBox ID="menuPriceTextBox" runat="server" Text='<%# Bind("menuPrice") %>' />
            <br />
            menuType:
            <asp:TextBox ID="menuTypeTextBox" runat="server" Text='<%# Bind("menuType") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">menuID:
            <asp:TextBox ID="menuIDTextBox" runat="server" Text='<%# Bind("menuID") %>' />
            <br />menuName:
            <asp:TextBox ID="menuNameTextBox" runat="server" Text='<%# Bind("menuName") %>' />
            <br />menuDescription:
            <asp:TextBox ID="menuDescriptionTextBox" runat="server" Text='<%# Bind("menuDescription") %>' />
            <br />menuImage:
            <asp:TextBox ID="menuImageTextBox" runat="server" Text='<%# Bind("menuImage") %>' />
            <br />menuPrice:
            <asp:TextBox ID="menuPriceTextBox" runat="server" Text='<%# Bind("menuPrice") %>' />
            <br />menuType:
            <asp:TextBox ID="menuTypeTextBox" runat="server" Text='<%# Bind("menuType") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF; color: #333333;">menuID:
            <asp:Label ID="menuIDLabel" runat="server" Text='<%# Eval("menuID") %>' />
            <br />
            menuName:
            <asp:Label ID="menuNameLabel" runat="server" Text='<%# Eval("menuName") %>' />
            <br />
            menuDescription:
            <asp:Label ID="menuDescriptionLabel" runat="server" Text='<%# Eval("menuDescription") %>' />
            <br />
            menuImage:
            <asp:Label ID="menuImageLabel" runat="server" Text='<%# Eval("menuImage") %>' />
            <br />
            menuPrice:
            <asp:Label ID="menuPriceLabel" runat="server" Text='<%# Eval("menuPrice") %>' />
            <br />
            menuType:
            <asp:Label ID="menuTypeLabel" runat="server" Text='<%# Eval("menuType") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6; font-weight: bold; color: #333333;">menuID:
            <asp:Label ID="menuIDLabel" runat="server" Text='<%# Eval("menuID") %>' />
            <br />
            menuName:
            <asp:Label ID="menuNameLabel" runat="server" Text='<%# Eval("menuName") %>' />
            <br />
            menuDescription:
            <asp:Label ID="menuDescriptionLabel" runat="server" Text='<%# Eval("menuDescription") %>' />
            <br />
            menuImage:
            <asp:Label ID="menuImageLabel" runat="server" Text='<%# Eval("menuImage") %>' />
            <br />
            menuPrice:
            <asp:Label ID="menuPriceLabel" runat="server" Text='<%# Eval("menuPrice") %>' />
            <br />
            menuType:
            <asp:Label ID="menuTypeLabel" runat="server" Text='<%# Eval("menuType") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMyRestaurantConnectionString4 %>" SelectCommand="SELECT * FROM [tblMenu]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="menuID" HeaderText="menuID" SortExpression="menuID" />
            <asp:BoundField DataField="menuName" HeaderText="menuName" SortExpression="menuName" />
            <asp:BoundField DataField="menuDescription" HeaderText="menuDescription" SortExpression="menuDescription" />
            <asp:BoundField DataField="menuImage" HeaderText="menuImage" SortExpression="menuImage" />
            <asp:BoundField DataField="menuPrice" HeaderText="menuPrice" SortExpression="menuPrice" />
            <asp:BoundField DataField="menuType" HeaderText="menuType" SortExpression="menuType" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMyRestaurantConnectionString5 %>" SelectCommand="SELECT * FROM [tblMenu]"></asp:SqlDataSource>
</asp:Content>
