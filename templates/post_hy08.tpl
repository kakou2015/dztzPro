
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy08" method="post">
                <table class="table table-border table-bordered table-bg mt-40">
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
                        <td rowspan="2" class="text-c active">1</td>
                        <td rowspan="2" class="active">系统硬件</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;设备故障灯</td>
                        <td>1.<div class="radio-box">
                                <input type="radio" id="w1" name="a1" value="不亮" {if $rs[0]['a1'] eq '不亮'} checked{/if}>
                                <label for="w1">不亮</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="y1" name="a1" value="亮" {if $rs[0]['a1'] eq '亮'} checked{/if}>
                                <label for="y1">亮</label>
                            </div>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;其他异常</td>
                        <td>2.&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="w2" name="a2" value="无" {if $rs[0]['a2'] eq '无'} checked{/if}>
                                <label for="w2">无</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="y2" name="a2" value="有" {if $rs[0]['a2'] eq '有'} checked{/if}>
                                <label for="y2">有</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td rowspan="2" class="text-c active">2</td>
                        <td rowspan="2" class="active">系统错误报告</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;硬件故障</td>
                        <td>1.&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="w3" name="a3" value="无" {if $rs[0]['a3'] eq '无'} checked{/if}>
                                <label for="w3">无</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="y3" name="a3" value="有" {if $rs[0]['a3'] eq '有'} checked{/if}>
                                <label for="y3">有</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;软件故障</td>
                        <td>2.&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="w4" name="a4" value="无" {if $rs[0]['a4'] eq '无'} checked{/if}>
                                <label for="w4">无</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="y4" name="a4" value="有" {if $rs[0]['a4'] eq '有'} checked{/if}>
                                <label for="y4">有</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="text-c active">3</td>
                        <td class="active">磁盘空间</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;D盘、E盘的剩余磁盘空间</td>
                        <td>1.&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="w5" name="a5" value="正常" {if $rs[0]['a5'] eq '正常'} checked{/if}>
                                <label for="w5">正常</label>　
                                <input type="radio" id="y5" name="a5" value="不正常" {if $rs[0]['a5'] eq '不正常'} checked{/if}>
                                <label for="y5">不正常</label>
                            </div>
                        </td>
                        <td>大于80%为不正常</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2">4</td>
                        <td class="active" rowspan="2">其他</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;cpu利用率</td>
                        <td>1.&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="w6" name="a6" value="正常" {if $rs[0]['a6'] eq '正常'} checked{/if}>
                                <label for="w6">正常</label>　
                                <input type="radio" id="y6" name="a6" value="不正常" {if $rs[0]['a6'] eq '不正常'} checked{/if}>
                                <label for="y6">不正常</label>
                            </div>
                        </td>
                        <td rowspan="2">cpu长期利用率大于80%为不正常</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;双机系统</td>
                        <td>2.&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="w7" name="a7" value="正常" {if $rs[0]['a7'] eq '正常'} checked{/if}>
                                <label for="w7">正常</label>　
                                <input type="radio" id="y7" name="a7" value="不正常" {if $rs[0]['a7'] eq '不正常'} checked{/if}>
                                <label for="y7">不正常</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4"><textarea cols="" rows="" class="textarea" name="a8">{$rs[0]['a8']|strip_tags}</textarea> </td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td><input type="text" class="input-text" name="a9" value="{$rs[0]['a9']}"></td>
                        <td class="active">检查日期：</td>
                        <td colspan="2"><input type="text" class="input-text" name="a10" value="{$rs[0]['a10']}"></td>
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
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wb1" name="b1" value="正常" {if $rs[0]['b1'] eq '正常'} checked{/if}>
                                <label for="wb1">正常</label>　
                                <input type="radio" id="yb1" name="b1" value="不正常" {if $rs[0]['b1'] eq '不正常'} checked{/if}>
                                <label for="yb1">不正常</label>
                            </div>
                        </td>
                        <td>在进程管理器中查看Oracle进程所占有内存，如大于100M，正常，否则，不正常。</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2</td>
                        <td class="active">Alert日志</td>
                        <td class="active">是否有错误日志</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wb2" name="b2" value="正常" {if $rs[0]['b2'] eq '正常'} checked{/if}>
                                <label for="wb2">正常</label>　
                                <input type="radio" id="yb2" name="b2" value="不正常" {if $rs[0]['b2'] eq '不正常'} checked{/if}>
                                <label for="yb2">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">3</td>
                        <td class="active">查看数据库的连接情况</td>
                        <td class="active">与数据库建立的会话数目是不是正常</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wb3" name="b3" value="正常" {if $rs[0]['b3'] eq '正常'} checked{/if}>
                                <label for="wb3">正常</label>　
                                <input type="radio" id="yb3" name="b3" value="不正常" {if $rs[0]['b3'] eq '不正常'} checked{/if}>
                                <label for="yb3">不正常</label>
                            </div>
                        </td>
                        <td>对一些“挂死”的连接，需要手工进行清理。</td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="3">4</td>
                        <td class="active" rowspan="3">检查操作系统进程</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;cpu利用率</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wb4" name="b4" value="正常" {if $rs[0]['b4'] eq '正常'} checked{/if}>
                                <label for="wb4">正常</label>　
                                <input type="radio" id="yb4" name="b4" value="不正常" {if $rs[0]['b4'] eq '不正常'} checked{/if}>
                                <label for="yb4">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;内存使用情况</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wb5" name="b5" value="正常" {if $rs[0]['b5'] eq '正常'} checked{/if}>
                                <label for="wb5">正常</label>　
                                <input type="radio" id="yb5" name="b5" value="不正常" {if $rs[0]['b5'] eq '不正常'} checked{/if}>
                                <label for="yb5">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">3.&nbsp;&nbsp;&nbsp;其他异常参数</td>
                        <td>3.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wb6" name="b6" value="正常" {if $rs[0]['b6'] eq '正常'} checked{/if}>
                                <label for="wb6">正常</label>　
                                <input type="radio" id="yb6" name="b6" value="不正常" {if $rs[0]['b6'] eq '不正常'} checked{/if}>
                                <label for="yb6">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4"><textarea cols="" rows="" class="textarea" name="b7">{$rs[0]['b7']|strip_tags}</textarea></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td><input type="text" class="input-text" value="{$rs[0]['b8']}" name="b8"></td>
                        <td class="active">检查日期：</td>
                        <td colspan="2"><input type="text" class="input-text" value="{$rs[0]['b9']}" name="b9"></td>
                    </tr>
                    <tr>
                        <th colspan="5" class="active">三、网络系统检查</th>
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
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wc1" name="c1" value="正常" {if $rs[0]['c1'] eq '正常'} checked{/if}>
                                <label for="wc1">正常</label>　
                                <input type="radio" id="yc1" name="c1" value="不正常" {if $rs[0]['c1'] eq '不正常'} checked{/if}>
                                <label for="yc1">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2</td>
                        <td class="active">主机路由</td>
                        <td class="active">1.连接外部主机</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wc2" name="c2" value="正常" {if $rs[0]['c2'] eq '正常'} checked{/if}>
                                <label for="wc2">正常</label>　
                                <input type="radio" id="yc2" name="c2" value="不正常" {if $rs[0]['c2'] eq '不正常'} checked{/if}>
                                <label for="yc2">不正常</label>
                            </div>
                        </td>
                        <td>对车站是ping铁路局情况；对铁路局是ping铁路总公司情况</td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4"><textarea cols="" rows="" class="textarea" name="c3">{$rs[0]['c3']|strip_tags}</textarea> </td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td><input type="text" class="input-text" value="{$rs[0]['c4']}" name="c4"></td>
                        <td class="active">检查日期：</td>
                        <td colspan="2"><input type="text" class="input-text" value="{$rs[0]['c5']}" name="c5"></td>
                    </tr>
                    <tr>
                        <th class="active" colspan="5">四、后台应用及传输检查</th>
                    </tr>
                    <tr class="text-c active">
                        <td width="10%">序号</td>
                        <td width="22%">检查项目</td>
                        <td width="22%">检查内容</td>
                        <td width="22%">结果</td>
                        <td>备注</td>
                    </tr>
                    <tr class="text-c">
                        <td rowspan="2" class="text-c active">1</td>
                        <td class="active" rowspan="2">车站确报发送程序</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常发送</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd1" name="d1" value="正常" {if $rs[0]['d1'] eq '正常'} checked{/if}>
                                <label for="wd1">正常</label>　
                                <input type="radio" id="yd1" name="d1" value="不正常" {if $rs[0]['d1'] eq '不正常'} checked{/if}>
                                <label for="yd1">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;是否存在重复发送情况</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd2" name="d2" value="正常" {if $rs[0]['d2'] eq '正常'} checked{/if}>
                                <label for="wd2">正常</label>　
                                <input type="radio" id="yd2" name="d2" value="不正常" {if $rs[0]['d2'] eq '不正常'} checked{/if}>
                                <label for="yd2">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2</td>
                        <td class="active">车站确报接收程序</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常接收</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd3" name="d3" value="正常" {if $rs[0]['d3'] eq '正常'} checked{/if}>
                                <label for="wd3">正常</label>　
                                <input type="radio" id="yd3" name="d3" value="不正常" {if $rs[0]['d3'] eq '不正常'} checked{/if}>
                                <label for="yd3">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2">3</td>
                        <td class="active" rowspan="2">检测数据发送</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常发送</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd4" name="d4" value="正常" {if $rs[0]['d4'] eq '正常'} checked{/if}>
                                <label for="wd4">正常</label>　
                                <input type="radio" id="yd4" name="d4" value="不正常" {if $rs[0]['d4'] eq '不正常'} checked{/if}>
                                <label for="yd4">不正常</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;是否有错误日志</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd5" name="d5" value="无" {if $rs[0]['d5'] eq '无'} checked{/if}>
                                <label for="wd5">无</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="yd5" name="d5" value="有" {if $rs[0]['d5'] eq '有'} checked{/if}>
                                <label for="yd5">有</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active" rowspan="2">4</td>
                        <td class="active" rowspan="2">检测数据接收</td>
                        <td class="active">1.&nbsp;&nbsp;&nbsp;是否正常接收</td>
                        <td>1.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd6" name="d6" value="正常" {if $rs[0]['d6'] eq '正常'} checked{/if}>
                                <label for="wd6">正常</label>　
                                <input type="radio" id="yd6" name="d6" value="不正常" {if $rs[0]['d6'] eq '不正常'} checked{/if}>
                                <label for="yd6">不正常</label>
                            </div>

                        </td>
                        <td></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">2.&nbsp;&nbsp;&nbsp;是否有错误日志</td>
                        <td>2.&nbsp;&nbsp;&nbsp;&nbsp;<div class="radio-box">
                                <input type="radio" id="wd7" name="d7" value="无" {if $rs[0]['d7'] eq '无'} checked{/if}>
                                <label for="wd7">无</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="yd7" name="d7" value="有" {if $rs[0]['d7'] eq '有'} checked{/if}>
                                <label for="yd7">有</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-c active">其他问题与建议</td>
                        <td colspan="4"><textarea class="textarea" cols="" rows="" name="d8">{$rs[0]['d8']|strip_tags}</textarea></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td><input type="text" class="input-text" value="{$rs[0]['d9']}" name="d9"></td>
                        <td class="active">检查日期：</td>
                        <td colspan="2"><input type="text" class="input-text" value="{$rs[0]['d10']}" name="d10"></td>
                    </tr>
                    <tr class="active">
                        <th colspan="5">五、应用软件故障及建议</th>
                    </tr>
                    <tr>
                        <td colspan="5"><textarea cols="" rows="" class="textarea" name="e1">{$rs[0]['e1']|strip_tags}</textarea></td>
                    </tr>
                    <tr class="text-c">
                        <td class="active">检查人员签字：</td>
                        <td><input type="text" class="input-text" value="{$rs[0]['e2']}" name="e2"></td>
                        <td class="active">检查日期：</td>
                        <td colspan="2"><input type="text" class="input-text" value="{$rs[0]['e3']}" name="e3"></td>
                    </tr>
                </table>
                <p class="text-c mt-40">
                    <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                    <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                </p>
                </form>
                <p class="mt-20">
                    <a href="task.php?action=end_hy08&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
                </p>
            </div>
        </div>
    </article>
</div>
