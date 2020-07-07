
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
                <form action="08_post.php" method="post">
                    <input type="hidden" id="uid" name="uid" value="{$rs[0]['id']}">
                    <table class="table table-border table-bordered table-bg mt-20">
                        <tr class="text-c active">
                            <th width="5%" rowspan="2">月</th>
                            <th width="5%" rowspan="2">日</th>
                            <th width="10%" rowspan="2">时间</th>
                            <th width="5%" rowspan="2">股道</th>
                            <th width="5%" rowspan="2">停电或送电</th>
                            <th width="10%" rowspan="2">事由</th>
                            <th width="10%" rowspan="2">请求人</th>
                            <th width="20%" colspan="2">批准者</th>
                            <th width="30%" colspan="3">执行者</th>
                        </tr>
                        <tr class="text-c active">
                            <th width="10%">时间</th>
                            <th width="10%">姓名</th>
                            <th width="10%">时间</th>
                            <th width="10%">操作者</th>
                            <th width="10%">监护者</th>
                        </tr>
                        <tr class="text-c">
                            <td>{$rs[0]['a1']}</td>
                            <td>{$rs[0]['a2']}</td>
                            <td>{$rs[0]['a3']}</td>
                            <td><input type="text" class="input-text" name="a4" value="{$rs[0]['a4']}"></td>
                            <td><select name="a5" class="select">
                                    <option>{$rs[0]['a5']}</option>
                                    <option>停电</option>
                                    <option>送电</option>
                                </select></td>
                            <td><input type="text" class="input-text" name="a6" value="{$rs[0]['a6']}"></td>
                            <td>{$rs[0]['a7']}<input id="a7" title="请输入身份证最后6位" type="text" class="input-text"><a
                                        href="javascript:zjpost('a7');"
                                        class="btn btn-secondary-outline radius size-MINI mt-10"> 证件签到</a></td>
                            <td>{$rs[0]['a8']}</td>
                            <td>{$rs[0]['a9']}<input id="a9" title="请输入身份证最后6位" type="text" class="input-text"><a
                                        href="javascript:zjpost('a9')"
                                        class="btn btn-secondary-outline radius size-MINI mt-10"> 证件签到</a></td>
                            <td>{$rs[0]['a10']}</td>
                            <td>{$rs[0]['a11']}<input id="a11" title="请输入身份证最后6位" type="text" class="input-text"><a
                                        href="javascript:zjpost('a11')"
                                        class="btn btn-secondary-outline radius size-MINI mt-10"> 证件签到</a></td>
                            <td>{$rs[0]['a12']}<input id="a12" title="请输入身份证最后6位" type="text" class="input-text"><a
                                        href="javascript:zjpost('a12')"
                                        class="btn btn-secondary-outline radius size-MINI mt-10"> 证件签到</a></td>
                        </tr>
                        <tr>
                            <th class="text-c active" colspan="2">备注</th>
                            <td colspan="10">
                                <textarea class="textarea" cols="" rows=""
                                          name="bz">{$rs[0]['bz']|strip_tags}</textarea>
                                <p class="text-r">
                                    {$rs[0]['bzr']|nl2br}
                                </p>
                                <p>
                                    通知人签名：<input id="bzr" title="请输入身份证最后6位" type="text" class="input-text" style="width:100px;"><a
                                            href="javascript:zjpost('bzr');"
                                            class="btn btn-secondary-outline radius size-MINI ml-10"> 证件签到</a>
                                </p>
                            </td>
                        </tr>
                    </table>
                    <input type="hidden" name="action" value="save">
                    <p class="mt-40 text-c">
                        <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                    </p>
                </form>
                <form action="08_post.php" method="post" class="form mt-20">
                    <input type="hidden" name="action" value="end">
                    <input type="hidden" name="uid" value="{$rs[0]['id']}">
                    <input type="submit" value="结束填写" class="btn btn-danger radius">
                </form>
            </div>
        </div>
    </article>
</div>
<script src="08.js"></script>
