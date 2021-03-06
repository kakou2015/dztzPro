﻿<%@ Page Title="注册" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="dztzPro.Register" %>

<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="Bookmark" href="favicon.ico">
	<!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
	<link rel="stylesheet" type="text/css" href="./static/h-ui/css/H-ui.css" />
	<link rel="stylesheet" type="text/css" href="./static/h-ui.admin.pro/css/h-ui.admin.pro.css" />
	<link rel="stylesheet" type="text/css" href="./lib/Hui-iconfont/1.0.9/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="./static/h-ui.admin.pro/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="./static/business/css/style.css" />


    <style>
        .Freezing {
            position: relative;
            table-layout: fixed;
            top: expression(this.offsetParent.scrollTop);
            z-index: 10;
        }

            .Freezing th {
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
                padding: 2px;
            }
    </style>

	<script type="text/javascript" src="./lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="./lib/layer/3.1.1/layer.js"></script>
	<script type="text/javascript" src="./static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="./static/h-ui.admin.pro/js/h-ui.admin.pro.min.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="./lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript" src="./static/business/js/main.js"></script>

	<!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script><![endif]-->
	<!--/meta 作为公共模版分离出去-->
	<title>电子台账</title>
</head>
<body>

    <div class="Hui-admin-aside-mask"></div>
	<!--/_menu 作为公共模版分离出去-->

	<div class="Hui-admin-dislpayArrow">
		<a href="javascript:void(0);" onclick="displaynavbar(this)">
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
							
							<li style="color:#040038"><%--当前时间:<span id="currentTime"></span>  --%> </li>
							<li id="Hui-skin" class="dropDown dropDown_hover right">
								<a href="javascript:;" class="dropDown_A" title="导航栏换肤">菜单颜色<i class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
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
		<!--_footer 作为公共模版分离出去-->
		<!--/请在上方写此页面业务相关的脚本-->
		<script type="text/javascript" src="Common.js"></script>

   <div style="width: 99%; text-align: center; padding-left:8px">
        <form runat="server">
            <table class="table table-border table-bordered table-bg mt-20">
                <tr>
                    <td class="auto-style1">登录名：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbLoginName" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">密码：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" Height="20px" Width="500px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">确认密码：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbRePasswird" runat="server" Height="20px" Width="500px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">姓名：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbUserName" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">部门：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbDepartment" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">职位：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbOccupation" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">上级ID：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbSuperior" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <%= AccessRightContent %>
                <tr>
                    <td class="auto-style1">手机号：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbMobilePhone" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">备注：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="tbDescription" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="SaveBttn" runat="server" Text="新建" OnClick="Save_Click" Height="30px" Width="80px"/>
                    </td>
                </tr>
            </table>
            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" 
                SelectCommand="SELECT [UserId],[LoginName], [UserName],[UserPassword],[MobilePhone],[Email],[Department],[Occupation],[Superior],[AccessRight],[Description],[CreateTime],[LoginTime],[LastLoginTime],[LoginCount] FROM [User]" 
                ProviderName="<%$ ConnectionStrings:dztzConnectionString.ProviderName %>">
            </asp:SqlDataSource>
        </form>
    </div>
	</section>
</body>
</html>
