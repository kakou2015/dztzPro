
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c active">
									<th width="70%">日期</th>
									<th>填记人</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="tbody">
								{foreach $rs1 as $rs}
									<tr class="text-c">
										<td><a href="?action=worklog_edit&uid={$rs['id']}" class="btn-link"> {date('Y年n月j日 G:i',$rs['rq']|default:time())}{$rs['cz_title']}工作日志</a></td>
										<td>{$rs['username']}</td>
										<td><a href="?action=erase_worklog&uid={$rs['id']}" class="btn btn-warning-outline radius size-MINI"><i class="Hui-iconfont">&#xe6a6;</i> 删除</a> </td>
									</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
