
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$title}</div>
                <div class="f-16"><mark>{$error|default:"<p>{$smarty.cookies.division}：{$smarty.cookies.username}</p>"}</mark>
                    {if $smarty.cookies.login|default:'' eq 'xxk'}
                        <div class="text-c mt-40">
                            <a href="?action=logout" class="btn btn-warning radius"><i>&#xe6de;</i> 退出登录</a>
                            <a href="?action=admin" class="btn btn-secondary-outline radius nl-40"><i class="Hui-iconfont">&#xe705;</i> 修改密码及个人信息</a>
                        </div>
                        {else}
                        <form class="text-c form" action="?action=login" method="post">
                            <ol>
                                <li class="mt-10">登录用户：<input type="text" class="input-text" name="uid" style="width: 250px;"></li>
                                <li class="mt-10">登记密码：<input type="password" class="input-text" name="psswd" style="width: 250px;"></li>
                                <li class="mt-10"><button type="submit" value="登录" class="btn btn-success radius"><i class="Hui-iconfont">&#xe705;</i> 登录</li>
                            </ol>
                        </form>
                    {/if}
                </div>
            </div>
        </div>
    </article>
</div>
