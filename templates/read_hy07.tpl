
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$title}</p>
                <table class="table table-border table-bordered table-bg mt-40 mb-50">
                    <tr class="active">
                        <th colspan="3">车站：{$rs[0]['station']}</th>
                        <th colspan="4">超偏载监控员：{$rs[0]['jky']}</th>
                        <th colspan="3">{date('Y年n月j日',$rs[0]['rq'])}</th>
                        <th colspan="3">天气：{$rs[0]['tq']}</th>
                    </tr>
                    <tr class="text-c active">
                        <th width="4%" rowspan="2">顺号 </th>
                        <th colspan="4">检测列车情况</th>
                        <th colspan="4">报警车信息</th>
                        <th colspan="3">通知处理情况</th>
                        <th width="64" rowspan="2">备注 </th>
                    </tr>
                    <tr class="text-c active">
                        <th width="8%">测点</th>
                        <th width="8%">时间</th>
                        <th width="8%">车次</th>
                        <th width="8%">主要问题</th>
                        <th width="8%">发站</th>
                        <th width="8%">到站</th>
                        <th width="8%">品名</th>
                        <th width="8%">报警数值</th>
                        <th width="8%">通知事项</th>
                        <th width="8%">被通知人</th>
                        <th width="8%">通知时间</th>
                    </tr>
                    <tbody>
                    {$xh=1}
                    {foreach $rs1 as $r}
                        <tr class="text-c">
                            <td>{$xh++}</td>
                            {for $i=1 to 12}
                                <td>{$r["b$i"]}</td>
                            {/for}
                        </tr>
                    {/foreach}
                    <tr class="active">
                        <th rowspan="9" class="text-c"></th>
                        <th class="text-c">检测列车统计</th>
                        <th colspan="5" class="text-c">按测点统计列数</th>
                        <th class="text-c">合计</th>
                        <td colspan="5" rowspan="10" valign="top"><p><strong>记事：</strong></p>{$rs[0]['js']|nl2br}</td>
                    </tr>
                    <tr class="text-c">
                        <th class="active">数据未上传</th>
                        {for $i=1 to 6}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">确报未匹配</th>
                        {for $i=7 to 12}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">辆数不一致</th>
                        {for $i=13 to 18}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">轴数不一致</th>
                        {for $i=19 to 24}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">整列偏载</th>
                        {for $i=25 to 30}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">明显误报警</th>
                        {for $i=31 to 36}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">其他问题</th>
                        {for $i=37 to 42}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <th class="active">检测总列数</th>
                        {for $i=43 to 48}
                            <td>{$rs[0]["a$i"]}</td>
                        {/for}
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</div>
