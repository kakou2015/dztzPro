
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$title}</p>
                <table class="table table-border table-bordered table-bg mt-5">
                    <thead>
                    <tr class="text-c">
                        <th width="8.2%" rowspan="2">日期</th>
                        <th width="8.2%" rowspan="2">发（到）站</th>
                        <th width="8.2%" rowspan="2">发（收）货人</th>
                        <th width="8.2%" rowspan="2">办理种类</th>
                        <th width="8.2%" rowspan="2">货票号码</th>
                        <th colspan="3">票据记载</th>
                        <th colspan="3">实际检查</th>
                        <th rowspan="2">备注</th>
                    </tr>
                    <tr class="text-c">
                        <th width="8.2%">货物件数</th>
                        <th width="8.2%">货物品名</th>
                        <th width="8.2%">货物重量</th>
                        <th width="8.2%">货物件数</th>
                        <th width="8.2%">货物品名</th>
                        <th width="8.2%">货物重量</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $rs1 as $rs}
                    <tr class="text-c">
                        <td>{date('Y年n月j日',$rs['rq'])}</td>
                        {for $i=1 to 11}
                            <td>{$rs["a$i"]}</td>
                        {/for}
                    </tr>
                        {/foreach}
                    <tr><th colspan="12">{$page_disp}</th> </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</div>
