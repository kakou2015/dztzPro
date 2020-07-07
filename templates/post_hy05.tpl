
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<p class="text-c f-24">{$rs[0]['station']}{$title}</p>
						<form action="task.php?action=save_hy05" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="4%">序号</th>
									<th width="9.5%">设备名称</th>
									<th width="9.5%">配置地点</th>
									<th width="9.5%">修程</th>
									<th width="9.5%">计划时间</th>
									<th width="9.5%">完成时间</th>
									<th width="9.5%">处理故障细节</th>
									<th width="9.5%">检修负责人</th>
									<th width="9.5%">检修负责人单位</th>
									<th width="9.5%">检测站验收人</th>
									<th>备注</th>
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
									<td colspan="11">注：检修、维护时，未涉及的项目可不填写。</td>
								</tr>
							</tbody>
						</table>
							<input type="hidden" name="uid" value="{$rs[0]['id']}">
							<p class="text-c mt-40">
								<button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</p>
						</form>
						<p class="mt-20">
							<a href="task.php?action=end_hy05&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
						</p>
					</div>
				</div>
			</article>
		</div>
