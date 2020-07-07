
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$title}</p>
                <table class="table table-border table-bordered table-bg">
                    <thead>
                    <tr class="text-c">
                        <th width="30">顺号</th>
                        <th width="120">受理（审核）日期</th>
                        <th width="100">审批日期</th>
                        <th width="80">编制单位</th>
                        <th width="80">审批单位</th>
                        <th width="60">编号</th>
                        <th width="80">货物品名</th>
                        <th>方案内容摘要</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $rs1 as $rs}
                        <tr class="text-c"><td>{$xh++}</td>
                            {for $i=1 to 6}
                                <td>{$rs["a$i"]}</td>
                            {/for}
                            <td class="text-l">{$rs['a8']|nl2br}</td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="9">{$page_disp}</th> </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</div>
