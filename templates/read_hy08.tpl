
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <table class="table table-border table-bordered table-bg mt-20">
                    <tr class="active">
                        <th colspan="5">一、服务器系统检查</th>
                    </tr>
                    <tr class="text-c active">
                        <td width="10%">序号</td>
                        <td width="22%">检查项目</td>
                        <td width="22%">检查内容</td>
                        <td width="22%">结果</td>
                        <td>备注</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2">1</td>
                        <td class="active" rowspan="2">系统硬件</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;设备故障灯</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a1']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;其他异常</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a2']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2">2</td>
                        <td class="active" rowspan="2">系统错误报告</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;硬件故障</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a3']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;软件故障</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a4']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" class="text-c">3</td>
                        <td class="active">磁盘空间</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;D盘、E盘的剩余磁盘空间</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a5']}
                        </td>
                        <td>大于80%为不正常</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2">4</td>
                        <td class="active" rowspan="2">其他</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;cpu利用率</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a6']}
                        </td>
                        <td rowspan="2">cpu长期利用率大于80%为不正常</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;双机系统</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['a7']}
                        </td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4">{$rs[0]['a8']|nl2br}</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td>　{$rs[0]['a9']}</td>
                        <td class="active">检查日期：</td>
                        <td colspan="2">　{$rs[0]['a10']}</td>
                    </tr>
                    <tr class="active">
                        <th colspan="5">二、数据库系统检查</th>
                    </tr>
                    
                    
                    <tr class="text-c active">
                        <td width="10%">序号</td>
                        <td width="22%">检查项目</td>
                        <td width="22%">检查内容</td>
                        <td width="22%">结果</td>
                        <td>处理方法和建议</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">1</td>
                        <td class="active">查看Oracle进程</td>
                        <td class="active">Oracle是否启动</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['b1']}
                        </td>
                        <td>在进程管理器中查看Oracle进程所占有内存，如大于100M，正常，否则，不正常。</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2</td>
                        <td class="active">Alert日志</td>
                        <td class="active">是否有错误日志</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['b2']}
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">3</td>
                        <td class="active">查看数据库的连接情况</td>
                        <td class="active">与数据库建立的会话数目是不是正常</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['b3']}
                        </td>
                        <td>对一些“挂死”的连接，需要手工进行清理。</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="3">4</td>
                        <td class="active" rowspan="3">检查操作系统进程</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;cpu利用率</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['b4']}
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;内存使用情况</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['b5']}
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">3.&nbsp;&nbsp;&nbsp;其他异常参数</td>
                        <td>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['b6']}
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4">{$rs[0]['b7']|nl2br}</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td>　{$rs[0]['b8']}</td>
                        <td class="active">检查日期：</td>
                        <td colspan="2">　{$rs[0]['b9']}</td>
                    </tr>
                    <tr class="active">
                        <th colspan="5">三、网络系统检查</th>
                    </tr>
                    <tr class="text-c active">
                        <td width="10%">序号</td>
                        <td width="22%">检查项目</td>
                        <td width="22%">检查内容</td>
                        <td width="22%">结果</td>
                        <td>备注</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">1</td>
                        <td class="active">路由器运行状态</td>
                        <td class="active">1.设备状态灯</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['c1']}
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2</td>
                        <td class="active">主机路由</td>
                        <td class="active">1.连接外部主机</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['c2']}
                        </td>
                        <td>对车站是ping铁路局情况；对铁路局是ping铁路总公司情况</td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4">{$rs[0]['c3']|nl2br}</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td>　{$rs[0]['c4']}</td>
                        <td class="active">检查日期：</td>
                        <td colspan="2">　{$rs[0]['c5']}</td>
                    </tr>
                    <tr class="active">
                        <th colspan="5">四、后台应用及传输检查</th>
                    </tr>
                    <tr class="text-c active">
                        <td width="10%">序号</td>
                        <td width="22%">检查项目</td>
                        <td width="22%">检查内容</td>
                        <td width="22%">结果</td>
                        <td>备注</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2" class="text-c">1</td>
                        <td class="active" rowspan="2">车站确报发送程序</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常发送</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d1']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;是否存在重复发送情况</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d2']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" class="text-c">2</td>
                        <td class="active">车站确报接收程序</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常接收</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d3']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2" class="text-c">3</td>
                        <td class="active" rowspan="2">检测数据发送</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常发送</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d4']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;是否有错误日志</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d5']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2" class="text-c">4</td>
                        <td class="active" rowspan="2">检测数据接收</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常接收</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d6']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;是否有错误日志</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$rs[0]['d7']}
                        </td>
                        <td>　</td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4">{$rs[0]['d8']|nl2br}</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td>　{$rs[0]['d9']}</td>
                        <td class="active">检查日期：</td>
                        <td colspan="2">　{$rs[0]['d10']}</td>
                    </tr>
                    <tr class="active">
                        <th colspan="5">五、应用软件故障及建议</th>
                    </tr>
                    <tr>
                        <td colspan="5">{$rs[0]['e1']|nl2br}</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td>　{$rs[0]['e2']}</td>
                        <td class="active">检查日期：</td>
                        <td colspan="2">　{$rs[0]['e3']}</td>
                    </tr>
                    
                </table>
            </div>
        </div>
    </article>
</div>
