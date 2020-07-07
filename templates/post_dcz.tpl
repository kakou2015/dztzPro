
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
                <input type="hidden" id="uid" value="{$rs[0]['id']}">
                <table class="table table-border table-bordered table-bg mt-20">
                    <style type="text/css">
                        {literal}
                        input[type=text],textarea{border:1px solid green;}
                        body{line-height:30px;}
                        #six1 table{border-top:1px solid #000;border-right:1px solid #000;}
                        #six1 table th,#six1 table td{height:15px;}
                        {/literal}
                    </style>
                    <tr><td colspan="4" class="text-r"><input readonly="readonly" type="text" id="rqsj" value="{$rs[0]['sj']}" size="50"><a href="javascript:save('sj');" class="btn-link"> 保存</a></td></tr>
                    <tr class="text-c"><th>交接项目</th><th colspan="3">交    接    内    容</th></tr>
                    <tr><th width="90" class="text-c">调机情况</th><td colspan="3"><textarea id="one1" cols="120" rows="2">{$rs[0]['one1']|strip_tags}</textarea><a href="javascript:save('one1');" class="btn-link"> 保存</a></td></tr>
                    <tr><th class="text-c">股道占用情况</th><td colspan="3"><textarea id="tow1" cols="120" rows="2">{$rs[0]['tow1']|strip_tags}</textarea><a href="javascript:save('tow1');" class="btn-link"> 保存</a></td></tr>
                    <tr><th class="text-c">铁鞋防溜及人力制动机使用情况</th><td colspan="3"><textarea id="three1" cols="120" rows="2">{$rs[0]['three1']|strip_tags}</textarea><a href="javascript:save('three1');" class="btn-link"> 保存</a></td></tr>
                    <tr><th class="text-c">天窗</th><td colspan="3"><textarea id="four1" cols="120" rows="2">{$rs[0]['four1']|strip_tags}</textarea><a href="javascript:save('four1');" class="btn-link"> 保存</a></td></tr>
                    <tr><th class="text-c">车辆技术状态（关门车）</th><td colspan="3"><textarea id="five1" cols="120" rows="2">{$rs[0]['five1']|strip_tags}</textarea><a href="javascript:save('five1');" class="btn-link"> 保存</a></td></tr>
                    <tr><th class="text-c">备品及其他事项</th><td colspan="3"><textarea id="six1" cols="120" rows="2">{$rs[0]['six1']|strip_tags}</textarea><a href="javascript:save('six1');" class="btn-link"> 保存</a></td></tr>
                    <tr><th class="text-c">交班者</th><td>{$rs[0]['nine1']}<input id="nine1" title="请输入身份证最后6位" type="text" size="6"><a href="javascript:zjpost('nine1');" class="btn-link"> 证件签到</a></td>
                        <th class="text-c" width="80">接班者</th><td>{$rs[0]['ten1']}<input id="ten1" title="请输入身份证最后6位" type="text" size="6"><a href="javascript:zjpost('ten1');" class="btn-link"> 证件签到</a></td></tr>
                </table >
                <p class="text-c mt-40">
                    <a href="javascript:end();" class="btn btn-success radius"> 结束填写</a>
                </p>
            </div>
        </div>
    </article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
<script src="03.js"></script>
