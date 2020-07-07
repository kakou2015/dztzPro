
<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel" style="width: 1800px;">
					<div class="panel-body">
						<form action="?action=save_kq" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th colspan="33" scope="col">{$smarty.cookies.division}<input type="text" class="input-text" id="rqny" name="rq" readonly="readonly" value="{date('Ym')}" style="width: 100px;">职工考勤簿</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-c">
									<th width="7%">姓名\日期</th>
									{for $i=1 to 31}
										<td width="3%">{$i}</td>
									{/for}
									<td></td>
								</tr>
								<tbody id="addr">
								<tr class="text-c">
									<input type="hidden" id="addr_id" value="0" />
									<td><input type="text" class="input-text" name="c2[]"></td>
									{for $i = 1 to 31}
										<td><input type="text" class="input-text" name="a{$i}[]"></td>
									{/for}
									<td><a href="javascript:fadd();" class="btn btn-success radius size-MINI">增加</a></td>
								</tr>
								</tbody>
								<tr>
									<th class="text-c">备注</th>
									<td colspan="32">参加点名“√”；未参加点名“×”；点名迟到“0”；点名请假“△”</td>
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
<script type="text/javascript" src="/datatime/laydate.js"></script>
<script src="./lay_rq.js"></script>
<script src="kq.js"></script>
