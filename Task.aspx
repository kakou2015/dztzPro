<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="dztzPro.Task" %>

<header class="Hui-navbar" style="color:aliceblue">
	<div class="navbar">
		<div class="container-fluid clearfix">
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar">
				<p class="text-c">
				</p>
				<ul class="clearfix">
    <li>
        <a class="btn btn-primary radius mr-20" style="line-height: 1.8em; margin-top: 3px;" href="#" onclick="save();">
            <i class="icon-ok"></i>保存
        </a>
        <a class="btn btn-success radius mr-20" style="line-height: 1.8em; margin-top: 3px;" href="#" onclick="finish();">
            结束填写
        </a>
    </li>
					<li><%--当前时间:<span id="currentTime"></span>  --%> 菜单颜色</li>
					<li id="Hui-skin" class="dropDown dropDown_hover right">
						<a href="javascript:;" class="dropDown_A" title="导航栏换肤"><i class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
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
<%= Content %>
<input type="hidden" id="jsonContent" value="<%= JsonContent %>" />
<input type="hidden" id="ledgerItemId" value="<%= LedgerItemId %>" />
<input type="hidden" id="ledgerNodeId" value="<%= LedgerNodeId %>" />
