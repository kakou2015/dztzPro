
<div class="Hui-admin-article">
<article class="Hui-admin-content clearfix">
    <div class="panel">
        <div class="panel-body">
            <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
            <table class="table table-border table-bordered table-bg mt-20">
                <table class="table table-border table-bordered table-bg">
                    <tr><th colspan="2" class="text-c">接班人员到岗</th><td>助理值班员：{$rs[0]['dg1']}</td></tr>
                    <tr><td colspan="3" class="text-r">{$rs[0]['sj']}</td></tr>
                    <tr class="text-c"><th colspan="2">交接项目</th><th>交    接    内    容</th></tr>
                    <tr><th width="90" class="text-c">一、股道</th><td colspan="2">{$rs[0]['one1']}</td></tr>
                    <tr><th class="text-c">二、区间占用情况</th><td colspan="2">
                            <ul>
                                <li>{$rs[0]['tow1']}</li>
                                <li>{$rs[0]['tow2']}</li>
                                <li>{$rs[0]['tow3']}</li>
                                <li>{$rs[0]['tow4']}</li>
                            </ul>
                        </td></tr>
                    <tr><th class="text-c">三、防溜情况</th><td colspan="2">{$rs[0]['three1']}</td></tr>
                    <tr><th class="text-c">四、装卸防护牌使用情况</th><td colspan="2">{$rs[0]['four1']}</td></tr>
                    <tr><th class="text-c">五、单据、行车命令及注意事项</th><td colspan="2">{$rs[0]['five1']}</td></tr>
                    <tr><th class="text-c">六、备品及其他事项</th><td colspan="2">{$rs[0]['six1']}</td></tr>
                    <tr><th class="text-c">七、卫生情况</th><td colspan="2">{$rs[0]['seven1']}</td></tr>
                    <tr><th class="text-c">交班者</th><td colspan="2">{$rs[0]['nine1']}</td></tr>
                    <tr><th class="text-c">接班者</th><td colspan="2">{$rs[0]['ten1']}</td></tr>
                </table >
            </table>
        </div>
    </div>
</article>
</div>
