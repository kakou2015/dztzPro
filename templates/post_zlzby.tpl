
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <style type="text/css">
                        {literal}
                        input[type=text],textarea{border:1px solid green;}
                        body{line-height:30px;}
                        #six1 table{border-top:1px solid #000;border-right:1px solid #000;}
                        #six1 table th,#six1 table td{height:15px;}
                        {/literal}
                    </style>
                    <input type="hidden" id="uid" value="{$rs[0]['id']}">
                    <table class="table table-border table-bordered table-bg">
                        <tr><th colspan="2" class="text-c">接班人员到岗</th><td>助理值班员：{$rs[0]['dg1']}<input id="dg1" title="请输入身份证最后6位" type="text" size="6">                                <a href="javascript:zjpost('dg1')" class="btn-link"> 证件签到</a></td></tr>
                        <tr><td colspan="3" class="text-r"><input type="text" id="rqsj" value="{$rs[0]['sj']}" size="50" readonly="readonly"><a href="javascript:save('sj');" class="btn-link"> 保存</a>
                        </td></tr>
                        <tr class="text-c"><th colspan="2">交接项目</th><th>交    接    内    容</th></tr>
                        <tr><th width="90" class="text-c">一、股道</th><td colspan="2"><textarea id="one1" cols="120" rows="5">{$rs[0]['one1']|strip_tags}</textarea><a href="javascript:save('one1');" class="btn-link"> 保存</a></td></tr>
                        <tr><th class="text-c">二、区间占用情况</th><td colspan="2">
                                <ul>
                                <li><input type="text" id="tow1" value="{$rs[0]['tow1']}" size="120"></li>
                                <li><input type="text" id="tow2" value="{$rs[0]['tow2']}" size="120"></li>
                                <li><input type="text" id="tow3" value="{$rs[0]['tow3']}" size="120"></li>
                                <li><input type="text" id="tow4" value="{$rs[0]['tow4']}" size="120"></li>
                                </ul>
                                <a href="javascript:save2();" class="btn-link"> 保存</a>
                            </td></tr>
                        <tr><th class="text-c">三、防溜情况</th><td colspan="2"><textarea id="three1" cols="120" rows="2">{$rs[0]['three1']|strip_tags}</textarea><a href="javascript:save('three1');" class="btn-link"> 保存</a></td></tr>
                        <tr><th class="text-c">四、装卸防护牌使用情况</th><td colspan="2"><textarea id="four1" cols="120" rows="2">{$rs[0]['four1']|strip_tags}</textarea><a href="javascript:save('four1');" class="btn-link"> 保存</a></td></tr>
                        <tr><th class="text-c">五、单据、行车命令及注意事项</th><td colspan="2"><textarea id="five1" cols="120" rows="5">{$rs[0]['five1']|strip_tags}</textarea><a href="javascript:save('five1');" class="btn-link"> 保存</a></td></tr>
                        <tr><th class="text-c">六、备品及其他事项</th><td colspan="2"><textarea id="six1" cols="120" rows="5">{$rs[0]['six1']|strip_tags}</textarea><a href="javascript:save('six1');" class="btn-link"> 保存</a></td></tr>
                        <tr><th class="text-c">七、卫生情况</th><td colspan="2"><textarea id="seven1" cols="120" rows="2">{$rs[0]['seven1']|strip_tags}</textarea><a href="javascript:save('seven1');" class="btn-link"> 保存</a></td></tr>
                        <tr><th class="text-c">交班者</th><td colspan="2">{$rs[0]['nine1']}<input id="nine1" title="请输入身份证最后6位" type="text" size="6"><a href="javascript:zjpost('nine1')" class="btn-link"> 证件签到</a></td></tr>
                        <tr><th class="text-c">接班者</th><td colspan="2">{$rs[0]['ten1']}<input id="ten1" title="请输入身份证最后6位" type="text" size="6"><a href="javascript:zjpost('ten1')" class="btn-link"> 证件签到</a></td></tr>
                    </table >
                </table>
                <p class="text-c">
                    <input type="hidden" id="uid" value="{$rs[0]['id']}">
                    <a class="btn btn-success radius mr-20" style="line-height:1.6em;margin-top:3px;" href="#" onclick="end();" tilte="结束填写"><i class="icon-ok"></i>结束填写</a>
                </p>
            </div>
        </div>
    </article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
<script src="02.js"></script>
