
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$title}</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead>
					<tr class="text-c">
						<th>序号</th>
						<th width="20%">日期</th>
						<th>交班者</th>
						<th>接班者</th>
					</tr>
					</thead>
					<tbody>
					{foreach $rs1 as $rs}
						<tr class="text-c">
							<td>{$xh++}</td>
							<td><a href="?action=read_dcz&uid={$rs['id']}" class="btn-link">{$rs['sj']|default:'未填写'}</a></td>
							<td>{$rs['nine1']}</td>
							<td>{$rs['ten1']}</td>
						</tr>
					{/foreach}
					<tr><th colspan="10">{$page_disp}</th> </tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
</div>
