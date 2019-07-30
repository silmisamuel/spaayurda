<%@ Page Title="" Language="C#" MasterPageFile="~/YellowMotors.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="YellowMotors.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <h3>User Registration</h3>
    <table style="width: 100%">
        <tr>
            <td style="width: 292px">User ID</td>
            <td style="width: 184px">
                <asp:TextBox ID="txtUserId" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserId" ErrorMessage="Please Enter User ID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 292px">Name</td>
            <td style="width: 184px">
                <asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 292px">Password</td>
            <td style="width: 184px">
                <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 292px; height: 33px">Confirm Password</td>
            <td style="width: 184px; height: 33px">
                <asp:TextBox ID="txtConfirmPassword" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 33px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 292px">Select Your Country</td>
            <td style="width: 184px">
                <select id="Select1" name="D1" style="width: 188px">
                    <option></option>
                </select></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Your Country" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 292px">Email Address</td>
            <td style="width: 184px">
                <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your email" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 292px">&nbsp;</td>
            <td style="width: 184px">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
