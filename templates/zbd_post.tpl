
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">安全生产指导簿</div>
				<form action="?action=save_aqzdb" method="post">
				<table class="table table-border table-bordered table-bg mt-20">
					<tr class="text-c">
						<th width="50%" colspan="3">检查提出问题、改进意见及指示</th>
						<th width="50%" colspan="2">答复意见及措施</th>
					</tr>
					<tr class="text-l">
						<td colspan="3"><strong>检查车站：</strong><select class="select" name="station" style="width: 100px;">
								{foreach $rs1 as $rs}
									<option>{$rs['cz']}</option>
								{/foreach}
							</select>
							<textarea cols="" rows="" class="textarea mt-10" name="a1" style="height: 400px"></textarea></td>
						<td colspan="2"></td>
					</tr>
					<tr class="text-c">
						<td width="15%">检查人签名：</td>
						<td><input type="text" class="input-text" name="check_user" value="{$smarty.cookies.username}"></td>
						<td width="25%"><input type="text" class="input-text" name="check_rq" id="rq" value="{date('Y-n-j')}" readonly="readonly"></td>
						<td width="25%">被检查人签名：</td>
						<td width="25%">年月日</td>
					</tr>
					<tr class="text-c">
						<td colspan="3"><button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button></td>
						<td colspan="2"></td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</article>
</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
