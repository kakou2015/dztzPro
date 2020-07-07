
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel" style="width:1600px;">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy30" method="post" class="form">
                    <table class="table table-border table-bordered table-bg mt-20">
                        <tr class="text-c active">
                            <th colspan="10">防护信号领用交回签认表</th>
                            <th colspan="12" class="c-blue">防护信号设置撤除登记表</th>
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
                        <tr>
                            {for $i = 1 to 10}
                                <td>
                                    {if $i eq 7 or $i eq 8 or $i eq 11 or $i eq 12}
                                        {$rs[0]["a$i"]|default:''}
                                        <br/>
                                        <a class="btn btn-secondary-outline radius size-MINI" href="Javascript:fq('h30','a{$i}');">指纹签到</a>
                                    {else}
                                        <input type="text" class="input-text" name="a{$i}" value="{$rs[0]["a$i"]|default:''}"/>
                                    {/if}
                                </td>
                            {/for}
                            {for $i = 1 to 10}
                                <td>
                                    {if $i eq 7 or $i eq 10}
                                        {$rs[0]["b$i"]|default:''}
                                        <br/>
                                        <a class="btn btn-secondary-outline radius size-MINI" href="JavaScript:fq('h30','b{$i}');">指纹签到</a>
                                    {else}
                                        <input type="text" class="input-text" name="b{$i}" value="{$rs[0]["b$i"]|default:''}"/>
                                    {/if}
                                </td>
                            {/for}
                        </tr>
                    </table>
                    <p class="text-c mt-40">
                        <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                    </p>
                    <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                </form>
                <p class="mt-20 mb-50">
                    <a class="btn btn-danger radius" href="task.php?action=end_hy30&uid={$rs[0]['id']}">结束填写</a>
                </p>
            </div>
        </div>
    </article>
{include file="zk.tpl"}
</div>
<script type="text/javascript" src="./finger.js"></script>
<script type="text/javascript" src="./lay_rq.js"></script>
