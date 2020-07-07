
<div class="Hui-admin-article">
<article class="Hui-admin-content clearfix">
    <div class="panel">
        <div class="panel-body">
            <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
            <table class="table table-border table-bordered table-bg mt-20">
<style type="text/css">
    {literal}
    input[type=text],textarea{border:1px solid green;}
    body{line-height:30px;}
    #six1 table{border-top:1px solid #000;border-right:1px solid #000;}
    #six1 table th,#six1 table td{height:15px;}
    {/literal}
</style>
    <tbody>
    <tr><th class="text-c" width="16%">接班人员到岗</th>
        <td width="28%">值班员：{$rs[0]['dg1']}</td>
        <td width="28%">助理值班员（内勤）：{$rs[0]['dg2']}</td>
        <td width="28%">助理值班员（外勤）：{$rs[0]['dg3']}</td></tr>
    <tr><td colspan="4" class="text-r" id="text">交接班时间：{$rs[0]['sj']}</td></tr>
    <tr><th class="text-c">交接项目</th><th colspan="3" class="text-c">交接内容</th></tr>
    <tr><th class="text-c">一、股道占用情况</th>
        <td colspan="3">{$rs[0]['one1']}</td>
    </tr>
    <tr><th class="text-c">二、区间占用情况</th>
        <td colspan="3">{$rs[0]['tow1']}
            <br />{$rs[0]['tow2']}
            <br />{$rs[0]['tow3']}
            <br />{$rs[0]['tow4']}
        </td></tr>
    <tr><th class="text-c">三、防溜情况</th><td colspan="3">
            {$rs[0]['three1']}
            </td></tr>
    <tr><th class="text-c">四、装卸防护牌使用情况</th><td colspan="3">
            {$rs[0]['four1']}
            </td></tr>
    <tr><th class="text-c">五、隔离开关</th>
        <td colspan="3">
            {$rs[0]['five2']}  道送电位&emsp;&emsp;{$rs[0]['five3']} 道断电位&emsp;&emsp;隔离开关钥匙 {$rs[0]['five4']} 把&emsp;&emsp;
        </td></tr>
    <tr><th class="text-c">六、计数器、设备状态、施封锁状态及路票</th><td colspan="3">
            计数器号码：<br />
            <div id="six1" contenteditable="true">{$rs[0]['six1']}</div>
            路票号码：<br />
            {$rs[0]['six21']}<br />
            {$rs[0]['six22']}<br />
            {$rs[0]['six23']}<br />
            {$rs[0]['six24']}<br />
            设备状态：<br>
            {$rs[0]['six3']}<br />
            施封状态：<br />
            {$rs[0]['six4']}
        </td></tr>
    <tr><th class="text-c">七、单据、行车命令、及注意事项</th>
        <td colspan="3">
            {$rs[0]['seven1']}
        </td></tr>
    <tr><th class="text-c">八、备品及其他注意事项</th><td colspan="3">
            备品{$rs[0]['eight1']}备品柜钥匙{$rs[0]['eight2']}把，手摇把保管箱钥匙{$rs[0]['eight3']}把，列尾主机钥匙{$rs[0]['eight4']}把<br />
            人力制动机紧固器{$rs[0]['eight5']}个，号码：{$rs[0]['eight6']}<br />
            列车无线调度通信设备便携台{$rs[0]['eight7']}台，作用状态：{$rs[0]['eight8']}<br />
            列车无线调度通信设备作用状态：{$rs[0]['eight9']}<br />
            防溜铁鞋{$rs[0]['eight10']}只，号码：{$rs[0]['eight11']}<br />
            防溜铁鞋及人力制动机紧固器钥匙{$rs[0]['eight12']}把，语音记录装置作用状态：{$rs[0]['eight13']}<br />
            灯显设备：{$rs[0]['eight14']}<br />
            其他：<br />{$rs[0]['eight15']}
        </td></tr>
    <tr><th class="text-c">交班者</th>
        <td>值班员：{$rs[0]['nine1']}</td>
        <td>助理值班员（内勤）：{$rs[0]['nine2']}</td>
        <td>助理值班员（外勤）：{$rs[0]['nine3']}</td></tr>
    <tr><th class="text-c">接班者</th>
        <td>值班员：{$rs[0]['ten1']}</td>
        <td>助理值班员（内勤）：{$rs[0]['ten2']}</td>
        <td>助理值班员（外勤）：{$rs[0]['ten3']}</td></tr>
    </tbody>
</table>
</p>
</div>
    </div>
</article>
</div>
