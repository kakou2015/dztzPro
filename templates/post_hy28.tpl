
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy28" method="post" class="form">
                    <table class="table table-border table-bordered table-bg mt-20">
                        <thead><tr class="text-c">
                            <th>顺号</th>
                            <th>受理（审核）日期</th>
                            <th>审批日期</th>
                            <th>编制单位</th>
                            <th>审批单位</th>
                            <th>编号</th>
                            <th>货物品名</th>
                            <th>方案内容摘要</th>
                        </tr></thead>
                        <tr class="text-c">
                            <td>1</td>
                            <td><input type="text" name="a1" id="rqh" readonly="readonly" value="{$rs[0]['a1']}" class="input-text"></td>
                            <td><input type="text" name="a2" id="rqh" readonly="readonly" value="{$rs[0]['a2']}" class="input-text"></td>
                            <td><input type="text" name="a3" value="{$rs[0]['a3']}"class="input-text"></td>
                            <td><input type="text" name="a4" value="{$rs[0]['a4']}"class="input-text"></td>
                            <td><input type="text" name="a5" value="{$rs[0]['a5']}" class="input-text"></td>
                            <td><input type="text" name="a6" value="{$rs[0]['a6']}" class="input-text"></td>
                            <td><textarea name="a8" cols="30" rows="5" class="textarea">{$rs[0]['a8']|strip_tags}</textarea></td>
                        </tr>
                    </table >
                    <p class="text-c mt-40">
                        <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                    </p>
                    <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                </form>
                <p class="mt-20 mb-50">
                    <a class="btn btn-danger radius" href="task.php?action=end_hy28&uid={$rs[0]['id']}">结束填写</a>
                </p>
            </div>
        </div>
    </article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
