
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$title}</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead>
					<tr class="text-c">
						<th width="10%">序号</th>
						<th>日期</th>
						<th>状态</th>
					</tr>
					</thead>
					<tbody>
					{foreach $rs1 as $rs}
						<tr class="text-c">
							<td>{$xh++}</td>
							<td><a href="?action=read_zby_1&uid={$rs['id']}" class="btn-link">{$rs['sj']|default:'未写'}</a></td>
							<td>{if $rs['clocked'] eq 'false'}<mark>未结束</mark>{else}已完成{/if}</td>
						</tr>
					{/foreach}
					<tr><th colspan="10">{$page_disp}</th> </tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
</div>
