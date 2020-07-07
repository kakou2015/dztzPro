
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
										<td><a href="task.php?action=post_hyaqjc&uid={$rs['id']}" class="btn-link"> {date('Y年n月j日',$rs['rq']|default:time())}货运安全检查</a></td>
										<td><a href="task.php?action=erase_hyaqjc&uid={$rs['id']}" class="btn btn-warning-outline radius size-MINI"><i class="Hui-iconfont">&#xe6a6;</i> 删除</a> </td>
									</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
