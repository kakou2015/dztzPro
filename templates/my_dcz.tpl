
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c active">
									<th width="70%">日期</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="tbody">
								{foreach $rs1 as $rs}
									<tr class="text-c">
										<td><a href="task.php?action=post_dcz&uid={$rs['id']}" class="btn-link"> {$rs['sj']|default:'正在填写的'}助理值班员交接班簿</a></td>
										<td><a href="task.php?action=erase_dcz&uid={$rs['id']}" class="btn btn-warning-outline radius size-MINI"><i class="Hui-iconfont">&#xe6a6;</i> 删除</a> </td>
									</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
