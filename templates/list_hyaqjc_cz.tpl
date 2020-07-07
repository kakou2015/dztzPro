
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<table class="table table-bg mt-20">
							<tr>
								<th class="text-c f-24">{$title}</th>
							</tr>
						</table>
						<table class="table table-border table-bordered table-bg mt-20">
							<thead>
								<tr class="text-c">
									<th width="15%">日期</th>
									<th width="15%">项目</th>
									<th width="15%">检查内容</th>
									<th>发现问题、具体要求或改进措施</th>
									<th width="10%">检查人</th>
								</tr>
							</thead>
							<tbody>
							{foreach $rs1 as $rs}
								<tr class="text-c">
									<td>{date('Y年n月j日',$rs['rq'])}</td>
									<td><p>装载加固（<input disabled type="checkbox" id="checkbox-disabled-checked" {$rs['a1']}>）</p>
										<p>危险货物（<input disabled type="checkbox" id="checkbox-disabled-checked" {$rs['a2']}>）</p>
										<p>货装联合（<input disabled type="checkbox" id="checkbox-disabled-checked" {$rs['a3']}>）</p>
										<p>集装箱（<input disabled type="checkbox" id="checkbox-disabled-checked" {$rs['a4']}>）</p>
										<p>其他（<input disabled type="checkbox" id="checkbox-disabled-checked" {$rs['a5']}>）</p>
									</td>
									<td class="text-l">{$rs['a6']|nl2br}</td>
									<td class="text-l">{$rs['a7']|nl2br}</td>
									<td>{$rs['a8']}</td>
								</tr>
							{/foreach}
							<tr><th colspan="5">{$page_disp}</th></tr>
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
