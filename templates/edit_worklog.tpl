
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<form action="?action=save_edit_worklog" method="post">
						<table class="table table-bg mt-20">
							<tr>
								<th class="text-c f-16" colspan="21"><input type="text" class="input-text" name="cz_title" style="width: 200px;" value="{$rs[0]['cz_title']}">车间（车站）工作日志</th>
							</tr>
							<tr>
								<td class="text-c" width="15%"><input type="text" class="input-text" id="rqsj" name="rq" value="{date('Y-n-j G:i:s',$rs[0]['rq']|default:time())}" readonly="readonly"></td>
								<th class="text-c" width="8%">填记人：</th>
								<td width="8%"><input type="text" class="input-text" name="username" value="{$rs[0]['username']}"></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<th>天气：</th>
								<td width="8%"><input type="text" class="input-text" name="weather" value="{$rs[0]['weather']}"></td>
							</tr>
						</table>
						<table class="table table-border table-bordered table-bg mt-5">
							<tr>
								<th class="text-c" width="20%">上级重要指示</th>
								<td class="text-l"><textarea cols="" rows="" class="textarea" name="b1">{$rs[0]['a1']|strip_tags}</textarea></td>
							</tr>
							<tr>
								<th class="text-c">重点工作安排</th>
								<td class="text-l"><textarea cols="" rows="" class="textarea" name="b2">{$rs[0]['a2']|strip_tags}</textarea></td>
							</tr>
							<tr>
								<th class="text-c">安全情况</th>
								<td class="text-l"><textarea cols="" rows="" class="textarea" name="b3">{$rs[0]['a3']|strip_tags}</textarea></td>
							</tr>
							<tr>
								<th class="text-c">生产情况</th>
								<td class="text-l"><textarea cols="" rows="" class="textarea" name="b4">{$rs[0]['a4']|strip_tags}</textarea></td>
							</tr>
						</table>
						<table class="table table-border table-bordered table-bg mt-20">
							<tbody id="work1">
							{$i=count($rs1)+2}
							<tr class="text-c active">
								<th class="text-c" width="20%" rowspan="{$i}" id="thth">规章提问</th>
								<th width="8%">被提问人</th>
								<th width="10%">职名</th>
								<th>提问内容</th>
								<th width="6%">成绩</th>
								<th width="8%">提问人</th>
								<th width="5%"><a href="javascript:fadd();" class="btn btn-success size-MINI radius">增加</a></th>
							</tr>
							<tr><th colspan="6" class="c-blue">规章提问成绩为0或者空的将不保存！</th> </tr>
							{foreach $rs1 as $r}
								<tr>
									<td><input type="text" class="input-text" name="a1[]" value="{$r['a1']}"></td>
									<td><input type="text" class="input-text" name="a2[]" value="{$r['a2']}"></td>
									<td><input type="text" class="input-text" name="a3[]" value="{$r['a3']}"></td>
									<td><input type="text" class="input-text" name="a4[]" value="{$r['a4']}"></td>
									<td><input type="text" class="input-text" name="a5[]" value="{$r['a5']}"></td>
									<td><input type="hidden" name="uid_1[]" value="{$r['id']}"> </td>
								</tr>
							{/foreach}
							</tbody>
							<tr>
								<th class="text-c">记事</th>
								<td colspan="6"><textarea cols="" rows="" class="textarea" name="b5">{$rs[0]['a5']|strip_tags}</textarea></td>
							</tr>
							<tr>
								<th colspan="7">
									<div class="radio-box">
									<input type="radio" id="checkbox-1" name="lockend" value="false" checked>
									<label for="checkbox-1">不结束，还可编辑</label>
									<input type="radio" id="checkbox-2" name="lockend" value="true" class="ml-40" />
									<label for="checkbox-2" class="c-red">填写完毕，不编辑了</label>
									</div>
								</th>
							</tr>
						</table>
						<table class="mt-20">
							<td class="text-c">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</td>
						</table>
							<input type="hidden" name="uid" value="{$rs[0]['id']}">
						</form>
					</div>
				</div>
			</article>
		</div>
<script type="text/javascript" src="/datatime/laydate.js"></script>
<script type="text/javascript" src="lay_rq.js"></script>
<script type="text/javascript" src="worklog.js"></script>
