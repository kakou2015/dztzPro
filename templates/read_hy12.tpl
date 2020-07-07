
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="text-c">
                        <td width="44%" colspan="4">{$rs[0]['a1']}</td>
                        <td colspan="5" class="text-r">{date('Y年n月k日',$rs[0]['rq'])}</td>
                    </tr>
                    <tbody>
                    <tr class="text-c">
                        <th class="active" colspan="2">交班</th>
                        <td colspan="2">第{$rs[0]['a2']}班</td>
                        <th class="active" width="11%">司机姓名</th>
                        <td colspan="4">{$rs[0]['a3']}</td>
                    </tr>
                    <tr class="text-c">
                        <th class="active" colspan="2">接班</th>
                        <td colspan="2">第{$rs[0]['a4']}班</td>
                        <th class="active" width="138">司机姓名</th>
                        <td colspan="4">{$rs[0]['a5']}</td>
                    </tr>
                    <tr class="text-c active">
                        <th colspan="2">运转小时</th>
                        <th colspan="2">检修时间</th>
                        <th width="11%">完成吨数</th>
                        <th colspan="2" width="18%">耗电</th>
                        <th colspan="2">耗油</th>
                    </tr>
                    <tr class="text-c">
                        <td colspan="2">{$rs[0]['a6']}</td>
                        <td colspan="2">{$rs[0]['a7']}</td>
                        <td>{$rs[0]['a8']}</td>
                        <td colspan="2">{$rs[0]['a9']}</td>
                        <td colspan="2">{$rs[0]['a10']}</td>
                    </tr>
                    <tr class="text-c">
                        <th class="active" rowspan="4">检查保养项目</th>
                        <th class="active">清洁卫生</th>
                        <td colspan="2">{$rs[0]['a11']}　</td>
                        <th class="active">金属结构</th>
                        <td colspan="2">{$rs[0]['a12']}　</td>
                        <th class="active" width="11%">音响照明</th>
                        <td>{$rs[0]['a13']}　</td>
                    </tr>
                    <tr class="text-c">
                        <th class="active">各部紧固件</th>
                        <td colspan="2">{$rs[0]['a14']}　</td>
                        <th class="active">电气线路</th>
                        <td colspan="2">{$rs[0]['a15']}　</td>
                        <th class="active">仪器仪表</th>
                        <td>{$rs[0]['a16']}　</td>
                    </tr>
                    <tr class="text-c">
                        <th class="active">各部润滑</th>
                        <td colspan="2">{$rs[0]['a17']}　</td>
                        <th class="active">安全装置</th>
                        <td colspan="2">{$rs[0]['a18']}　</td>
                        <th class="active">油水气电</th>
                        <td>{$rs[0]['a19']}　</td>
                    </tr>
                    <tr class="text-c">
                        <th class="active">空机运转</th>
                        <td colspan="2">{$rs[0]['a20']}　</td>
                        <th class="active">钢丝绳</th>
                        <td colspan="2">{$rs[0]['a21']}　</td>
                        <th class="active">附属设备、工具、备品</th>
                        <td>{$rs[0]['a22']}　</td>
                    </tr>
                    <tr>
                        <th class="text-c active">故障处理</th>
                        <td colspan="8">{$rs[0]['a23']|nl2br}　</td>
                    </tr>
                    <tr>
                        <th  class="text-c active">接班司机意见</th>
                        <td colspan="8">{$rs[0]['a24']|nl2br}　</td>
                    </tr>
                    <tr>
                        <td colspan="9">注：交接班司机按检查和保养内容进行检查和验收，无问题在项目栏后打&ldquo;√&rdquo;，否则打&ldquo;×&rdquo;，并在故障处理中填写故障处理过程和结果。</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</div>
