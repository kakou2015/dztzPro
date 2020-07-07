
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
                        <div class="text-c f-24">{$rs[0]['station']}{$title}</div>
						<table class="table table-border table-bordered table-bg mt-5">
							<thead>
								<tr class="text-c">
                                    <th width="9%">日 期</th>
                                    <th width="9%">&nbsp;{date('Y年n月j日',$rs[0]['rq'])}</th>
                                    <th colspan="2">班  次</th>
                                    <th width="9%">&nbsp;{$rs[0]['bc']}</th>
                                    <th width="9%">时 间</th>
                                    <th width="9%">&nbsp;{$rs[0]['sj']}</th>
                                    <th width="9%">地  点</th>
                                    <th width="9%">&nbsp;{$rs[0]['dd']}</th>
                                    <th width="9%">主持人</th>
                                    <th>&nbsp;{$rs[0]['zcr']}</th>
                                </tr>
                                <tr class="text-c">
                                    <th>车站值班员</th>
                                    <th>&nbsp;{$rs[0]['zby1']}</th>
                                    <th colspan="2">助理值班员（内勤）</th>
                                    <th>&nbsp;{$rs[0]['zby2']}</th>
                                    <th>调车长</th>
                                    <th>&nbsp;{$rs[0]['zby3']}</th>
                                    <th>连结员1</th>
                                    <th>&nbsp;{$rs[0]['zby4']}</th>
                                    <th>连结员2</th>
                                    <th>&nbsp;{$rs[0]['zby5']}</th>
                                </tr>
                                <tr class="text-c">
                                    <th colspan="2" rowspan="2">演练题目</th>
                                    <th colspan="6">调车作业通知单</th>
                                    <th colspan="3" rowspan="2">存在问题分析及得分</th>
                                </tr>
                                <tr class="text-c">
                                    <th width="9%">序号</th>
                                    <th width="9%">股道</th>
                                    <th>摘或挂<p>-  + </p></th>
                                    <th>车数</th>
                                    <th colspan="2">附记</th>
                                </tr>
							</thead>
							<tbody>
                            {$c=count($rs2)}
                            {$b=$c-1}
                            {$d=$c+5}
								<tr class="text-c">
                                    <td colspan="2" rowspan="{$d}" class="text-l" valign="top">{$rs[0]['b1']|nl2br}</td>
                                    <td>&nbsp;{$rs2[0]['a1']|default:''}</td>
                                    <td>&nbsp;{$rs2[0]['a1']|default:''}</td>
                                    <td>&nbsp;{$rs2[0]['a1']|default:''}</td>
                                    <td>&nbsp;{$rs2[0]['a1']|default:''}</td>
                                    <td colspan="2">&nbsp;{$rs2[0]['a1']|default:''}</td>
                                    <td colspan="3" rowspan="{$c}" class="text-l">{$rs[0]['b2']|nl2br}</td>
                                </tr>
                                {for $i=1 to $b}
                                    <tr class="text-c">
                                        <td>{$rs2[$i]['a1']}</td>
                                        <td>&nbsp;{$rs2[$i]['a2']}</td>
                                        <td>&nbsp;{$rs2[$i]['a3']}</td>
                                        <td>&nbsp;{$rs2[$i]['a4']}</td>
                                        <td colspan="2">&nbsp;{$rs2[$i]['a5']}</td>
                                    </tr>
                                {/for}
                                <tr>
                                    <td colspan="6" rowspan="4" class="text-l" valign="top"><strong>注意事项：</strong>{$rs[0]['b3']|nl2br}</td>
                                    <td colspan="3">车站值班员：{$rs[0]['cj1']}分</td>
                                </tr>
                                <tr>
                                    <td colspan="3">助理值班员（内勤）：{$rs[0]['cj2']}分</td>
                                </tr>
                                <tr>
                                    <td colspan="3">调车长：{$rs[0]['cj3']}分</td>
                                </tr>
                                <tr>
                                    <td colspan="3">连结员1：{$rs[0]['cj4']}分</td>
                                </tr>
                                <tr>
                                    <td colspan="6" class="text-r">调车领导人姓名：{$rs[0]['dcldr']}</td>
                                    <td colspan="3">连结员2：{$rs[0]['cj5']}分</td>
                                </tr>
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
