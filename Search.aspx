<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="dztzPro.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSourceLedgerItems" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT [Id],[CreateUser],[CreateTime],[ModifyUser],[ModifyTime],[Status] FROM [LedgerNodeItem] WHERE ([LedgerNodeId] = @LedgerNodeId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="LedgerNodeId" QueryStringField="ledgerNodeId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="LedgerItemsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceLedgerItems">
            </asp:GridView>
        </div>
    </form>
</asp:Content>
