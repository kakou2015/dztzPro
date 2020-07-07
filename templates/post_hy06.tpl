
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<p class="text-c f-24">{$rs[0]['station']}{$title}</p>
							<form action="task.php?action=save_hy06" method="post" class="mt-20 form">
						<table class="table table-border table-bordered table-bg">
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
								<tr class="text-c">
									<td><input type="text" class="input-text" name="rq" id="rq" value="{date('Y-n-j',$rs[0]['rq'])}" readonly="readonly"></td>
									<td>{$rs[0]['station']}</td>
									<td><input type="text" class="input-text" name="a1" value="{$rs[0]['a1']}"></td>
									<td><input type="text" class="input-text" name="a2" value="{$rs[0]['a2']}"></td>
									<td><input type="text" class="input-text" name="a3" value="{$rs[0]['a3']}"></td>
									<td><input type="text" class="input-text" name="a4" value="{$rs[0]['a4']}"></td>
									<td><input type="text" class="input-text" name="a5" value="{$rs[0]['a5']}"></td>
									<td><input type="text" class="input-text" name="a6" value="{$rs[0]['a6']}"></td>
									<td><input type="text" class="input-text" name="a7" value="{$rs[0]['a7']}"></td>
									<td><input type="text" class="input-text" name="a8" value="{$rs[0]['a8']}"></td>
									<td><input type="text" class="input-text" name="a9" value="{$rs[0]['a9']}"></td>
									<td><input type="text" class="input-text" name="a10" value="{$rs[0]['a10']}"></td>
									<td><input type="text" class="input-text" name="a11" value="{$rs[0]['a11']}"></td>
									<td><input type="text" class="input-text" name="a12" value="{$rs[0]['a12']}"></td>
									<td><input type="text" class="input-text" name="a13" value="{$rs[0]['a13']}"></td>
									<td><input type="text" class="input-text" name="a14" value="{$rs[0]['a14']}"></td>
									<td><input type="text" class="input-text" name="a15" value="{$rs[0]['a15']}"></td>
									<td><input type="text" class="input-text" name="a16" value="{$rs[0]['a16']}"></td>
									<td><input type="text" class="input-text" name="a17" value="{$rs[0]['a17']}"></td>
									<td><input type="text" class="input-text" name="a18" value="{$rs[0]['a18']}"></td>
									<td>{$rs[0]['a19']}<input type="text" class="input-text" id="a19" name="a19" />
										<input type="button" value="证件签到" onclick="hy_zj('a19','ledger_pro_hy06')" class="btn btn-secondary-outline radius size-MINI mt-10"></td>
								</tr>	
							</tbody>
						</table>
							<p class="text-c mt-40">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
								<input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
							</p>
							</form>
							<p class="mt-20">
								<a href="task.php?action=end_hy06&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
							</p>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
