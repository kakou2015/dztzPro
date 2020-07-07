
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <table class="table table-bg mt-20">
                    <tr>
                        <th class="text-c f-24">{$title}</th>
                    </tr>
                </table>
                <table class="table table-border table-bordered table-bg mt-5">
                    <thead>
                    <tr class="text-c">
                        <th width="10%">序号</th>
                        <th>日期</th>
                        <th>班次</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $rs1 as $rs}
                        <tr class="text-c">
                            <td>{$xh++}</td>
                            <td><a href="task.php?action=read_hy12&uid={$rs['id']}" class="btn-link">{date('Y年n月j日',$rs['rq']|default:time())}</a> </td>
                            <td>{$rs['a1']}</td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="3">{$page_disp}</th></tr>
                </table>
            </div>
        </div>
    </article>
</div>
