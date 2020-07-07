
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$title}</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead>
					<tr class="text-c">
						<th width="20%">日期</th>
						<th>几班几题</th>
						<th>车站值班员</th>
						<th>助理值班员（外勤）</th>
					</tr>
					</thead>
					<tbody>
					{foreach $rs1 as $rs}
						<tr class="text-c">
							<td>{date('Y年n月j日',$rs['rq'])}</td>
							<td><a href="?action=read_lc&uid={$rs['id']}" class="btn-link">{$rs['bt']|default:'未写'}</a></td>
							<td>{$rs['zby1']}</td>
							<td>{$rs['zby3']}</td>
						</tr>
					{/foreach}
					<tr><th colspan="10">{$page_disp}</th> </tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
</div>
