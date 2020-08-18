<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="dztzPro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 100px auto; width: 400px; height: 500px">
            <table style="vertical-align: middle; text-align: center;">
                <tr>
                    <td><asp:Label Text="登录名：" runat="server" Font-Size="Medium"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="208px" Height="30" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><asp:Label Text="密码：" runat="server" Font-Size="Medium"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="208px" Height="30" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td />
                    <td>
                        <asp:Button ID="LoginBttn" runat="server" Text="登录系统" Width="208px" Height="40" Font-Size="Medium" OnClick="LoginBttn_Click" />
                    </td>
                </tr>
                <tr>
                    <td />
                    <td>
                        <asp:Button ID="RegisterBttn" runat="server" Text="注册" Width="208px" Height="40" Font-Size="Medium" OnClick="RegisterBttn_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
