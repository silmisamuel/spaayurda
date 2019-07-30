<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebLogin.aspx.cs" Inherits="CookieWebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 335px;
    }
    .auto-style4 {
        width: 335px;
        height: 31px;
    }
    .auto-style5 {
        height: 31px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <td><table class="auto-style1">
    <tr>
        <td class="auto-style3">Login</td>
        <td>
            <asp:TextBox ID="txtLogin" runat="server" OnTextChanged="txtLogin_TextChanged" style="height: 29px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">UserID</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Password</td>
        <td>
            <asp:TextBox ID="txtPswd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </td>
    </tr>
</table>
</td>
</asp:Content>
