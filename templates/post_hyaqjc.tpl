
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<p class="text-c f-24"><font size="4">货运安全检查记录簿</font></p>
						<form action="?action=save_hyaqjc" method="post">
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="12%">日期</th>
									<th width="15%">项目</th>
									<th width="15%">检查内容</th>
									<th>发现问题、具体要求或改进措施</th>
									<th width="10%">检查人</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-c">
									<td><input type="text" class="input-text" readonly="readonly" value="{date('Y-n-j',$rs[0]['rq']|default:time())}" id="rq" name="rq"></td>
									<td><p>装载加固（<input {$rs[0]['a1']|default:''} value="checked" type="checkbox" id="checkbox-5" name="a1">）</p>
										<p>危险货物（<input {$rs[0]['a2']|default:''} value="checked" type="checkbox" id="checkbox-5" name="a2">）</p>
										<p>货装联合（<input {$rs[0]['a3']|default:''} value="checked" type="checkbox" id="checkbox-5" name="a3">）</p>
										<p>集装箱（<input {$rs[0]['a4']|default:''} value="checked" type="checkbox" id="checkbox-5" name="a4">）</p>
										<p>其他（<input {$rs[0]['a5']|default:''} value="checked" type="checkbox" id="checkbox-5" name="a5">）</p>
									</td>
									<td><textarea cols="" rows="" class="textarea" name="a6">{$rs[0]['a6']|default:''|strip_tags}</textarea></td>
									<td><textarea cols="" rows="" class="textarea" name="a7">{$rs[0]['a7']|default:''|strip_tags}</textarea></td>
									<td>{$rs[0]['a8']|default:''}<input type="text" class="input-text" id="a8" name="a8" placeholder="请输入登录ID"><a href="javascript:hy_zj('a8','ledger_pro_hyaqjc');" class="btn btn-secondary-outline radius size-MINI mt-10">证件签到</a> </td>
								</tr>
							</tbody>
						</table>
							<p class="text-c mt-40">
								<button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</p>
							<input type="hidden" id="uid" name="uid" value="{$rs[0]['id']}">
						</form>
						<p class="mt-20">
							<a href="task.php?action=end_hyaqjc&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
						</p>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
