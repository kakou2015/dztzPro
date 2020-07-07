
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$title}</p>
                <table class="table table-border table-bordered table-bg">
                    <tr class="text-c active">
                        <th>月日</th>
                        <th>时分</th>
                        <th>股道</th>
                        <th>钥匙数量</th>
                        <th>交方签名</th>
                        <th>接方签名</th>
                    </tr>
                    {foreach $rs1 as $rs}
                        <tr class="text-c">
                            <td>{$rs['rq']}</td>
                            <td>{$rs['sj']}</td>
                            <td>{$rs['gd']}</td>
                            <td>{$rs['ys']}</td>
                            <td>{$rs['jfqm1']}</td>
                            <td>{$rs['jfqm2']}</td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="6">{$page_disp}</th> </tr>
                </table>
            </div>
        </div>
    </article>
</div>

