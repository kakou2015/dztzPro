
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$title}</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead>
					<tr class="text-c">
						<th width="20%">日期</th>
						<th>会议名称</th>
					</tr>
					</thead>
					<tbody>
					{foreach $rs1 as $rs}
						<tr class="text-c">
							<td>{date('Y年n月j日',$rs['sj'])}</td>
							<td><a href="?action=read_hy&uid={$rs['id']}" class="btn-link">{$rs['hymc']}</a></td>
						</tr>
					{/foreach}
					<tr><th colspan="10">{$page_disp}</th> </tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
</div>
