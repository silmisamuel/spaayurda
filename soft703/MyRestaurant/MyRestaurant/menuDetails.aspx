<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMenu.Master" AutoEventWireup="true" CodeBehind="menuDetails.aspx.cs" Inherits="MyRestaurant.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="menuID" HeaderText="menuID" SortExpression="menuID" />
        <asp:BoundField DataField="menuName" HeaderText="menuName" SortExpression="menuName" />
        <asp:BoundField DataField="menuDescription" HeaderText="menuDescription" SortExpression="menuDescription" />
        <asp:BoundField DataField="menuImage" HeaderText="menuImage" SortExpression="menuImage" />
        <asp:BoundField DataField="menuPrice" HeaderText="menuPrice" SortExpression="menuPrice" />
        <asp:BoundField DataField="menuType" HeaderText="menuType" SortExpression="menuType" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMyRestaurantConnectionString %>" SelectCommand="SELECT * FROM [tblMenu]"></asp:SqlDataSource>
</asp:Content>
