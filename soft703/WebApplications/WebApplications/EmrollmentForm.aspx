<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmrollmentForm.aspx.cs" Inherits="WebApplications.EmrollmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77%;
        }
        .auto-style2 {
            width: 321px;
        }
        .auto-style3 {
            width: 619px;
        }
        .auto-style4 {
            width: 321px;
            height: 31px;
        }
        .auto-style5 {
            width: 619px;
            height: 31px;
        }
        .auto-style6 {
            width: 300px;
        }
        .auto-style7 {
            width: 321px;
            height: 33px;
        }
        .auto-style8 {
            width: 619px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            AIS Enrollment Form<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">First Name</td>
                   <td class="auto-style2">

                        <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="TextBox1_TextChanged" Width="300px"></asp:TextBox>

                       </td>
                </tr>
                <tr>
                    <td class="auto-style4">Last Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="TextBox2_TextChanged" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtLastName" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your Last name">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td class="auto-style3">
                        <textarea id="TextArea1" name="S1" rows="2" class="auto-style6"></textarea></td>
                </tr>
                <tr>
                    <td class="auto-style2">Country</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Width="292px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Phone</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPhone" runat="server" Width="292px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtPhone" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your number">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server" Width="292px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <input id="Submit1" type="submit" value="submit" /></td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
