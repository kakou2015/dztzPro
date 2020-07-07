
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel" style="width: 1800px;">
					<div class="panel-body">
						<form action="?action=kq_edit" method="post">
						<div class="text-c f-24">{$station}职工考勤簿</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c active">
									<th width="4%">姓名\日期</th>
									<th width="3.5%">月份</th>
									{for $i=1 to 31}
										<td width="2.5%">{$i}</td>
									{/for}
									<td>操作</td>
								</tr>
							</thead>
							<tbody id="tbody">
								{foreach $rs1 as $rs}
									<tr class="text-c">
										<td>{$rs['c2']}<input type="hidden" name="uid[]" value="{$rs['id']}"></td>
										<td>{$rs['rq']}</td>
										{for $i=1 to 31}
											<td><input type="text" class="input-text" name="a{$i}[]" value="{$rs["a$i"]}"></td>
										{/for}
										<td width="5%"><select name="os[]" class="select">
												<option value="false">编辑</option>
												<option value="erase">删除</option>
												<option value="true">锁定</option>
											</select> </td>
									</tr>
								{/foreach}
							</tbody>
								<tr class="active">
									<th class="text-c">备注</th>
									<td colspan="33">1.参加点名“√”；未参加点名“×”；点名迟到“0”；点名请假“△”<br />
										2.操作选择删除，保存提交之后则删除此条考勤；选择锁定，保存提交之后则此条考勤不可再修改；
									</td>
								</tr>
						</table>
						<div class="text-c mt-40">
							<button type="submit" class="btn btn-success radius"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							<button type="button" class="btn btn-primary radius" onclick="fseldel()"><i class="Hui-iconfont">&#xe603;</i> 全部锁定</button>
						</div>
						</form>
					</div>
				</div>
			</article>
		</div>
<script src="kq.js"></script>
