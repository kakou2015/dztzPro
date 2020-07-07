
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">违章违纪及事故登记簿</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="8%">时间</th>
									<th width="8%">责任者</th>
									<th width="8%">班组</th>
									<th width="8%">职名</th>
									<th width="8%">政治面貌</th>
									<th width="8%">类别</th>
								</tr>
							</thead>
							<tbody>
							{foreach $rs1 as $rs}
								<tr class="text-c">
									<td><a href="?action=read_wzwj&uid={$rs['id']}" class="btn-link">{date('Y年n月j日',$rs['rq'])}</a></td>
									<td>{$rs['zzr']}</td>
									<td>{$rs['bz']}</td>
									<td>{$rs['zm']}</td>
									<td>{$rs['zzmm']}</td>
									<td>{$rs['lb']}</td>
								</tr>
							{/foreach}
							</tbody>
							<tr><th colspan="6">{$page_disp}</th> </tr>
						</table>	
					</div>
				</div>
			</article>
		</div>
