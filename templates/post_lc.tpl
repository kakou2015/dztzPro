
		<div class="Hui-admin-article">
			<article class="Hui-admin-content clearfix">
				<div class="panel">
					<div class="panel-body">
                      <div class="text-c f-24">{$smarty.cookies.division}接发列车演练登记簿</div>
                      <form action="?action=save_lc" method="post">
						<table class="table table-bg mt-20">
							<tr class="text-c">
								<th>车站值班员&nbsp;&nbsp;<input type="text" name="zby1" style="width: 60px"></th>
								<th>助理值班员（内勤）<input type="text" name="zby2" style="width: 60px"></th>
								<th>助理值班员（外勤）<input type="text" name="zby3" style="width: 60px"></th>
								<th>扳道员&nbsp;&nbsp;<input type="text" name="zby4" style="width: 100px"></th>
								<th><input type="text" name="bt" style="width: 150px" value="   班 题"></th>
								<th><input type="text" name="rq" id="rq" readonly="readonly" style="width: 120px" value="{date('Y-n-j')}"></th>
								<th>站长签名&nbsp;&nbsp;<input type="text" name="zz" style="width: 60px"></th>
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
    <th rowspan="4"><a href="javascript:f_cl_add();" class="btn btn-success-outline radius size-MINI">增加</a> </th>
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
<tbody id="lc1">
  <tr class="text-c">
    {for $i=1 to 15}
      <td><input type="text" class="input-text" name="a{$i}[]"></td>
    {/for}
    <td></td>
  </tr>
</tbody>
  <tr class="text-c">
    <th>演练题目</th>
    <td colspan="15"><textarea cols="" rows="" class="textarea" name="b1"></textarea></td>
  </tr>
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
 <tbody id="lc2">
   <tr class="text-c">
     {for $i=16 to 35}
       <td><input type="text" class="input-text" name="a{$i}[]"></td>
     {/for}
  </tr>
 </tbody>
  <tr class="text-c">
    <th>问题分析</th>
    <td colspan="14"><textarea cols="" rows="" class="textarea" name="b2"></textarea></td>
    <th>评分</th>
    <td colspan="4"><p>车站值班员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cj1">分</p>
      <p>助理值班员（内勤）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cj2" style="width: 80px;">分</p>
      <p>助理值班员（外勤）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cj3" style="width: 80px;">分</p>
      <p>扳道员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cj4">分</p></td>
  </tr>
</table>
                        <table class="mt-20">
							<td class="text-c">
								<button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
							</td>
						</table>
                        <input type="hidden" id="col" value="0">
                      </form>
					</div>
				</div>
			</article>
		</div>
<script src="/datatime/laydate.js"></script>
<script src="lay_rq.js"></script>
<script src="worklog.js"></script>
