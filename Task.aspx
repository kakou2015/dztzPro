<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="dztzPro.Task" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%= Content %>
    <input type="hidden" id="jsonContent" value="<%= JsonContent %>" />
    <input type="hidden" id="ledgerItemId" value="<%= LedgerItemId %>" />
    <input type="hidden" id="ledgerNodeId" value="<%= LedgerNodeId %>" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <li>
        <a class="btn btn-primary radius mr-20" style="line-height: 1.8em; margin-top: 3px;" href="#" onclick="save();">
            <i class="icon-ok"></i>保存
        </a>
    </li>
    <li>
        <a class="btn btn-success radius mr-20" style="line-height: 1.8em; margin-top: 3px;" href="#" onclick="finish();">
            <i class="icon-ok"></i>结束填写
        </a>
    </li>
    <li>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </li>
    <li style="color:#040038">
        <%=Title %>
    </li>
    <li>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </li>
</asp:Content>
