
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$title}</div>
                <div class="f-16">
                        <form class="text-c form" action="?action=save_admin" method="post">
                            <table class="table table-border table-bordered table-bg mt-20">
                                <tr class="text-c active">
                                    <th>车站（科室）</th>
                                    <th>姓名</th>
                                    <th>登录ID</th>
                                    <th>密码</th>
                                    <th>管理员</th>
                                </tr>
                                    <tr class="text-c">
                                        <td><select class="select" name="division">
                                                <option>{$rs[0]['division']}</option>
                                                {foreach $rs2 as $r}
                                                    <option>{$r['cz']}</option>
                                                {/foreach}
                                            </select>
                                            </td>
                                        <td>{$rs[0]['username']}</td>
                                        <td>{$rs[0]['id_number']}</td>
                                        <td><input type="text" name="passwd" class="input-text" value="{$rs[0]['passwd']}" /></td>
                                        <td>{$rs[0]['admin']}</td>
                                    </tr>
                            </table>
                            <p class="text-c mt-40 mb-40">
                                <button type="submit" class="btn btn-success radius"><i class="Hui-iconfont">&#xe632;</i> 修改保存</button>
                                <input type="hidden" name="uid" value="{$rs[0]['id']}">
                            </p>
                        </form>
                    <p>
                        检查到您的IP地址是：{$cip}<br />查询到已经录入{$cc[0][0]}条指纹；<a class="ml-20 btn-link" href="Javascript:RegFinger();">点击录入指纹</a><a class="ml-20 btn-link" href="Javascript:delFinger();">删除我的指纹数据</a>
                    </p>
                    <p>使用的指纹仪为 ZKTeco Live 20R（中控智慧科技股份有限公司的指纹采集器Live20R）<a class="ml-40 btn-link" href="../setup.exe">指纹仪驱动下载</a></p>
                    <form action="post.php" method="post" id="faf">
                        <input type="hidden" name="action" value="save_finger">
                        <input type="hidden" name="uid" id="uid" value="{$user}">
                        <input type="hidden" name="finger" id="finger">
                    </form>
                    {include file="zk.tpl"}
                </div>
            </div>
        </div>
    </article>
</div>
<script src="./zk_finger.js"></script>
