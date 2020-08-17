<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="dztzPro.UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 99%; text-align: center; padding-left:8px">
        <form runat="server">
            <table class="table table-border table-bordered table-bg mt-20">
                <tr>
                    <td class="auto-style1">登录名：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbLoginName" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">密码：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" Height="20px" Width="500px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">确认密码：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbRePasswird" runat="server" Height="20px" Width="500px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">姓名：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbUserName" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">部门：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbDepartment" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">职位：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbOccupation" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">上级ID：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbSuperior" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">访问权限：&nbsp;
                    </td>
                    <td><input id="accessRight" name="accessRight" value=<%= AccessRight %>></td>
                </tr>
                <tr>
                    <td />
                    <%= AccessRightContent %>
                </tr>                <tr>
                    <td class="auto-style1">手机号：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbMobilePhone" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">备注：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbDescription" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="SaveBttn" runat="server" Text="新建" OnClick="Save_Click" Height="30px" Width="80px"/>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="UserGridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="UserGridView_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="用户Id" ReadOnly="True"  SortExpression="UserId" />
                    <asp:BoundField DataField="LoginName" HeaderText="登录名" SortExpression="LoginName" />
                    <asp:BoundField DataField="UserName" HeaderText="姓名" SortExpression="UserName" />
                    <asp:BoundField DataField="MobilePhone" HeaderText="手机号" SortExpression="MobilePhone" />
                    <asp:BoundField DataField="Email" HeaderText="电子邮件" SortExpression="Email" />
                    <asp:BoundField DataField="Department" HeaderText="部门" SortExpression="Department" />
                    <asp:BoundField DataField="Occupation" HeaderText="职位" SortExpression="Occupation" />
                    <asp:BoundField DataField="Superior" HeaderText="上级Id" SortExpression="Superior" />
                    <asp:BoundField DataField="AccessRight" HeaderText="访问权限" SortExpression="AccessRight" />
                    <asp:BoundField DataField="Description" HeaderText="备注" SortExpression="Description" />
                    <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                    <asp:BoundField DataField="LoginTime" HeaderText="登录时间" SortExpression="LoginTime" />
                    <asp:BoundField DataField="LastLoginTime" HeaderText="上次登录时间" SortExpression="LastLoginTime" />
                    <asp:BoundField DataField="LoginCount" HeaderText="登录次数" SortExpression="LoginCount" />
                    <asp:CommandField ShowCancelButton="False" ShowSelectButton="True" SelectText="修改"/>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="Freezing" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT [UserId],[LoginName], [UserName],[UserPassword],[MobilePhone],[Email],[Department],[Occupation],[Superior],[AccessRight],[Description],[CreateTime],[LoginTime],[LastLoginTime],[LoginCount] FROM [User]" ProviderName="<%$ ConnectionStrings:dztzConnectionString.ProviderName %>"></asp:SqlDataSource>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <li style="color:#040038">
        权限管理
    </li>
    <li>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </li>
</asp:Content>
