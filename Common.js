// put all functions here.

function save() {
    // Use ajax to get/post/update/delete data.
    //https://api.jquery.com/jQuery.ajax/
    //$.ajax('Server.ashx',)
    var inputs = document.getElementsByTagName('input');

    var res = {}
    for (var i = 0; i < inputs.length; i++) {
        res[inputs[i].id] = inputs[i].value;
    }

    var textareas = document.getElementsByTagName('textarea');
    for (var i = 0; i < textareas.length; i++) {
        res[textareas[i].id] = textareas[i].value;
    }

    var data = { "name": "save", "content": JSON.stringify(res) };
    $.ajax({
        type: "POST",
        url: "Server.ashx",
        dataType: "json",
        data: data,
        beforeSend: function () {
        },
        success: function (msg) {
            alert('all data saved.');
        }
    })
}

function finish() {
    // Use ajax to get/post/update/delete data.
    //https://api.jquery.com/jQuery.ajax/
    var inputs = document.getElementsByTagName('input');

    var res = {}
    var itemId = {}
    var ledgerId = {}
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].id == 'itemId')
            itemId = inputs[i].value;
        else if (inputs[i].id == 'ledgerId') {
            ledgerId = inputs[i].value;
            continue;
        }
        else if (inputs[i].id == 'jsonContent')
            continue;
        res[inputs[i].id] = inputs[i].value;
    }

    var textareas = document.getElementsByTagName('textarea');
    for (var i = 0; i < textareas.length; i++) {
        res[textareas[i].id] = textareas[i].value;
    }

    console.log(res);
    
    var data = { "name": "save", "itemId": itemId, "ledgerId": ledgerId, "content": JSON.stringify(res) };
    $.ajax({
        type: "POST",
        url: "Server.ashx",
        dataType: "json",
        data: data,
        beforeSend: function () {
        },
        success: function (msg) {
            alert('all data saved.');
        }
    })
}
String.prototype.replaceAll = function (FindText, RepText) {
    regExp = new RegExp(FindText, "g");
    return this.replace(regExp, RepText);
}
$(document).ready(function () {

//    if (getUrlParam('action') == '2' && window.location is task.aspx)
//{
    //@Frank.
//    // use ajax to get json data, and fill data to template.
    //    }
    var jsonCtrl = document.getElementById('jsonContent')
    if (jsonCtrl != null) {
        var jsonContent = decodeURIComponent(jsonCtrl.value);
        var json = JSON.parse(jsonContent);
        console.log(json);

        var inputs = document.getElementsByTagName('input');

        var itemId = document.getElementById('itemId')
        for (var i = 0; i < inputs.length; i++) {
            if (inputs[i].id in json) {
                inputs[i].value = json[inputs[i].id];
                if (inputs[i].id == 'itemId')
                    itemId.value = inputs[i].value;
            }
        }

        var textareas = document.getElementsByTagName('textarea');
        for (var i = 0; i < textareas.length; i++) {
            if (textareas[i].id in json) {
                textareas[i].value = json[textareas[i].id];
            }
        }
    }
});


function getUrlParam(name) {
    console.log(window.location);
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var url = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (url != null) return unescape(url[2]); return null; //返回参数值
}