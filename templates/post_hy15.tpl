
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy15" method="post" class="form">
                <table class="table table-border table-bordered table-bg mt-20">
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
                    <tr class="text-c">
                        <td><input type="text" class="input-text" name="rq" id="rq" value="{date('Y-n-j',$rs[0]['rq']|default:time())}" readonly="readonly"></td>
                        {for $i=1 to 11}
                            <td><input type="text" class="input-text" name="a{$i}" value="{$rs[0]["a$i"]}"></td>
                        {/for}
                    </tr>
                    </tbody>
                </table>
                    <p class="text-c mt-40">
                        <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                        <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                    </p>
                </form>
                <p class="mt-20">
                    <a href="task.php?action=end_hy15&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
                </p>
            </div>
        </div>
    </article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
