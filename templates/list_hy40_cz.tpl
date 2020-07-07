
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <table class="table table-bg mt-20">
                    <tr>
                        <th class="text-c f-24">{$title}</th>
                    </tr>
                </table>
        <table class="table table-border table-bordered table-bg">
            <tr class="text-c active">
                <th>序号</th>
                <th>交班时间</th>
                <th>交接人</th>
                <th>接班人</th>
            </tr>
            {foreach $rs1 as $rs}
            <tr class="text-c" title="{$rs['id']} | {$rs['cip']}">
                <td>{$xh++}</td>
                <td><a href="task.php?action=read_hy40&uid={$rs['id']}" class="btn-link">{$rs['rq']|default:'还未填写'}</a></td>
                <td>{$rs['jbr1']}</td>
                <td>{$rs['jbr2']}</td>
            </tr>
            {/foreach}
            <tr><th colspan="23">{$page_disp}</th></tr>
        </table>
</div>
        </div>
    </article>
</div>
