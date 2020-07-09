// put all functions here.
function getinputs(isSave) {
    var inputs = document.getElementsByTagName('input');

    var res = {}
    var ledgerItemId = {}
    var ledgerNodeId = {}
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].id == 'ledgerItemId') {
            ledgerItemId = inputs[i].value;
            continue;
        }
        else if (inputs[i].id == 'ledgerNodeId') {
            ledgerNodeId = inputs[i].value;
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

    var data = { "name": isSave, "ledgerItemId": ledgerItemId, "ledgerNodeId": ledgerNodeId, "content": JSON.stringify(res) };
    console.log(data);

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

function save() {
    // Use ajax to get/post/update/delete data.
    //https://api.jquery.com/jQuery.ajax/
    //$.ajax('Server.ashx',)
    getinputs("save");
}

function finish() {
    // Use ajax to get/post/update/delete data.
    //https://api.jquery.com/jQuery.ajax/
    getinputs("finish");
}

String.prototype.replaceAll = function (FindText, RepText) {
    regExp = new RegExp(FindText, "g");
    return this.replace(regExp, RepText);
}
$(document).ready(function () {

    //window.setInterval(function () {
    //    $('#currentTime').html(new Date().format('yyyy-MM-dd h:m:s'));
    //}, 1000);

    var jsonCtrl = document.getElementById('jsonContent')
    if (jsonCtrl != null && jsonCtrl.value.length > 3) {
        var jsonContent = decodeURIComponent(jsonCtrl.value);
        var json = JSON.parse(jsonContent);
        console.log(json);

        var inputs = document.getElementsByTagName('input');

        var itemId = document.getElementById('ledgerItemId')
        for (var i = 0; i < inputs.length; i++) {
            if (inputs[i].id in json) {
                inputs[i].value = json[inputs[i].id];
                if (inputs[i].id == 'ledgerItemId')
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


Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, //month
        "d+": this.getDate(), //day
        "h+": this.getHours(), //hour
        "m+": this.getMinutes(), //minute
        "s+": this.getSeconds(), //second
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
        "S": this.getMilliseconds() //millisecond
    }
    if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
        (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o) if (new RegExp("(" + k + ")").test(format))
        format = format.replace(RegExp.$1,
            RegExp.$1.length == 1 ? o[k] :
                ("00" + o[k]).substr(("" + o[k]).length));
    return format;
}



//版权声明：本文为CSDN博主「蒙奇·D·伊丽莎白」的原创文章，遵循CC 4.0 BY - SA版权协议，转载请附上原文出处链接及本声明。
//原文链接：https://blog.csdn.net/xif3681/article/details/81772432