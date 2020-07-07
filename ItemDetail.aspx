<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="dztzPro.Views.ItemDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script type="text/javascript" src="/Scripts/jquery-3.4.1.js"></script>
    
    <script type="text/javascript">

        $(document).ready(function() {
            var inputs = $('#itemTable').find(':input');
        });

        function displayAllData() {
            var inputs = $('#itemTable').find(':input');

            var res= {}
            inputs.each(function(idx,el) {
                res[el.name] = el.value;
            });
            console.log(res);
        }

        function setData() {

            
            <% if (!string.IsNullOrEmpty(JsonContent))
               { %>
            var res = <%= JsonContent %>;
            <% }
               else
               { %>
            var res = {};
            <% } %>

            var inputs = $('#itemTable').find(':input');
            console.log(inputs);
            inputs.each(function (idx, el) {
                if (el.name in res) {
                    el.value = res[el.name];
                }
            });
            console.log(res);
        }

    </script>
</head>
<body>
    <form id="mainForm" runat="server">
        <div>
            <%= TemplateContent %>
            
            <input type="button" name="btn" value="displayAllData" onclick="displayAllData()"/>
            
            <input type="button" name="btn" value="setData" onclick="setData()" />
        </div>
    </form>
</body>
</html>
