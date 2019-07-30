<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DatabaseDemo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            Hashing Demo</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Enter UserId</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Password hash without salt</td>
                <td>Password hash with Salt</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">MD5</td>
                <td class="auto-style3">
                    <asp:Label ID="lblmd5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblmd5withsalt" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">SHA1</td>
                <td class="auto-style3">
                    <asp:Label ID="lblsha1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblsha1withsalt" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">SHA256</td>
                <td class="auto-style3">
                    <asp:Label ID="lblsha256" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblsha256withsalt" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">SHA512</td>
                <td class="auto-style3">
                    <asp:Label ID="lblsha512" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblsha512withsalt" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
