
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<form action="?action=save_zwzj" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="8%">时间</th>
									<th><input type="text" class="input-text" id="rq" name="rq" value="{date('Y-n-j')}" readonly="readonly"></th>
									<th width="8%">责任者</th>
									<th width="8%"><input type="text" class="input-text" name="zzr"></th>
									<th width="8%">班组</th>
									<th width="8%"><input type="text" class="input-text" name="bz"></th>
									<th width="8%">职名</th>
									<th width="8%"><input type="text" class="input-text" name="zm"></th>
									<th width="8%">政治面貌</th>
									<th width="8%"><input type="text" class="input-text" name="zzmm"></th>
									<th width="8%">类别</th>
									<th width="8%"><input type="text" class="input-text" name="lb"></th>
								</tr>
								<tr class="text-c">
									<th>主持人</th>
									<th><input type="text" class="input-text" name="zcr"></th>
									<th>参加人员</th>
									<th colspan="9"><input type="text" class="input-text" name="cjr"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="text-c">概况</th>
									<td class="text-l" colspan="11"><textarea cols="" rows="" class="textarea" name="a1"></textarea></td>
								</tr>
								<tr>
									<th class="text-c">分析</th>
									<td class="text-l" colspan="11"><textarea cols="" rows="" class="textarea" name="a2"></textarea></td>
								</tr>
								<tr>
									<th class="text-c">教训</th>
									<td class="text-l" colspan="11"><textarea cols="" rows="" class="textarea" name="a3"></textarea></td>
								</tr>
								<tr>
									<th class="text-c">措施</th>
									<td class="text-l" colspan="11"><textarea cols="" rows="" class="textarea" name="a4"></textarea></td>
								</tr>
								<tr>
									<th class="text-c">处理</th>
									<td class="text-l" colspan="11"><textarea cols="" rows="" class="textarea" name="a5"></textarea></td>
								</tr>
							</tbody>
						</table>
						<table class="mt-20">
							<td class="text-c">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</td>
						</table>
						</form>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
