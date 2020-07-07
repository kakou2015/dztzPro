
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$smarty.cookies.division}{$title}</div>
						<form action="?action=save_sh" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="15%">施工项目</th>
									<th colspan="3"><input type="text" class="input-text" name="hymc"></th>
								</tr>
								<tr class="text-c">
									<th>会议时间</th>
									<th width="30%"><input type="text" class="input-text" id="rqsj" name="sj" readonly="readonly" value="{date('Y-n-j G:i:s')}"></th>
									<th width="15%">地点</th>
									<th><input type="text" class="input-text" name="dd"></th>
								</tr>
								<tr class="text-c">
									<th>参加人员</th>
									<th colspan="3"><input type="text" class="input-text" name="cjry"></th>
								</tr>
								<tr class="text-c">
									<th>主持人</th>
									<th><input type="text" class="input-text" name="zcr"></th>
									<th>记录人</th>
									<th><input type="text" class="input-text" name="jlr"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="text-c">主要内容</th>
									<td colspan="3"><textarea cols="" rows="" class="textarea" name="a1" style="height: 500px"></textarea></td>
								</tr>
							</tbody>
						</table>
						<table class="mt-20">
							<td class="text-c">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</td>
						</table>
						<input type="hidden" name="tab_name" value="{$tab_name}">
						</form>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
