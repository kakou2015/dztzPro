<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="dztzPro.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT * FROM [LedgerNodeItem] WHERE ([LedgerNodeId] = @LedgerNodeId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="LedgerNodeId" QueryStringField="ledgerNodeId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="LedgerNodeId" HeaderText="LedgerNodeId" SortExpression="LedgerNodeId" />
                    <asp:BoundField DataField="TemplateValue" HeaderText="TemplateValue" SortExpression="TemplateValue" />
                    <asp:BoundField DataField="CreateUser" HeaderText="CreateUser" SortExpression="CreateUser" />
                    <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" SortExpression="CreateTime" />
                    <asp:BoundField DataField="ModifyUser" HeaderText="ModifyUser" SortExpression="ModifyUser" />
                    <asp:BoundField DataField="ModifyTime" HeaderText="ModifyTime" SortExpression="ModifyTime" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>
