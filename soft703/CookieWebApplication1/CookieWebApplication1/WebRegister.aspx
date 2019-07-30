<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebRegister.aspx.cs" Inherits="CookieWebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 289px;
    }
    .auto-style4 {
        width: 543px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <td><table class="auto-style1">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Register User</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">First Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">LastName</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">UserId</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Password</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Confirm Password</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtConfirmPassword" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Cancel" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="Button2" runat="server" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</td>
</asp:Content>
