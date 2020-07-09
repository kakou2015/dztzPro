<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNode.aspx.cs" Inherits="dztzPro.AddNode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server" style="height: 920px; width: 1900px">
        <table class="table table-border table-bordered table-bg mt-20">
            <tr>
                <td class="auto-style1">账簿名：&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="LedgerNodeName" runat="server" Height="20px" Width="500px" TabIndex="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">账簿类别：
                </td>
                <td>
                    <asp:DropDownList ID="LedgerTypeList" runat="server" Height="30px" Width="500px" TabIndex="11">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">车站：&nbsp;&nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="StationList" runat="server" Height="30px" Width="500px" TabIndex="11">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
               <td class="auto-style1">访问权限：
                </td>
                <td>
                    <asp:DropDownList ID="AccessLevelList" runat="server" Height="30px" Width="50px" TabIndex="12">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">摸板路径：
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadCtrl" runat="server" Height="30px" Width="600px" TabIndex="13" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                <a class="btn btn-primary radius mr-20" style="line-height: 1.8em; margin-top: 3px;" href="#" onclick="menuitem_click('')">
                    <i class="icon-ok"></i>
                </a>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="LedgerNodeGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="16px" Width="1198px" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="LedgerNodeType" HeaderText="账簿类别" SortExpression="LedgerNodeType" />
                <asp:BoundField DataField="LedgerNodeName" HeaderText="账簿名称" SortExpression="LedgerNodeName" />
                <asp:BoundField DataField="Station" HeaderText="站点" SortExpression="Station" />
                <asp:BoundField DataField="AccessLevel" HeaderText="访问权限" SortExpression="AccessLevel" />
                <asp:BoundField DataField="CreateUser" HeaderText="创建人" SortExpression="CreateUser" />
                <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                <asp:BoundField DataField="ModifyUser" HeaderText="修改人" SortExpression="ModifyUser" />
                <asp:BoundField DataField="ModifyTime" HeaderText="修改时间" SortExpression="ModifyTime" />
                <asp:BoundField DataField="TemplateFileName" HeaderText="摸板文件名" SortExpression="TemplateFileName" />
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Station],[LedgerNodeName], [LedgerNodeType], [AccessLevel], [CreateUser], [CreateTime], [ModifyUser], [ModifyTime], [TemplateFileName] FROM [ledgerNode] ORDER BY [Id] DESC, [ModifyTime] DESC, [CreateTime] DESC"></asp:SqlDataSource>
    </form>
</asp:Content>
