
<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<form action="?action=save_hy" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr>
									<th width="15%" class="text-c">会议名称</th>
									<th colspan="3"><input type="text" class="input-text" name="hymc"></th>
								</tr>
								<tr>
									<th class="text-c">时间</th>
									<th width="30%"><input type="text" class="input-text" id="rq" name="sj" readonly="readonly" value="{date('Y-n-j')}"></th>
									<th width="15%" class="text-c">地点</th>
									<th><input type="text" class="input-text" name="dd"></th>
								</tr>
								<tr>
									<th class="text-c">参加人员</th>
									<th colspan="3"><input type="text" class="input-text" name="cjry"></th>
								</tr>
								<tr>
									<th class="text-c">缺席人员及原因</th>
									<th colspan="3"><input type="text" class="input-text" name="qxry"></th>
								</tr>
								<tr>
									<th class="text-c">主持人</th>
									<th><input type="text" class="input-text" name="zcr"></th>
									<th class="text-c">记录人</th>
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
						</form>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
