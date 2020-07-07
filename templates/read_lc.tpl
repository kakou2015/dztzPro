
<div class="Hui-admin-article">
		<article class="Hui-admin-content clearfix">
			<div class="panel">
				<div class="panel-body">
                    <div class="text-c f-24">{$rs[0]['station']}接发列车演练登记簿</div>
					<table class="table table-bg mt-20">
						<tr class="text-c">
							<th>车站值班员&nbsp;&nbsp;&nbsp;{$rs[0]['zby1']}</th>
							<th>助理值班员（内勤）&nbsp;&nbsp;&nbsp;{$rs[0]['zby2']}</th>
							<th>助理值班员（外勤）&nbsp;&nbsp;&nbsp;{$rs[0]['zby3']}</th>
							<th>扳道员&nbsp;&nbsp;&nbsp;{$rs[0]['zby4']}</th>
							<th>{$rs[0]['bt']}</th>
							<th>{date('Y年n月j日',$rs[0]['rq'])}</th>
							<th>站长签名&nbsp;&nbsp;&nbsp;{$rs[0]['zz']}</th>
						</tr>
					</table>
<table class="table table-border table-bordered table-bg mt-5">
<thead>							
<tr class="text-c">
<th rowspan="3"><p>列车</p><p>车次</p></th>
<th width="6%" rowspan="3"><p>接车</p><p>股道</p></th>
<th colspan="4">时分</th>
<th colspan="3">摘车数量</th>
<th width="6%" rowspan="3"><p>占用区</p><p>间许可</p><p>证号码</p></th>
<th colspan="5">电话号码记录</th>
</tr>
<tr class="text-c">
<th rowspan="2" width="6%"><p>同意邻</p><p>站发车</p></th>
<th rowspan="2" width="6%"><p>邻站</p><p>发车</p></th>
<th colspan="2">本站到达</th>
<th colspan="2">运用车</th>
<th rowspan="2" width="6%"><p>非运</p><p>用车</p></th>
<th rowspan="2" width="6%"><p>承认</p><p>闭塞</p></th>
<th rowspan="2" width="6%"><p>列车到</p><p>达补机</p><p>返回</p></th>
<th rowspan="2" width="6%"><p>取消</p><p>闭塞</p></th>
<th rowspan="2" width="6%"><p>出站（跟</p><p>踪）调车</p></th>
<th rowspan="2" width="10%"><p>出站（跟</p><p>踪）调车</p><p>完毕</p></th>
</tr>
<tr class="text-c">
<th width="6%">规定</th>
<th width="6%">实际</th>
<th width="6%">重车</th>
<th width="6%">空车</th>
</tr>
<tr class="text-c">
{for $i=1 to 15}
    <th>{$i}</th>
{/for}
</tr>
</thead>
<tbody>
{foreach $rs2 as $r}
<tr class="text-c">
{for $i=1 to 15}
<td>{$r["a$i"]}</td>
{/for}
</tr>
{/foreach}

<tr class="text-c">
<th>演练题目</th>
<td colspan="14" class="text-l">{$rs[0]['a1']|nl2br}</td>
</tr>
</tbody>
</table>
<table class="table table-border table-bordered table-bg mt-20">
<thead>
<tr class="text-c">
<th rowspan="3"><p>列车</p><p>车次</p></th>
<th rowspan="3"><p>发车</p><p>股道</p></th>
<th colspan="4">时分</th>
<th colspan="3">摘车数量</th>
<th colspan="2">列车编组</th>
<th rowspan="3"><p>占用区</p><p>间许可</p><p>证号码</p></th>
<th colspan="5">电话记录号码</th>
<th rowspan="3"><p>本务</p><p>机调</p><p>车时</p><p>分</p></th>
<th rowspan="3"><p>列车</p><p>停站</p><p>超过</p><p>规定</p><p>时间</p><p>的原</p><p>因</p></th>
<th rowspan="3">记事</th>
</tr>
<tr class="text-c">
<th rowspan="2"><p>邻站</p><p>同意</p><p>发车</p></th>
<th colspan="2">本站出发</th>
<th rowspan="2"><p>邻站</p><p>到达</p></th>
<th colspan="2">运用车</th>
<th rowspan="2"><p>非运</p><p>用车</p></th>
<th rowspan="2">换长</th>
<th rowspan="2"><p>总重</p><p>（吨）</p></th>
<th rowspan="2"><p>承认</p><p>闭塞</p></th>
<th rowspan="2"><p>列车到</p><p>达补机</p><p>返回</p></th>
<th rowspan="2"><p>取消</p><p>闭塞</p></th>
<th rowspan="2"><p>出站（跟</p><p>踪）调车</p></th>
<th rowspan="2"><p>出站（跟</p><p>踪）调车</p><p>完毕</p></th>
</tr>
<tr class="text-c">
<th>规定</th>
<th>实际</th>
<th>重车</th>
<th>空车</th>
</tr>
<tr class="text-c">
<th>16</th>
{for $i=17 to 35}
    <th width="4.9%">{$i}</th>
{/for}
</tr>
</thead>
<tbody>
{foreach $rs2 as $r}
<tr class="text-c">
{for $i=16 to 35}
    <td>{$r["a$i"]}</td>
{/for}
</tr>
{/foreach}
<tr>
<th class="text-c">问题分析</th>
<td colspan="14">{$rs[0]['a2']|nl2br}</td>
<th class="text-c">评分</th>
<td colspan="4"><p>车站值班员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['cj1']}分</p><p>助理值班员（内勤）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['cj2']}分</p><p>助理值班员（外勤）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['cj3']}分</p><p>扳道员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['cj4']}分</p></td>
</tr>
</tbody>
</table>
				</div>
			</div>
		</article>
	</div>
