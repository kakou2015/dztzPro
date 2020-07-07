
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24 mb-20">{$title}</div>
                <div class="text-r">
                    <form action="?action=create_user" method="post" class="form">
                        <input type="text" class="input-text" name="user" style="width: 200px;" placeholder="输入需要查询的姓名">
                        <input type="submit" value="查询" class="btn btn-secondary-outline radius">
                        <input type="hidden" name="sel" value="sel">
                    </form>
                </div>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th>车站（科室）</th>
                        <th>姓名</th>
                        <th>登录ID</th>
                        <th>密码</th>
                        <th>管理员</th>
                        <th></th>
                    </tr>
                    {foreach $rs1 as $rs}
                        <tr class="text-c">
                            <td>{$rs['division']}</td>
                            <td>{$rs['username']}</td>
                            <td>{$rs['id_number']}</td>
                            <td>{$rs['passwd']}</td>
                            <td>{$rs['admin']}</td>
                            <td>{if $smarty.cookies.admin eq '管理员' and $smarty.cookies.division neq $rs['division']}权限不足{else}
                                <a href="?action=erase_user&uid={$rs['id']}" class="btn btn-warning-outline radio-box size-MINI">删除</a> {/if}</td>
                        </tr>
                    {/foreach}
                    <tr><th colspan="6">{$page_disp}</th> </tr>
                </table>
                <form action="?action=save_user" method="post">
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c active">
                        <th>车站（科室）</th>
                        <th>姓名</th>
                        <th>登录ID</th>
                        <th>密码</th>
                        <th>权限</th>
                    </tr>
                    <tr>
                        <td>{if $smarty.cookies.admin eq 'ceo'}
                            <select name="division" class="select">
{foreach $listcz as $lz}
<option>{$lz['cz']}</option>
{/foreach}
</select>{/if}
                            {if $smarty.cookies.admin eq '管理员'}
                                <input type="text" class="input-text" readonly="readonly" name="division" value="{$smarty.cookies.division}" />
                            {/if}
                        </td>
                        <td><input type="text" class="input-text" name="username" /></td>
                        <td><input type="text" class="input-text" name="id_number" /></td>
                        <td><input type="text" class="input-text" name="passwd" /></td>
                        <td><select name="admin" class="select">
                                <option value="">请选择</option>
                                <option>管理员</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th colspan="5">
                            登录ID用于证件签到，登录本系统时用，需要保证其唯一性；姓名用于填写台帐，系统登录，有重名的情况建议后面加数字区别；<br />
                            权限栏选择成管理员时，用此帐号登录系统可维护本站(科室)人员信息；
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
