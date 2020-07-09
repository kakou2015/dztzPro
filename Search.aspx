<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="dztzPro.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />

            <asp:SqlDataSource ID="SqlDataSourceLedgerItems" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT [Id],[LedgerNodeId],[LedgerNodeName],[CreateUser],[CreateTime],[ModifyUser],[ModifyTime],[Status] FROM [LedgerNodeItem] WHERE ([LedgerNodeId] = @LedgerNodeId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="LedgerNodeId" QueryStringField="ledgerNodeId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="LedgerItemsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceLedgerItems" Height="16px" Width="1198px">
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="DarkBlue" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="LedgerNodeName" HeaderText="账簿名称" SortExpression="LedgerNodeName" />
                    <asp:BoundField DataField="CreateUser" HeaderText="创建人" SortExpression="CreateUser" />
                    <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                    <asp:BoundField DataField="ModifyUser" HeaderText="修改人" SortExpression="ModifyUser" />
                    <asp:BoundField DataField="ModifyTime" HeaderText="修改时间" SortExpression="ModifyTime" />
                    <asp:BoundField DataField="Status" HeaderText="完成状态" SortExpression="Status"  DataFormatString=""/>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>

