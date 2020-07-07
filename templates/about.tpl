
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">{$title} <sub>V2020.7</sub></div>
                <div class="contact mt-20">
                    <ol class="linenums">
                        <li>左侧菜单不登录时，只显示生产作业记录，报表，货运电子台帐（报表下面的两本台帐，生产作业记录中调车工作记实单，越区作业登记簿共四本台帐无后台数据处理程序，故所填写内容不会保存进数据库。）；登录后菜单将增加显示专业管理台帐，如若是管理员权限登录将增加显示基础数据管理，如若是ceo权限（此权限需要在数据库中手工维护，update educ_base set admin = 'ceo' where username = '姓名';）登录将增加显示IP数据库，查询车站维护菜单；</li>
                        <li>
                            有些台帐填写后，却查询不到，这种情况主要出现在专业管理台帐里面，这个是需要登录的，在建立员工数据库时，填写的车站（科室）有填写成某某车站，而在登录的时候，程序将帐号所属车站中的车站两字过滤了，保存进数据库的是某某，而查询的时候是查询的某某车站，故查询不到。解决这种现象的方法有1.建立员工数据库（查询车站）时不含车站两字；2.修改程序task.php第254行            setcookie('division', str_replace('车站', '', $rs[0]['division']), $login_rq, '/');修改成setcookie('division', $rs[0]['division'], $login_rq, '/');即可；
                        </li>
                        <li>生产台帐是根据客户端IP地址判断其填写的所属哪个车站，所以在维护IP数据库时需要考虑这些因素；</li>
                        <li>需要登录或者退出登录时,可点击左上方的电子台帐进入登录界面；在该界面登录成功后，有修改密码及个人信息链接；</li>
                        <li>电子台帐如果显示未结束填写是因为在填写的页面未点击结束填写按钮；</li>
                    </ol>
                </div>
            </div>
        </div>
    </article>
</div>
