
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
								<th width="4%">序号</th>
								<th width="9.5%">设备名称</th>
								<th width="9.5%">配置地点</th>
								<th width="9.5%">修程</th>
								<th width="9.5%">计划时间</th>
								<th width="9.5%">完成时间</th>
								<th width="9.5%">处理故障细节</th>
								<th width="9.5%">检修负责人</th>
								<th width="9.5%">检修负责人单位</th>
								<th width="9.5%">检测站验收人</th>
								<th>备注</th>
							</tr>
							</thead>
							<tbody>
							{foreach $rs1 as $rs}
								<tr class="text-c">
									{for $i=1 to 11}
										<td>{$rs["a$i"]}</td>
									{/for}
								</tr>
							{/foreach}
							<tr>
								<td colspan="11">注：检修、维护时，未涉及的项目可不填写。</td>
							</tr>
							<tr>
								<th colspan="11">{$page_disp}</th>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
