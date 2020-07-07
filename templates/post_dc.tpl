
<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
                        <div class="text-c f-24">{$smarty.cookies.division}{$title}</div>
                        <form action="?action=save_dc" method="post">
						<table class="table table-border table-bordered table-bg mt-5">
							<thead>
								<tr class="text-c">
                                    <th width="9%">日 期</th>
                                    <th width="9%"><input type="text" class="input-text" id="rq" name="rq" readonly="readonly" value="{date('Y-n-j')}"></th>
                                    <th colspan="2">班  次</th>
                                    <th width="9%"><input type="text" class="input-text" name="bc"></th>
                                    <th width="9%">时 间</th>
                                    <th width="9%"><input type="text" class="input-text" name="sj"></th>
                                    <th width="9%">地  点</th>
                                    <th width="9%"><input type="text" class="input-text" name="dd"></th>
                                    <th width="9%">主持人</th>
                                    <th><input type="text" class="input-text" name="zcr"></th>
                                </tr>
                                <tr class="text-c">
                                    <th>车站值班员</th>
                                    <th><input type="text" class="input-text" name="zby1"></th>
                                    <th colspan="2">助理值班员（内勤）</th>
                                    <th><input type="text" class="input-text" name="zby2"></th>
                                    <th>调车长</th>
                                    <th><input type="text" class="input-text" name="zby3"></th>
                                    <th>连结员1</th>
                                    <th><input type="text" class="input-text" name="zby4"></th>
                                    <th>连结员2</th>
                                    <th><input type="text" class="input-text" name="zby5"></th>
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
                            <div id="dcjh">
								<tr class="text-c" id="dcjh0">
                                    <td colspan="2" rowspan="2" id="cola"><textarea cols="" rows="" class="textarea" name="b1" style="height: 500px"></textarea></td>
                                    {for $i=1 to 4}
                                        <td><input type="text" class="input-text" name="a{$i}[]"></td>
                                    {/for}
                                    <td colspan="2"><input type="text" class="input-text" name="a5[]" style="width: 150px;">
                                    <a href="javascript:f_dc_add();" class="btn btn-success-outline radius size-MINI">增加</a>
                                    </td>
                                    <td colspan="3" rowspan="1" id="colb"><textarea cols="" rows="" class="textarea" name="b2" style="height: 300px"></textarea>
                                    </td>
                                </tr>
                                <tr id="bbjbb" class="none"><td></td><td></td><td></td><td></td><td></td></tr>
                            </div>
                                <tr>
                                    <td colspan="6" class="text-l">注意事项:<textarea cols="" rows="" class="textarea" name="b3"></textarea>
                                        <p class="text-r">调车领导人姓名:<input type="text" name="dcldr"></p>
                                    </td>
                                    <td colspan="3"><p>车站值班员<input type="text" name="cj1">分</p>
                                    <p>助理值班员（内勤）<input type="text" name="cj2">分</p>
                                    <p>调车长<input type="text" name="cj3">分</p>
                                    <p>连结员1<input type="text" name="cj4">分</p>
                                    <p>连结员2<input type="text" name="cj5">分</p>
                                    </td>
                                </tr>
						</table>
						<table class="mt-20">
							<td class="text-c">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</td>
						</table>
                        </form>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
<script src="worklog.js"></script>
