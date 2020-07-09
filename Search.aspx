<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="dztzPro.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 100%; text-align: center">
        <form id="form1" runat="server">
            <br />
            <asp:SqlDataSource ID="SqlDataSourceLedgerItems" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT [Id],[LedgerNodeId],[LedgerNodeName],[CreateUser],[CreateTime],[ModifyUser],[ModifyTime],[Status] FROM [LedgerNodeItem] WHERE ([LedgerNodeId] = @LedgerNodeId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="LedgerNodeId" QueryStringField="ledgerNodeId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="LedgerItemsGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceLedgerItems" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="LedgerNodeName" HeaderText="账簿名称" SortExpression="LedgerNodeName" />
                    <asp:BoundField DataField="CreateUser" HeaderText="创建人" SortExpression="CreateUser" />
                    <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                    <asp:BoundField DataField="ModifyUser" HeaderText="修改人" SortExpression="ModifyUser" />
                    <asp:BoundField DataField="ModifyTime" HeaderText="修改时间" SortExpression="ModifyTime" />
                    <asp:BoundField DataField="Status" HeaderText="完成状态" SortExpression="Status"/>
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
        </form>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <li style="color:#040038">
        <%=Title %>
    </li>
    <li>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </li>
</asp:Content>
