
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy07" method="post">
                <table class="table table-border table-bordered table-bg mt-40">
                    <tr class="active">
                        <th colspan="3">车站：{$rs[0]['station']}</th>
                        <th colspan="4">超偏载监控员：<input type="text" class="input1" name="jky" value="{$rs[0]['jky']}"></th>
                        <th colspan="3"><input type="text" class="input-text" id="rq" name="rq" value="{date('Y-n-j',$rs[0]['rq'])}" readonly="readonly"></th>
                        <th colspan="3">天气：<input type="text" class="input1" name="tq" value="{$rs[0]['tq']}"></th>
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
                    <tr><td colspan="13"><mark>说明：当测点不填写时，此行则删除！</mark></td> </tr>
                    {foreach $rs1 as $r}
                        <tr class="text-c">
                            <td>{$xh++}<input type="hidden" name="uid1[]" value="{$r['id']}"></td>
                            {for $i=1 to 12}
                                <td><input type="text" class="input-text" name="b{$i}[]" value="{$r["b$i"]}" /></td>
                            {/for}
                        </tr>
                    {/foreach}
                    <tr class="text-c" id="sh1">
                        <td>1<input type="hidden" id="sh" value="1"><input type="hidden" id="eh" value="1"><a href="javascript:fhy_07();" class="btn btn-success-outline radius size-MINI">增加</a><input type="hidden" name="uid1[]" value="0"></td>
                        {for $i=1 to 12}
                            <td><input type="text" class="input-text" name="b{$i}[]"></td>
                        {/for}
                    </tr>
                    <tr class="active">
                        <td rowspan="9" class="text-c"></td>
                        <td class="text-c">检测列车统计</td>
                        <td colspan="5" class="text-c">按测点统计列数</td>
                        <td class="text-c">合计</td>
                        <td colspan="5" rowspan="10">记事：<textarea cols="" rows="" class="textarea" name="js" style="height: 400px">{$rs[0]['js']|strip_tags}</textarea></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">数据未上传</td>
                        {for $i=1 to 6}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">确报未匹配</td>
                        {for $i=7 to 12}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">辆数不一致</td>
                        {for $i=13 to 18}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">轴数不一致</td>
                        {for $i=19 to 24}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">整列偏载</td>
                        {for $i=25 to 30}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">明显误报警</td>
                        {for $i=31 to 36}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">其他问题</td>
                        {for $i=37 to 42}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    <tr class="text-c">
                        <td class="active">检测总列数</td>
                        {for $i=43 to 48}
                            <td><input type="text" class="input-text" value="{$rs[0]["a$i"]}" name="a{$i}"></td>
                        {/for}
                    </tr>
                    </tbody>
                </table>
                    <p class="text-c mt-40">
                        <button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                        <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                    </p>
                </form>
                <p class="mt-20">
                    <a href="task.php?action=end_hy07&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
                </p>
            </div>
        </div>
    </article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
