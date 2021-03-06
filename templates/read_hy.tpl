
<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$rs[0]['station']}会议记录簿</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr>
									<th class="text-c" width="15%">会议名称</th>
									<th colspan="3">{$rs[0]['hymc']}</th>
								</tr>
								<tr>
									<th class="text-c">时间</th>
									<th width="30%">{date('Y年n月j日',$rs[0]['sj'])}</th>
									<th class="text-c" width="15%">地点</th>
									<th>{$rs[0]['dd']}</th>
								</tr>
								<tr>
									<th class="text-c">参加人员</th>
									<th colspan="3">{$rs[0]['cjry']}</th>
								</tr>
								<tr>
									<th class="text-c">缺席人员及原因</th>
									<th colspan="3">{$rs[0]['qxry']}</th>
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
										{if $smarty.cookies.username eq $rs[0]['up_user']}
											<p><a href="?action=erase_hy&uid={$rs[0]['id']}" class="btn btn-danger-outline size-MINI radius"><i class="Hui-iconfont">&#xe661;</i> 删除</a></p>
										{/if}
									</td>
								</tr>
							</tbody>
						</table>	
					</div>
				</div>
			</article>
		</div>
	</section>
