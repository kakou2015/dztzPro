
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<p class="text-c f-24">{$rs[0]['station']}{$title}</p>
						<form action="task.php?action=save_hy10" method="post" class="form">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th>序号</th>
									<th width="9.3%">使用编号</th>
									<th width="9.3%">打码编号</th>
									<th width="9.3%">购置日期</th>
									<th width="9.3%">发放日期</th>
									<th width="9.3%">使用地点</th>
									<th width="9.3%">保管存放地点</th>
									<th width="9.3%">保管责任人</th>
									<th width="9.3%">技术状态（在用、备用、修理、报废）</th>
									<th width="9.3%">变动情况</th>
									<th width="9.3%">备注</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-c">
									<td><input type="text" class="input-text" name="a1" value="{$rs[0]['a1']}"></td>
									<td><input type="text" class="input-text" name="a2" value="{$rs[0]['a2']}"></td>
									<td><input type="text" class="input-text" name="a3" value="{$rs[0]['a3']}"></td>
									<td><input type="text" class="input-text" name="a4" value="{$rs[0]['a4']}"></td>
									<td><input type="text" class="input-text" name="a5" value="{$rs[0]['a5']}"></td>
									<td><input type="text" class="input-text" name="a6" value="{$rs[0]['a6']}"></td>
									<td><input type="text" class="input-text" name="a7" value="{$rs[0]['a7']}"></td>
									<td><input type="text" class="input-text" name="a8" value="{$rs[0]['a8']}"></td>
									<td><input type="text" class="input-text" name="a9" value="{$rs[0]['a9']}"></td>
									<td><input type="text" class="input-text" name="a10" value="{$rs[0]['a10']}"></td>
									<td><input type="text" class="input-text" name="a11" value="{$rs[0]['a11']}"></td>
								</tr>
								<tr>
									<td colspan="11">说明：保管责任人为装卸企业的，须在其与车站签订的安全协议中注明。</td>									
								</tr>
								<tr>
									<td colspan="11">规格：A4纸（横）</td>
								</tr>
							</tbody>
						</table>
							<p class="text-c mt-40">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</p>
							<input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
						</form>
						<p class="mt-20">
							<a href="task.php?action=end_hy10&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
						</p>
					</div>
				</div>
			</article>
		</div>
