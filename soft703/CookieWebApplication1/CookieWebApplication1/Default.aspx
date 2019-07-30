<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CookieWebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 692px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <td><table class="auto-style1">
    <tr>
        <td class="auto-style3">Welcome</td>
        <td>
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Button" Width="348px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">This is y Home Page<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</td>
</asp:Content>
