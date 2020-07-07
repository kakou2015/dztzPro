
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
    <form action="task.php?action=save_hy40" method="post">
    <table class="table table-border table-bordered table-bg mt-20">
        <tr>
            <th class="text-c" colspan="2">交接时间：<input readonly="readonly" value="{$rs[0]['rq']|default:date('Y-n-j G:i:s')}" id="rqsj" name="rq" title="请输入接班时间" type="text" class="input-text" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交班人：{$rs[0]['jbr1']}<input id="jbr1" class="input-text mr-10" style="width: 150px;" title="请输入身份证最后6位" type="text" size="6"><input type="button" value="证件签到" onclick="hy_zj('jbr1','ledger_h40')" class="btn btn-secondary-outline radius size-MINI">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接班人：{$rs[0]['jbr2']}<input id="jbr2" title="请输入身份证最后6位" class="input-text mr-10" style="width: 150px;" type="text" size="6"><input type="button" value="证件签到" onclick="hy_zj('jbr2','ledger_h40')" class="btn btn-secondary-outline radius size-MINI">
            </th>
        </tr>
        <tr class="text-c active">
            <th>序号</th>
            <th>交 班 内 容</th>
        </tr>
        <tr>
            <th width="90" class="text-c active">1</th>
            <td>
                <p class="active">承认车：</p>
                <textarea class="textarea" name="a1" cols="120" rows="2">{$rs[0]['a1']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">2</th>
            <td>
                <p class="active">早六点装卸：</p>
                <textarea class="textarea" name="a2" cols="120" rows="2">{$rs[0]['a2']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">3</th>
            <td>
                <p class="active">待装、待卸车：</p>
                <textarea class="textarea" name="a3" cols="120" rows="2">{$rs[0]['a3']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">4</th>
            <td>
                <p class="active">股道停、送电情况：</p>
                <textarea class="textarea" name="a4" cols="120" rows="2">{$rs[0]['a4']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">5</th>
            <td>
                <p class="active">防护信号情况：</p>
                <textarea class="textarea" name="a5" cols="120" rows="2">{$rs[0]['a5']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">6</th>
            <td>
                <p class="active">线路、站台、仓库货物情况：</p>
                <textarea class="textarea" name="a6" cols="120" rows="2">{$rs[0]['a6']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">7</th>
            <td>
                <p class="active">篷布、路布、防湿篷布：</p>
                <textarea class="textarea" name="a7" cols="120" rows="2">{$rs[0]['a7']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">8</th>
            <td>
                <p class="active">施封锁、货运记录：</p>
                <textarea class="textarea" name="a8" cols="120" rows="2">{$rs[0]['a8']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">9</th>
            <td>
                <p class="active">票据交接：</p>
                <textarea class="textarea" name="a9" cols="120" rows="2">{$rs[0]['a9']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">10</th>
            <td>
                <p class="active">备品：</p>
                <textarea class="textarea" name="a10" cols="120" rows="2">{$rs[0]['a10']|strip_tags}</textarea></td>
        </tr>
        <tr>
            <th width="90" class="text-c active">11</th>
            <td>
                <p class="active">其他事项：</p>
                <textarea class="textarea" name="a11" cols="120" rows="2">{$rs[0]['a11']|strip_tags}</textarea></td>
        </tr>
    </table>
    <p class="mt-40 text-c">
        <input type="hidden" id="uid" name="uid" value="{$rs[0]['id']}">
            <button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
    </p>
    </form>
    <p>
        <a href="task.php?action=end_hy40&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
    </p>
</div>
        </div>
    </article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
