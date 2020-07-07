
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}货运人员交接班本</p>
    <table class="table table-border table-bordered table-bg">
        <tr>
            <th class="text-c" colspan="2">交接时间：{$rs[0]['rq']}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交班人：{$rs[0]['jbr1']}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接班人：{$rs[0]['jbr2']}
            </th>
        </tr>
        <tr class="text-c active">
            <th>序号</th>
            <th>交 班 内 容</th>
        </tr>
        <tr>
            <th width="90" class="text-c active">1</th>
            <td>
                <strong class="active">承认车：</strong>{$rs[0]['a1']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">2</th>
            <td>
                <strong class="active">早六点装卸：</strong>{$rs[0]['a2']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">3</th>
            <td>
                <strong class="active">待装、待卸车：</strong>{$rs[0]['a3']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">4</th>
            <td>
                <strong class="active">股道停、送电情况：</strong>{$rs[0]['a4']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">5</th>
            <td>
                <strong class="active">防护信号情况：</strong>{$rs[0]['a5']|nl2br}</td>
　        </tr>
        <tr>
            <th width="90" class="text-c active">6</th>
            <td>
                <strong class="active">线路、站台、仓库货物情况：</strong>{$rs[0]['a6']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">7</th>
            <td>
                <strong class="active">篷布、路布、防湿篷布：</strong>{$rs[0]['a7']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">8</th>
            <td>
                <strong class="active">施封锁、货运记录：</strong>{$rs[0]['a8']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">9</th>
            <td>
                <strong class="active">票据交接：</strong>{$rs[0]['a9']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">10</th>
            <td>
                <strong class="active">备品：</strong>{$rs[0]['a10']|nl2br}</td>
        </tr>
        <tr>
            <th width="90" class="text-c active">11</th>
            <td>
                <strong class="active">其他事项：</strong>{$rs[0]['a11']|nl2br}</td>
        </tr>
    </table>
</div>
        </div>
    </article>
</div>
