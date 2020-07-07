<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="dztzPro.Task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%= Content %>
    <input type="hidden" id="jsonContent" value="<%= JsonContent %>" />
    <input type="hidden" id="ledgerNodeId" value="<%= LedgerNodeId %>" />

</asp:Content>
