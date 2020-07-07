
<div class="Hui-admin-article">
	<article class="Hui-admin-content clearfix">
		<div class="panel">
			<div class="panel-body">
				<div class="text-c f-24">{$title}</div>
				<table class="table table-border table-bordered table-bg mt-20">
					<thead><tr class="text-c">
						<th width="15" rowspan="2">月</th>
						<th width="15" rowspan="2">日</th>
						<th width="30" rowspan="2">时间</th>
						<th width="5%" rowspan="2">股道</th>
						<th width="40" rowspan="2">停电或送电</th>
						<th width="10%" rowspan="2">事由</th>
						<th width="50" rowspan="2">请求人</th>
						<th colspan="2">批准者</th>
						<th colspan="3">执行者</th>
						<th rowspan="2" style="width: 200px;">备注</th>
					</tr>
					<tr class="text-c">
						<th width="30">时间</th>
						<th width="50">姓名</th>
						<th width="30">时间</th>
						<th width="50">操作者</th>
						<th width="50">监护者</th>
					</tr>
					</thead>
					<tbody>
					{foreach $rs1 as $rs}
						<tr class="text-c" title="{$rs['cip']}">
							{for $i=1 to 12}
								<td>{if $rs["a{$i}"] eq '停电'}
									<span class="c-red">停电</span>
									{else}
									{$rs["a{$i}"]}
									{/if}
								</td>
							{/for}
							<td class="text-l">{$rs['bz']|nl2br}
							<p class="text-r">{$rs['bzr']|nl2br}</p>
							</td>
						</tr>
					{/foreach}
					<tr><th colspan="15">{$page_disp}</th> </tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
</div>
