<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ExamDemoApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 299px">FirstName</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 299px">LastName</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 299px">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 299px">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 299px">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" OnTextChanged="txtConfirmPassword_TextChanged" Height="16px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Paaword noy matched" ControlToCompare="txtPassword" Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 299px">Submit</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
    </table>
&nbsp;

</asp:Content>
