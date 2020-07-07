
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th class="text-c" width="20%">车站</th>
                        <th>年月</th>
                    </tr>
                    {foreach $rs1 as $r}
                        <tr class="text-c">
                            <td>{$r['c1']}</td>
                            <td><a href="?action=disp_kq_cz&station={$r['c1']}&rq={$r['rq']}" class="btn-link">{$r['rq']|cat:'01 00:00:00'|date_format:"%G-%m"}</a></td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="2">{$page_disp}</th> </tr>
                </table>
            </div>
        </div>
    </article>
</div>
