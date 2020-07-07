
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$rs[0]['station']}{$title}</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead>
						<tr>
							<th width="15%" class="text-c">施工项目</th>
							<th colspan="3">{$rs[0]['hymc']}</th>
						</tr>
						<tr>
							<th class="text-c">会议时间</th>
							<th width="30%">{date('Y年n月j日 G:i',$rs[0]['sj'])}</th>
							<th class="text-c" width="15%">地点</th>
							<th>{$rs[0]['dd']}</th>
						</tr>
						<tr>
							<th class="text-c">参加人员</th>
							<th colspan="3">{$rs[0]['cjry']}</th>
						</tr>
						<tr>
							<th class="text-c">主持人</th>
							<th>{$rs[0]['zcr']}</th>
							<th class="text-c">记录人</th>
							<th>{$rs[0]['jlr']}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-c">主要内容</th>
							<td colspan="3" title="{$rs[0]['up_user']}上报">{$rs[0]['a1']|nl2br}
							<p>
								{if $smarty.cookies.username eq $rs[0]['up_user']}
									<a href="?action=erase_sh&tab={$tab_name}&uid={$rs[0]['id']}" class="btn btn-danger-outline radius size-MINI"><i class="Hui-iconfont">&#xe661;</i> 删除</a>
								{/if}
							</p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
</div>
