<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemView.aspx.cs" Inherits="dztzPro.ItemView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%= Content %>
    <input type="hidden" id="jsonContent" value="<%= JsonContent %>" />
    <input type="hidden" id="ledgerItemId" value="<%= LedgerItemId %>" />
    <input type="hidden" id="ledgerNodeId" value="<%= LedgerNodeId %>" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <li>
        <a class="btn btn-success radius mr-20" style="line-height: 1.8em; margin-top: 3px;" href="#" onclick="returntosearch(<%= LedgerNodeId %>);">
            <i class="icon-ok"></i>返回
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

        <script type="text/javascript">
            $(document).ready(function () {
                $("input").attr("disabled", true);
                $("textarea").attr("disabled", true);
            });
    </script>
</asp:Content>
