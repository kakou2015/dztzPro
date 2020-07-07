
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24 mb-20">{$title}</div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th>ID</th>
                        <th>站名</th>
                        <th>第一个IP地址</th>
                        <th></th>
                    </tr>
                    {foreach $rs1 as $rs}
                        <tr class="text-c">
                            <td>{$rs['id']}</td>
                            <td><a href="?action=showip&uid={$rs['id']}" class="btn-link">{$rs['station']}</a></td>
                            <td>{$rs['gateway']}</td>
                            <td><a href="?action=erase_ip&uid={$rs['id']}" class="btn btn-warning-outline radio-box size-MINI">删除</a> </td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="5">{$page_disp}</th> </tr>
                </table>
                <form action="?action=save_ip" method="post">
                    <table class="table table-border table-bordered table-bg mt-20">
                        <tr class="text-c active">
                            <th>站名</th>
                            <th>网段</th>
                        </tr>
                        <tr>
                            <td><input type="text" class="input-text" name="station" /></td>
                            <td><input type="text" style="width: 40%;" class="input-text" name="txt" value="10.107.195" />.<input type="text" class="input-text" style="width: 20%;" name="txt1" value="1" />——<input type="text" style="width: 20%;" class="input-text" name="txt2" value="254" /></td>
                        </tr>
                        <tr>
                            <th colspan="5">
                                网段的填写如示例，第1框填写站名，第2框填写开始地址，第3框填写结束地址；
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
