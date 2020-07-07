<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="favicon.ico" >
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="./static/h-ui/css/H-ui.css" />
    <link rel="stylesheet" type="text/css" href="./static/h-ui.admin.pro/css/h-ui.admin.pro.css" />
    <link rel="stylesheet" type="text/css" href="./lib/Hui-iconfont/1.0.9/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="./static/h-ui.admin.pro/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="./static/business/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script><![endif]-->
    <!--/meta 作为公共模版分离出去-->
    <title>{$title}</title>
</head>
<body>
<aside class="Hui-admin-aside-wrapper">
    <div class="Hui-admin-logo-wrapper">
        <a class="logo navbar-logo" href="./">
            <i class="va-m iconpic global-logo"></i>
            <span class="va-m">电子台帐</span>
        </a>
    </div>
    <div class="Hui-admin-menu-dropdown bk_2">
        <dl id="menu-home" class="Hui-menu">
            <dd class="Hui-menu-item-frist">
                <ul>
                    <li style="margin-left: 25px; color:#20DA01"><i class="Hui-iconfont">&#xe616;</i> 关于</li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">关于<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i> </dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="index.php?action=about">关于</a> </li>
                </ul>
            </dd>
        </dl>
        {$login = $smarty.cookies.login|default:''}
        {if $login eq 'xxk'}
            {$admin = $smarty.cookies.admin|default:''}
            {if $admin eq '管理员' or $admin eq 'ceo'}
                <dl id="menu-home" class="Hui-menu">
                    <dd class="Hui-menu-item-frist">
                        <ul>
                            <li style="margin-left: 25px; color:#20DA01"><i class="Hui-iconfont">&#xe616;</i> 基础数据管理</li>
                        </ul>
                    </dd>
                </dl>
                <dl id="menu-article" class="Hui-menu">
                    <dt class="Hui-menu-title">人员数据库<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i>
                    </dt>
                    <dd class="Hui-menu-item">
                        <ul>
                            <li><a href="admin.php?action=create_user">人员数据库</a></li>
                        </ul>
                    </dd>
                </dl>
                {if $admin eq 'ceo'}
                    <dl id="menu-article" class="Hui-menu">
                        <dt class="Hui-menu-title">IP数据库<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i>
                        </dt>
                        <dd class="Hui-menu-item">
                            <ul>
                                <li><a href="admin.php?action=create_ip">IP数据库</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl id="menu-article" class="Hui-menu">
                        <dt class="Hui-menu-title">查询车站<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i>
                        </dt>
                        <dd class="Hui-menu-item">
                            <ul>
                                <li><a href="admin.php?action=sggl_cz">查询车站</a></li>
                            </ul>
                        </dd>
                    </dl>
                {/if}
            {/if}
        {/if}
        {if $login eq 'xxk'}
        <dl id="menu-home" class="Hui-menu">
            <dd class="Hui-menu-item-frist">
                <ul>
                    <li style="margin: 0 0 0 25px;color: #20DA01"><i class="Hui-iconfont">&#xe616;</i>&nbsp; 专业管理台帐</li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">车站（车间）工作日志<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">职工考勤簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=kq_post">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=my_kq">修改</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_kq">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">车站（车间）工作日志<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=worklog_post">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=my_worklog">修改</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_worklog">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">安全生产指导簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=aqzbd_post">填写</a></li>
                    <li><a href="./?action=my_aqzdb">整改</a></li>
                    <li><a href="./?action=list_aqzdb">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">违章违纪及事故登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_wzwj">填写</a></li>
                    <li><a href="./?action=list_wzwj">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">自管行车设备管理台帐<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_zgsb">填写</a></li>
                    <li><a href="./?action=list_zgsb">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">会议记录簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_hy">填写</a></li>
                    <li><a href="./?action=list_hy">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">施工会议记录簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">施工协调会<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=post_sh&tab=xt">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_sh&tab=xt">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">施工预备会<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=post_sh&tab=zb">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_sh&tab=zb">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">施工总结会<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=post_sh&tab=zj">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_sh&tab=zj">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">天窗修协调会<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=post_sh&tab=tcx">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_sh&tab=tcx">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">技术演练登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">接发列车<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=post_lc">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_lc">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">调车作业<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./?action=post_dc">填写</a>
                                    </li>
                                    <li>
                                        <a href="./?action=list_dc">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </dd>
        </dl>
        {/if}
        <dl id="menu-home" class="Hui-menu">
            <dd class="Hui-menu-item-frist">
                <ul>
                    <li style="margin: 0 0 0 25px;color: #20DA01"><i class="Hui-iconfont">&#xe616;</i>&nbsp; 生产作业记录</li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">岗位交接簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">车站值班员交接班簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="task.php?action=read_zby">填写</a>
                                    </li>
                                    <li>
                                        <a href="task.php?action=my_zby">修改</a>
                                    </li>
                                    <li>
                                        <a href="task.php?action=list_zby">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">助理值班员交接班簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="task.php?action=post_zlzby">填写</a>
                                    </li>
                                    <li>
                                        <a href="task.php?action=my_zlzby">修改</a>
                                    </li>
                                    <li>
                                        <a href="task.php?action=list_zlzby">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="Hui-menu">
                            <dt class="Hui-menu-title">调车人员交接班簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                            <dd class="Hui-menu-item">
                                <ul>
                                    <li>
                                        <a href="./task.php?action=post_dcz">填写</a>
                                    </li>
                                    <li>
                                        <a href="./task.php?action=my_dcz">修改</a>
                                    </li>
                                    <li>
                                        <a href="./task.php?action=list_dcz">查询</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">隔离开关使用登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_glkg">填写</a></li>
                    <li><a href="./task.php?action=my_glkg">修改</a></li>
                    <li><a href="./task.php?action=list_glkg">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">调车工作记实单<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_23">填写</a></li>
{*                    <li><a href="./?action=">修改</a></li>*}
                    <li><a href="./?action=read_23">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">越区作业登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_24">填写</a></li>
{*                    <li><a href="./?action=">修改</a></li>*}
                    <li><a href="./?action=read_24">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-home" class="Hui-menu">
            <dd class="Hui-menu-item-frist">
                <ul>
                    <li style="margin: 0 0 0 25px;color: #20DA01"><i class="Hui-iconfont">&#xe616;</i>&nbsp; 报表</li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">车站工作报告<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_31">填写</a></li>
{*                    <li><a href="./?action=">修改</a></li>*}
                    <li><a href="./?action=read_31">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">违反列车编组计划登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_32">填写</a></li>
{*                    <li><a href="./?action=">修改</a></li>*}
                    <li><a href="./?action=read_32">查询</a></li>
                </ul>
            </dd>
        </dl>

        <dl id="menu-home" class="Hui-menu">
            <dd class="Hui-menu-item-frist">
                <ul>
                    <li style="margin: 0 0 0 25px;color: #20DA01"><i class="Hui-iconfont">&#xe616;</i>&nbsp; 货运电子台帐</li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">会议记录簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=post_hy">填写</a></li>
                    <li><a href="./?action=list_hy">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">车间（车站）工作日志<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./?action=worklog_post">填写</a></li>
                    <li><a href="./?action=my_worklog">修改</a></li>
                    <li><a href="./?action=list_worklog">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">货运人员交接班本<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy40">填写</a></li>
                    <li><a href="./task.php?action=my_hy40">修改</a></li>
                    <li><a href="./task.php?action=list_hy40">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">货运安全检查记录簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hyaqjc">填写</a></li>
                    <li><a href="./task.php?action=my_hyaqjc">修改</a></li>
                    <li><a href="./task.php?action=list_hyaqjc">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">超偏载检测装置、轨道衡检修记录簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy05">填写</a></li>
                    <li><a href="./task.php?action=my_hy05">修改</a></li>
                    <li><a href="./task.php?action=list_hy05">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">超偏载检测装置、轨道衡日常维护和故障情况记录簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy06">填写</a></li>
                    <li><a href="./task.php?action=my_hy06">修改</a></li>
                    <li><a href="./task.php?action=list_hy06">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">超偏载检测工作日志<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy07">填写</a></li>
                    <li><a href="./task.php?action=my_hy07">修改</a></li>
                    <li><a href="./task.php?action=list_hy07">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">货运计量系统日常检查台账<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy08">填写</a></li>
                    <li><a href="./task.php?action=my_hy08">修改</a></li>
                    <li><a href="./task.php?action=list_hy08">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">货物装载加固暂行方案登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy28">填写</a></li>
                    <li><a href="./task.php?action=my_hy28">修改</a></li>
                    <li><a href="./task.php?action=list_hy28">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">带脱轨器防护信号管理台帐<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy10">填写</a></li>
                    <li><a href="./task.php?action=my_hy10">修改</a></li>
                    <li><a href="./task.php?action=list_hy10">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">带脱轨器防护信号领用、交回、安设、撤除签认表<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy30">填写</a></li>
                    <li><a href="./task.php?action=my_hy30">修改</a></li>
                    <li><a href="./task.php?action=list_hy30">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">装卸机械交接班记录<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy12">填写</a></li>
                    <li><a href="./task.php?action=my_hy12">修改</a></li>
                    <li><a href="./task.php?action=list_hy12">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">隔离开关使用登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_glkg">填写</a></li>
                    <li><a href="./task.php?action=my_glkg">修改</a></li>
                    <li><a href="./task.php?action=list_glkg">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">隔离开关钥匙交接本<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy09">填写</a></li>
                    <li><a href="./task.php?action=my_hy09">修改</a></li>
                    <li><a href="./task.php?action=list_hy09">查询</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article" class="Hui-menu">
            <dt class="Hui-menu-title">行包、货物检斤验货登记簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
            <dd class="Hui-menu-item">
                <ul>
                    <li><a href="./task.php?action=post_hy15">填写</a></li>
                    <li><a href="./task.php?action=my_hy15">修改</a></li>
                    <li><a href="./task.php?action=list_hy15">查询</a></li>
                </ul>
            </dd>
        </dl>

    </div>
</aside>
<div class="Hui-admin-aside-mask"></div>
<!--/_menu 作为公共模版分离出去-->

<div class="Hui-admin-dislpayArrow">
    <a href="javascript:void(0);" onClick="displaynavbar(this)">
        <i class="Hui-iconfont Hui-iconfont-left">&#xe6d4;</i>
        <i class="Hui-iconfont Hui-iconfont-right">&#xe6d7;</i>
    </a>
</div>
<section class="Hui-admin-article-wrapper">
    <!--_header 作为公共模版分离出去-->
    <header class="Hui-navbar">
        <div class="navbar">
            <div class="container-fluid clearfix">
                <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar">
                    <ul class="clearfix">
                        <li>菜单颜色</li>
                        <li id="Hui-skin" class="dropDown dropDown_hover right">
                            <a href="javascript:;" class="dropDown_A" title="导航栏换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
                            <ul class="dropDown-menu menu radius box-shadow">
                                <li><a href="javascript:;" data-val="default" title="默认（蓝色）">默认（深蓝）</a></li>
                                <li><a href="javascript:;" data-val="black" title="黑色">黑色</a></li>
                                <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
                                <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
                                <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
                                <li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>