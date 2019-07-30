<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AisEnrollmentForm.aspx.cs" Inherits="WebApplications.AisEnrollmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            width: 268px;
        }
        .auto-style4 {
            width: 408px;
        }
        .auto-style5 {
            width: 247px;
            height: 33px;
        }
        .auto-style6 {
            width: 268px;
            height: 33px;
        }
        .auto-style7 {
            width: 408px;
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
                    <td class="auto-style3">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ControlToValidate="txtFirstName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Last Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Password</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPassword" runat="server" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CompareValidator ControlToValidate= "txtPassword" ControlToCompare="txtConfirmPassword" ID= "CompareValidator1" runat="server" ErrorMessage="Password is wrong"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <input id="Submit1" type="submit" value="submit" /></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
