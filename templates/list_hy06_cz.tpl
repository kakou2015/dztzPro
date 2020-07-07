
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
                                    <th rowspan="3" width="4.8%">日期</th>
                                    <th rowspan="3" width="4.8%">车站名称</th>
                                    <th rowspan="3" width="4.8%">设备名称</th>
                                    <th rowspan="3" width="4.8%">测点</th>
                                    <th rowspan="3" width="4.8%">生产厂家</th>
                                    <th rowspan="3">故障概况</th>
                                    <th rowspan="3" width="4.8%">发生时间</th>
                                    <th rowspan="3" width="4.8%">恢复时间</th>
                                    <th colspan="12">故障主要原因</th>
                                    <th rowspan="3" width="4.8%">填记人签字</th>
                                </tr>
                                <tr class="text-c">
                                    <th colspan="3">信道故障</th>
                                    <th width="4.8%" rowspan="2">电源故障</th>
                                    <th colspan="4">超偏载检测装置/轨道衡设备故障</th>
                                    <th colspan="4">车号识别设备故障</th>
                                </tr>
                                <tr class="text-c">
                                    <th width="4.8%">电平</th>
                                    <th width="4.8%">噪声</th>
                                    <th width="4.8%">其他</th>
                                    <th width="4.8%">传感器</th>
                                    <th width="4.8%">通道</th>
                                    <th width="4.8%">主机</th>
                                    <th width="4.8%">其他</th>
                                    <th width="4.8%">主机</th>
                                    <th width="4.8%">天线</th>
                                    <th width="4.8%">磁钢</th>
                                    <th width="4.8%">其他</th>
                                </tr>
							</thead>
							<tbody>
							{foreach $rs1 as $rs}
								<tr class="text-c">
									<td>{date('Y年n月j日',$rs['rq'])}</td>
									<td>{$rs['station']}</td>
									{for $i=1 to 19}
										<td>{$rs["a$i"]}</td>
									{/for}
								</tr>
							{/foreach}
							<tr><th colspan="21">{$page_disp}</th> </tr>
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
