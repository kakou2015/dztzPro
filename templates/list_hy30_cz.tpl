
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel" style="width:1800px;">
            <div class="panel-body">
                <p class="text-c f-24">{$title}</p>
                <table class="table table-border table-bordered table-bg">
                    <tr class="text-c active">
                        <th colspan="10">防护信号领用交回签认表</th>
                        <th colspan="10" class="c-blue">防护信号设置撤除登记表</th>
                    </tr>
                    <tr class="text-c active">
                        <th width="4%" rowspan="2">日期</th>
                        <th width="5%" rowspan="2">作业班组</th>
                        <th width="5%" rowspan="2">作业地点</th>
                        <th width="3%" rowspan="2">防护信号编号</th>
                        <th colspan="3">防护信号领用签认</th>
                        <th colspan="3">防护信号交回签认</th>
                        <th width="4%" rowspan="2" class="c-blue">日期</th>
                        <th width="5%" rowspan="2" class="c-blue">作业班组</th>
                        <th width="5%" rowspan="2" class="c-blue">作业地点</th>
                        <th width="3%" rowspan="2" class="c-blue">防护信号编号</th>
                        <th colspan="3" class="c-blue">防护信号设置签认</th>
                        <th colspan="3" class="c-blue">防护信号撤除签认</th>
                    </tr>
                    <tr class="text-c active">
                        <th>领用时间</th>
                        <th>使用人</th>
                        <th>保管人</th>
                        <th>交回时间</th>
                        <th>交回人</th>
                        <th>保管人</th>
                        <th class="c-blue">设置时间</th>
                        <th class="c-blue">设置人</th>
                        <th class="c-blue">货运员</th>
                        <th class="c-blue">撤除时间</th>
                        <th class="c-blue">撤除人</th>
                        <th class="c-blue">货运员</th>
                    </tr>
                    {foreach $rs1 as $rs}
                        <tr class="text-c" title="{$rs['id']} | {$rs['cip']}">
                            {for $i = 1 to 10}
                                <td>{$rs["a$i"]}</td>
                            {/for}
                            {for $i = 1 to 10}
                                <td class="c-blue">{$rs["b$i"]}</td>
                            {/for}
                        </tr>
                    {/foreach}
                    <tr>
                        <th colspan="23">{$page_disp}</th>
                    </tr>
                </table>
            </div>
        </div>
    </article>
</div>
