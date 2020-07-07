
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
						<div class="text-c f-24">{$rs1[0]['c1']}{$rq}职工考勤簿</div>
						<table class="table table-border table-bordered table-bg mt-20">
							<tbody>
								<tr class="text-c">
									<th width="7%">姓名\日期</th>
									<td width="3%">1</td>
									<td width="3%">2</td>
									<td width="3%">3</td>
									<td width="3%">4</td>
									<td width="3%">5</td>
									<td width="3%">6</td>
									<td width="3%">7</td>
									<td width="3%">8</td>
									<td width="3%">9</td>
									<td width="3%">10</td>
									<td width="3%">11</td>
									<td width="3%">12</td>
									<td width="3%">13</td>
									<td width="3%">14</td>
									<td width="3%">15</td>
									<td width="3%">16</td>
									<td width="3%">17</td>
									<td width="3%">18</td>
									<td width="3%">19</td>
									<td width="3%">20</td>
									<td width="3%">21</td>
									<td width="3%">22</td>
									<td width="3%">23</td>
									<td width="3%">24</td>
									<td width="3%">25</td>
									<td width="3%">26</td>
									<td width="3%">27</td>
									<td width="3%">28</td>
									<td width="3%">29</td>
									<td width="3%">30</td>
									<td width="3%">31</td>
								</tr>
								{foreach $rs1 as $rs}
									<tr class="text-c">
										<td>{$rs['c2']}</td>
										{for $i=1 to 31}
											<td>{$rs["a$i"]}</td>
										{/for}
									</tr>
								{/foreach}
								<tr>
									<th class="text-c">备注</th>
									<td colspan="31">参加点名“√”；未参加点名“×”；点名迟到“0”；点名请假“△”</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</article>
		</div>
