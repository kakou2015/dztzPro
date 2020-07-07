
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<table class="table table-bg mt-20">
					<tr>
						<th class="text-c f-16" colspan="21">{$rs[0]['cz_title']|default:''}车间（车站）工作日志</th>
					</tr>
					<tr>
						<th class="text-c">{date('Y年n月j日 G:i',$rs[0]['rq']|default:time())}</th>
						<th class="text-c">填记人：{$rs[0]['username']|default:''}</th>
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
						<td></td>
						<th>天气：{$rs[0]['weather']|default:''}</th>
						<td></td>
					</tr>
				</table>
				<table class="table table-border table-bordered table-bg mt-5">
					<tr>
						<th class="text-c" width="20%">上级重要指示</th>
						<td class="text-l">{$rs[0]['a1']|nl2br|default:''}</td>
					</tr>
					<tr>
						<th class="text-c">重点工作安排</th>
						<td class="text-l">{$rs[0]['a2']|nl2br|default:''}</td>
					</tr>
					<tr>
						<th class="text-c">安全情况</th>
						<td class="text-l">{$rs[0]['a3']|nl2br|default:''}</td>
					</tr>
					<tr>
						<th class="text-c">生产情况</th>
						<td class="text-l">{$rs[0]['a4']|nl2br|default:''}</td>
					</tr>
				</table>
				<table class="table table-border table-bordered table-bg mt-20">
					<tr class="text-c">
						{$row = count($rs1) + 1}
						<th class="text-c" width="20%" rowspan="{$row}">规章提问</th>
						<th width="8%">被提问人</th>
						<th width="10%">职名</th>
						<th>提问内容</th>
						<th width="6%">成绩</th>
						<th width="8%">提问人</th>
					</tr>
					{foreach $rs1 as $r}
					<tr class="text-c">
						<td>{$r['a1']}</td>
						<td>{$r['a2']}</td>
						<td class="text-l">{$r['a3']}</td>
						<td>{$r['a4']}</td>
						<td>{$r['a5']}</td>
					</tr>
					{/foreach}
					<tr>
						<th class="text-c">记事</th>
						<td colspan="5">{$rs[0]['a5']|nl2br|default:''}</td>
					</tr>
				</table>
			</div>
			{if $rs[0]['lockend'] eq 'false'}
				<div class="mt-40 ml-40 mb-40 f-20"><label class="btn btn-warning-outline radius">未完成填写</label> </div>
			{/if}
		</div>
	</article>
</div>
