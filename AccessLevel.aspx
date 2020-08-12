<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccessLevel.aspx.cs" Inherits="dztzPro.AccessLevel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 99%; text-align: center; padding-left:8px">
        <form runat="server">
            <table class="table table-border table-bordered table-bg mt-20">
                <tr>
                    <td class="auto-style1">权限名称：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="AccessLevelName" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="SaveBttn" runat="server" Text="新建" OnClick="Save_Click" Height="30px" Width="100px"/>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="AccessLevelGridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="AccessLevelGridView_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ALName" HeaderText="权限名称" SortExpression="ALName"/>
                    <asp:BoundField DataField="ALValue" HeaderText="权限值" SortExpression="ALValue" ReadOnly="true"/>
                    <asp:CommandField ShowCancelButton="False" ShowSelectButton="True" SelectText="修改"/>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="Freezing" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT [ALName], [ALValue] FROM [AccessLevel]"></asp:SqlDataSource>
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
