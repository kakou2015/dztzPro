
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr><td colspan="4" class="text-r">{$rs[0]['sj']}</td></tr>
                    <tr class="text-c"><th>交接项目</th><th colspan="3">交    接    内    容</th></tr>
                    <tr><th width="90" class="text-c">调机情况</th><td colspan="3">{$rs[0]['one1']|strip_tags}</td></tr>
                    <tr><th class="text-c">股道占用情况</th><td colspan="3">{$rs[0]['tow1']}</td></tr>
                    <tr><th class="text-c">铁鞋防溜及人力制动机使用情况</th><td colspan="3">{$rs[0]['three1']}</td></tr>
                    <tr><th class="text-c">天窗</th><td colspan="3">{$rs[0]['four1']}</td></tr>
                    <tr><th class="text-c">车辆技术状态（关门车）</th><td colspan="3">{$rs[0]['five1']}</td></tr>
                    <tr><th class="text-c">备品及其他事项</th><td colspan="3">{$rs[0]['six1']}</td></tr>
                    <tr><th class="text-c">交班者</th><td>{$rs[0]['nine1']}</td>
                        <th class="text-c" width="80">接班者</th><td>{$rs[0]['ten1']}</td></tr>
                </table >
            </div>
        </div>
    </article>
</div>
