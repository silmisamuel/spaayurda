<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PracticeTest1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="3">User Registration<br />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Message shows"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">FirstName</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style4">User ID</td>
        <td>
            <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Password</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Confirm Password</td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Button ID="btnRegisterUser" runat="server" OnClick="btnRegisterUser_Click" Text="Register" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
