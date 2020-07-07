
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th class="text-c" width="20%">车站</th>
                        <th>内容</th>
                    </tr>
                    {foreach $rs1 as $r}
                        <tr class="text-c">
                            <td>{$r['cz']}</td>
                            <td><a href="?action=worklog&uid={$r['id']}" class="btn-link">{date('Y年n月j日',$r['rq'])}{$r['cz_title']}</a>
                            {if $r['lockend'] eq 'false'}
                                <label class="btn btn-warning-outline radius size-MINI ml-20">未完成填写</label>
                            {/if}
                            </td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="3">{$page_disp}</th> </tr>
                </table>
            </div>
        </div>
    </article>
</div>
