
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$title}</p>
    <table class="table table-border table-bordered table-bg mt-20">
        <tr class="text-c active"><th>序号</th><th>正在填写的</th><th>操作</th></tr>
        {$i=1}{foreach $rs1 as $rs}
        <tr class="text-c" title="{$rs['cip']}">
            <td class="col-1">{$i++}</td>
            <td><a href="task.php?action=post_hy40&uid={$rs['id']}" class="btn-link radius">正在填写的{$rs['rq']}交接班本</a></td>
            <td class="col-1">
                <a href="task.php?action=erase_hy40&uid={$rs['id']}" class="btn btn-warning-outline radio-box size-MINI"><i class="Hui-iconfont">&#xe6a6;</i> 删除</a>
            </td>
        </tr>
        {/foreach}
    </table>
</div>
        </div>
    </article>
</div>
