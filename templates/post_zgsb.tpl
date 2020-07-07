
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<form action="?action=save_zgsb" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="4%">序号</th>
									<th width="7%">设备名称</th>
									<th width="7%">型号</th>
									<th width="10%">序列号</th>
									<th width="7%">频率</th>
									<th width="7%">使用(存放)地点</th>
									<th width="7%">使用(保管)人</th>
									<th width="10%">配备时间</th>
									<th width="10%">有效期限</th>
									<th>备注</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" class="input-text" name="xh"></td>
									<td><input type="text" class="input-text" name="sbmc"></td>
									<td><input type="text" class="input-text" name="typeh"></td>
									<td><input type="text" class="input-text" name="xlh"></td>
									<td><input type="text" class="input-text" name="pl"></td>
									<td><input type="text" class="input-text" name="sydd"></td>
									<td><input type="text" class="input-text" name="syr"></td>
									<td><input type="text" class="input-text" id="rq" name="pbsj" readonly="readonly" value="{date('Y-n-j')}"></td>
									<td><input type="text" class="input-text" name="yxqx"></td>
									<td><input type="text" class="input-text" name="bz"></td>
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
