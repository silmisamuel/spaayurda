<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FormLogin.aspx.cs" Inherits="DatabaseDemo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="3">User Registration<br />
            
           <!-- <asp:Label ID="lblMessage" runat="server" Text="Message shows"></asp:Label>-->
        </td>
    </tr>
    <tr>
        <td class="auto-style3">FirstName</td>
        <td class="auto-style2" style="width: 465px">
            <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style4">User ID</td>
        <td style="width: 465px">
            <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Password</td>
        <td style="width: 465px">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Confirm Password</td>
        <td style="width: 465px">
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            
            <asp:Button ID="btnRegisterUser" runat="server" OnClick="btnRegisterUser_Click" Text="Register" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td style="width: 465px">
            
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


