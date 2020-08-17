<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="dztzPro.Task" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%= Content %>
    <input type="hidden" id="jsonContent" value="<%= JsonContent %>" />
    <input type="hidden" id="ledgerItemId" value="<%= LedgerItemId %>" />
    <input type="hidden" id="ledgerNodeId" value="<%= LedgerNodeId %>" />
    <input type="hidden" id="accessRight" value="<%= AccessRight %>" />

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

    <script type="text/javascript">
    $(document).ready(function () {
        var accessR = document.getElementById('accessRight');
        var AR = parseInt(accessR.value);
        var inputs = document.getElementsByTagName('input');

        var itemId = document.getElementById('ledgerItemId')
        for (var i = 0; i < inputs.length; i++) {
            var index = inputs[i].id.search('_');
            var ar = parseInt(inputs[i].id.substring(2, index));
            if((ar & AR) != ar)
            {
                inputs[i].disabled = true;
            }
        }

        var textareas = document.getElementsByTagName('textarea');
        for (var i = 0; i < textareas.length; i++) {
            var index = textareas[i].id.search('_');
            var ar = parseInt(textareas[i].id.substring(2, index));
            if ((ar & AR) != ar) {
                textareas[i].disabled = true;
            }
        }
    });
    </script>
</asp:Content>
