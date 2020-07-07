
<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$title}</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
							<tr class="text-c">
								<th width="4%">序号</th>
								<th width="7%">设备名称</th>
								<th width="7%">型号</th>
								<th width="10%">序列号</th>
								<th width="7%">频率</th>
								<th width="10%">使用(存放)地点</th>
								<th width="7%">使用(保管)人</th>
								<th width="10%">配备时间</th>
								<th width="10%">有效期限</th>
								<th>备注</th>
							</tr>
							</thead>
							<tbody>
							{foreach $rs1 as $rs}
								<tr class="text-c">
									<td>{$rs['xh']}</td>
									<td>{$rs['sbmc']}</td>
									<td>{$rs['typeh']}</td>
									<td>{$rs['xlh']}</td>
									<td>{$rs['pl']}</td>
									<td>{$rs['sydd']}</td>
									<td>{$rs['syr']}</td>
									<td>{date('Y年n月j日',$rs['pbsj'])}</td>
									<td>{$rs['yxqx']}</td>
									<td class="text-l" title="{$rs['up_user']}上报">{$rs['bz']}
									{if $smarty.cookies.username eq $rs['up_user']}
										<a href="?action=erase_zgsb&uid={$rs['id']}" class="btn btn-danger-outline radius size-MINI ml-40">删除</a>
									{/if}
									</td>
								</tr>
							{/foreach}
							<tr><th colspan="10">{$page_disp}</th> </tr>
							</tbody>
						</table>	
					</div>
				</div>
			</article>
		</div>
