
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$title}<sub>(正在填写的)</sub></p>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th width="10%">序号</th>
                        <th>日期</th>
                        <th width="15%">操作</th>
                    </tr>
                    {$i=1}{foreach $rs1 as $rs}
                        <tr class="text-c" title="{$rs['cip']}">
                            <td class="col-1">{$i++}</td>
                            <td><a href="task.php?action=post_hy30&uid={$rs['id']}" class="btn-link radius">{$rs['rq']}正在填写的签认表</a></td>
                            <td class="col-1">
                                {if $rs['cip'] eq $ip}
                                    <a href="task.php?action=erase_hy30&uid={$rs['id']}"  class="btn btn-warning radius size-MINI"><i class="Hui-iconfont">&#xe6a6;</i> 删除</a>
                                {/if}
                            </td>
                        </tr>
                    {/foreach}
                </table>
            </div>
        </div>
    </article>
</div>
