<%@ Page Title="" Language="C#" MasterPageFile="~/YellowMotors.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YellowMotors.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>User Login</p>
    
    <table style="width: 100%">
        <tr>
            <td style="width: 235px">User ID</td>
            <td style="width: 267px">
                <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">Password</td>
            <td style="width: 267px">
                <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 267px">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
