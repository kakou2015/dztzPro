
<div class="Hui-admin-article">
<article class="Hui-admin-content clearfix">
    <div class="panel">
        <div class="panel-body">
            <div class="text-c f-24">{$title}</div>
            <table class="table table-border table-bordered table-bg mt-20">
                <tr class="text-c active">
                    <th class="text-c" width="20%">检查人员</th>
                    <th>检查日期</th>
                </tr>
                {foreach $rs1 as $r}
                    <tr class="text-c">
                        <td>{$r['check_user']}</td>
                        <td><a href="?action={$sel|default:'aqzdb_read'}&uid={$r['id']}" class="btn-link">{date('Y年n月j日',$r['check_rq'])}</a></td>
                    </tr>
                {/foreach}
                {$aa = $page_disp|default:''}
                {if $aa neq ''}
                <tr><th colspan="2">{$page_disp}</th></tr>
                {/if}
            </table>
        </div>
    </div>
</article>
</div>
