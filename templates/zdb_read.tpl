
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$rs[0]['station']}安全生产指导簿</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<tr class="text-c">
						<th width="50%" colspan="2">检查提出问题、改进意见及指示</th>
						<th width="50%" colspan="2">答复意见及措施</th>
					</tr>
					<tr class="text-l" height="250" valign="top">
						<td colspan="2" title="{$rs[0]['up_user']}上报检查情况">{$rs[0]['a1']|nl2br|default:'&nbsp;'}
							{if $rs[0]['lockend'] eq 'false' and $rs[0]['up_user'] eq $smarty.cookies.username}
									<p class="mt-40"><a href="?action=erase_aqzdb&uid={$rs[0]['id']}" class="btn btn-danger-outline radius"><i class="Hui-iconfont">&#xe6a6;</i> 删除重写</a></p>
							{/if}
						</td>
						<td colspan="2" title="{$rs[0]['up_post_user']}上报整改意见">{$rs[0]['a2']|nl2br|default:'&nbsp;'}
						{if $rs[0]['lockend'] eq 'false'}
							<p class="c-red f-20 mt-40 text-r">未整改结束</p>
						{/if}
						</td>
					</tr>
					<tr>
						<td width="25%">检查人签名：{$rs[0]['check_user']|default:''}</td>
						<td width="25%" class="text-r">{date('Y年n月j日',$rs[0]['check_rq']|default:time())}</td>
						<td width="25%">被检查人签名：{$rs[0]['post_user']|default:''}</td>
						<td width="25%" class="text-r">{date('Y年n月j日',$rs[0]['post_rq']|default:time())}</td>
					</tr>
				</table>
			</div>
		</div>
	</article>
</div>
