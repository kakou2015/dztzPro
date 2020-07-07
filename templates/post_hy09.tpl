
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy09" method="post" class="form">
                        <table class="table table-border table-bordered table-bg">
                            <tr class="text-c active">
                                <th>月日</th>
                                <th>时分</th>
                                <th>股道</th>
                                <th>钥匙数量</th>
                                <th>交方签名</th>
                                <th>接方签名</th>
                            </tr>
                            <tr class="text-c">
                                <td>{$rs[0]['rq']}</td>
                                <td>{$rs[0]['sj']}</td>
                                <td><input type="text" class="input-text" name="gd" value="{$rs[0]['gd']}"></td>
                                <td><input type="text" class="input-text" name="ys" value="{$rs[0]['ys']}"></td>
                                <td>{$rs[0]['jfqm1']}<input type="button" onclick="fq('ledger_isolate_key','jfqm1');" value="指纹签名" class="btn btn-secondary-outline radius size-MINI"><input type="text" id="jfqm1" style="width:100px;" class="input-text ml-5 mr-5"><input type="button" value="证件签到" onclick="hy_zj('jfqm1','ledger_isolate_key');" class="btn btn-secondary-outline radius size-MINI"></td>
                                <td>{$rs[0]['jfqm2']}<input type="button" onclick="fq('ledger_isolate_key','jfqm2');" value="指纹签名" class="btn btn-secondary-outline radius size-MINI"><input type="text" id="jfqm2" style="width: 100px;" class="input-text ml-5 mr-5"><input type="button" value="证件签到" onclick="hy_zj('jfqm2','ledger_isolate_key');" class="btn btn-secondary-outline radius size-MINI"></td>
                            </tr>
                        </table >
                    <p class="text-c mt-40">
                    <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                    <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                </p>
                </form>
                <p class="mt-20">
                    <a href="task.php?action=end_hy09&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
                </p>
            </div>
        </div>
    </article>
{include file="zk.tpl"}
</div>
<script src="./finger.js"></script>
<script src="./lay_rq.js"></script>
