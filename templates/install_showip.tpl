
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24 mb-20">{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th>ID</th>
                        <th>站名</th>
                        <th>IP</th>
                        <th></th>
                    </tr>
                    {foreach $rs1 as $rs}
                        <tr class="text-c">
                            <td>{$rs['id']}</td>
                            <td>{$rs['station']}</td>
                            <td>{$rs['ip']}</td>
                            <td><a href="?action=erase_showip&uid={$rs['id']}" class="btn btn-warning-outline radio-box size-MINI">删除</a> </td>
                        </tr>
                    {/foreach}
                </table>
           </div>
        </div>
    </article>
</div>
