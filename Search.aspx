<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="dztzPro.Search" %>

<header class="Hui-navbar" style="color:aliceblue">
	<div class="navbar">
		<div class="container-fluid clearfix">
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar">
				<p class="text-c">
				</p>
				<ul class="clearfix">
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
<form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />

        <asp:SqlDataSource ID="SqlDataSourceLedgerItems" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT [Id],[LedgerNodeId],[LedgerNodeName],[CreateUser],[CreateTime],[ModifyUser],[ModifyTime],[Status] FROM [LedgerNodeItem] WHERE ([LedgerNodeId] = @LedgerNodeId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="LedgerNodeId" QueryStringField="ledgerNodeId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="LedgerItemsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceLedgerItems" Height="16px" Width="1198px">
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="DarkBlue" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="LedgerNodeName" HeaderText="账簿名称" SortExpression="LedgerNodeName" />
                <asp:BoundField DataField="CreateUser" HeaderText="创建人" SortExpression="CreateUser" />
                <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                <asp:BoundField DataField="ModifyUser" HeaderText="修改人" SortExpression="ModifyUser" />
                <asp:BoundField DataField="ModifyTime" HeaderText="修改时间" SortExpression="ModifyTime" />
                <asp:BoundField DataField="Status" HeaderText="完成状态" SortExpression="Status"  DataFormatString=""/>
            </Columns>
        </asp:GridView>
    </div>
</form>
