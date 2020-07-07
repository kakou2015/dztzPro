
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body" title="{$rs[0]['up_user']}填写">
				<div class="text-c f-24">{$rs[0]['station']}违章违纪及事故登记簿</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead>
						<tr class="text-c">
							<th width="8%">时间</th>
							<th>{date('Y年n月j日',$rs[0]['rq'])}</th>
							<th width="8%">责任者</th>
							<th width="8%">{$rs[0]['zzr']}</th>
							<th width="8%">班组</th>
							<th width="8%">{$rs[0]['bz']}</th>
							<th width="8%">职名</th>
							<th width="8%">{$rs[0]['zm']}</th>
							<th width="8%">政治面貌</th>
							<th width="8%">{$rs[0]['zzmm']}</th>
							<th width="8%">类别</th>
							<th width="8%">{$rs[0]['lb']}</th>
						</tr>
						<tr class="text-c">
							<th>主持人</th>
							<th>{$rs[0]['zcr']}</th>
							<th>参加人员</th>
							<th colspan="9" class="text-l">{$rs[0]['cjr']}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-c">概况</th>
							<td colspan="11">{$rs[0]['a1']|nl2br}</td>
						</tr>
						<tr>
							<th class="text-c">分析</th>
							<td colspan="11">{$rs[0]['a2']|nl2br}</td>
						</tr>
						<tr>
							<th class="text-c">教训</th>
							<td class="text-l" colspan="11">{$rs[0]['a3']|nl2br}</td>
						</tr>
						<tr>
							<th class="text-c">措施</th>
							<td class="text-l" colspan="11">{$rs[0]['a4']|nl2br}</td>
						</tr>
						<tr>
							<th class="text-c">处理</th>
							<td class="text-l" colspan="11">{$rs[0]['a5']|nl2br}</td>
						</tr>
					</tbody>
				</table>	
			</div>
			{if $rs[0]['up_user'] eq $smarty.cookies.username}
			<div class="f-20 ml-40 mt-40 mb-40"><a href="?action=erase_wzwj&uid={$rs[0]['id']}" class="btn btn-warning-outline radius"><i class="Hui-iconfont">&#xe6dd;</i> 删除</a> </div>
			{/if}
		</div>
	</article>
</div>
