
<div class="Hui-admin-article">
<article class="Hui-admin-content clearfix">
    <div class="panel">
        <div class="panel-body">
            <div class="text-c f-24">{$rs[0]['station']}安全生产指导簿</div>
            <form action="?action=save_edit_aqzdb" method="post">
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c">
                        <th width="50%" colspan="3">检查提出问题、改进意见及指示</th>
                        <th width="50%" colspan="2">答复意见及措施</th>
                    </tr>
                    <tr class="text-l" valign="top">
                        <td colspan="3">{$rs[0]['a1']|nl2br}
                            </td>
                        <td colspan="2"><textarea cols="" rows="" class="textarea" name="a2" style="height: 400px">{$rs[0]['a2']}</textarea>
                        <select class="select" name="lockend">
                            <option value="false">填写整改，保存修改后还可以编辑；</option>
                            <option value="true">整改完毕，保存修改后不可编辑；</option>
                        </select>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td width="15%">检查人签名：</td>
                        <td>{$rs[0]['check_user']}</td>
                        <td width="25%">{date('Y年n月j日',$rs[0]['check_rq'])}</td>
                        <td width="25%">被检查人签名：<input type="text" class="input-text" name="post_user" value="{$rs[0]['post_user']|default:$smarty.cookies.username}" style="width: 200px;"></td>
                        <td width="25%"><input type="text" class="input-text" name="post_rq" id="rq" value="{date('Y-n-j')}" readonly="readonly"></td>
                    </tr>
                    <tr class="text-c">
                        <td colspan="5"><button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button></td>
                    </tr>
                    <input type="hidden" name="uid" value="{$rs[0]['id']}" />
                </table>
            </form>
        </div>
    </div>
</article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
