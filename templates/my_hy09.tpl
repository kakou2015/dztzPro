
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c active">
									<th width="60%">日期</th>
									<th>操作</th>
								</tr>
							</thead>
								{foreach $rs1 as $rs}
									<tr class="text-c">
										<td><a href="task.php?action=post_hy09&uid={$rs['id']}" class="btn-link"> {$rs['rq']}隔离开关钥匙交接本</a></td>
										<td><a href="task.php?action=erase_hy09&uid={$rs['id']}" class="btn btn-warning-outline radius size-MINI"><i class="Hui-iconfont">&#xe6a6;</i> 删除</a> </td>
									</tr>
								{/foreach}
						</table>
					</div>
				</div>
			</article>
		</div>
