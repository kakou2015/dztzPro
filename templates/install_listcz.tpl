
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24 mb-20">{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th>ID</th>
                        <th>查询站名</th>
                        <th></th>
                    </tr>
                    {foreach $rs1 as $rs}
                        <tr class="text-c">
                            <td>{$rs['id']}</td>
                            <td>{$rs['cz']}</td>
                            <td><a href="?action=erase_listcz&uid={$rs['id']}" class="btn btn-warning-outline radio-box size-MINI">删除</a> </td>
                        </tr>
                    {/foreach}
                </table>
                <form action="?action=save_listcz" method="post">
                    <table class="table table-border table-bordered table-bg mt-20">
                        <tr>
                            <th class="text-c active" width="30%">站名</th>
                            <td><input type="text" class="input-text" name="station" /></td>
                        </tr>
                        <tr>
                            <th colspan="5">
                                本站名用于查询时显示需要查询的站名；
                                <p class="text-c mt-20">
                                    <button class="btn btn-success radio-box" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存</button>
                                </p>
                            </th>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </article>
</div>
