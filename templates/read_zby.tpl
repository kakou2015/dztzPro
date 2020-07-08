<div class="Hui-admin-article">
  <article class="Hui-admin-content clearfix">
    <div class="panel">
      <div class="panel-body">
        <div class="text-c f-24"></div>
        <table class="table table-border table-bordered table-bg mt-20">
          <style type="text/css">
            {literal}
            input[type=text],textarea{border:1px solid green;}
            body{line-height:30px;}
            #six1 table{border-top:1px solid #000;border-right:1px solid #000;}
            #six1 table th,#six1 table td{height:15px;}
            {/literal}
          </style>
          <tbody>
            <tr>
              <th class="text-c" width="16%">接班人员到岗</th>
              <td width="28%">
                值班员：<span class="qd">
                  <input id="dg1" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('dg1')" class="btn-link"> 证件签到</a>
                </span>
              </td>
              <td width="28%">
                助理值班员（内勤）：<span class="qd">
                  <input id="dg2" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('dg2')" class="btn-link"> 证件签到</a>
                </span>
              </td>
              <td width="28%">
                助理值班员（外勤）：<span class="qd">
                  <input id="dg3" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('dg3')" class="btn-link"> 证件签到</a>
                </span>
              </td>
            </tr>
            <tr>
              <td colspan="4" class="text-r" id="text">
                交接班时间：<input readonly="readonly" type="text" id="rqsj" value=""/>
              </td>
            </tr>
            <tr>
              <th class="text-c">交接项目</th>
              <th colspan="3" class="text-c">交接内容</th>
            </tr>
            <tr>
              <th class="text-c">一、股道占用情况</th>
              <td colspan="3">
                <textarea rows="8" cols="130" id="one1"></textarea>
              </td>
            </tr>
            <tr>
              <th class="text-c">二、区间占用情况</th>
              <td colspan="3">
                <input type="text" id="tow1" size="100" value=""/>
                <br />
                <input type="text" id="tow2" size="100" value=""/>
                <br />
                <input type="text" id="tow3" size="100" value=""/>
                <br />
                <input type="text" id="tow4" size="100" value=""/>
              </td>
            </tr>
            <tr>
              <th class="text-c">三、防溜情况</th>
              <td colspan="3">
                <textarea rows="8" cols="130" id="three1"></textarea>
              </td>
            </tr>
            <tr>
              <th class="text-c">四、装卸防护牌使用情况</th>
              <td colspan="3">
                <textarea rows="8" cols="130" id="four1"></textarea>
              </td>
            </tr>
            <tr>
              <th class="text-c">五、隔离开关</th>
              <td colspan="3">
                <input type="text" id="five2" value=""/>
                道送电位&emsp;&emsp;<input type="text" id="five3" value=""/>
                道断电位&emsp;&emsp;隔离开关钥匙<input type="text" id="five4" value="" size="2"/>
                把&emsp;&emsp;
                <a href="javascript:save5()" class="btn-link"> 保存</a>
              </td>
            </tr>
            <tr>
              <th class="text-c">六、计数器、设备状态、施封锁状态及路票</th>
              <td colspan="3">
                计数器号码：<br />
                <div id="six1" contenteditable="true"></div>
                路票号码：<br />
                <input type="text" size="100" id="six21" value=""/>
                <br />
                <input type="text" size="100" id="six22" value=""/>
                <br />
                <input type="text" size="100" id="six23" value=""/>
                <br />
                <input type="text" size="100" id="six24" value=""/>
                <br />
                设备状态：<br/>
                <textarea rows="8" cols="130" id="six3"></textarea>
                <br />
                施封状态：<br />
                <textarea rows="8" cols="130" id="six4"></textarea>
              </td>
            </tr>
            <tr>
              <th class="text-c">七、单据、行车命令、及注意事项</th>
              <td colspan="3">
                <textarea rows="8" cols="130" id="seven1"></textarea>
              </td>
            </tr>
            <tr>
              <th class="text-c">八、备品及其他注意事项</th>
              <td colspan="3">
                备品<input type="text" id="eight1" value=""/>
                备品柜钥匙<input type="text" id="eight2" value="" size="2"/>
                把，
                手摇把保管箱钥匙<input type="text" id="eight3" value="" size="2"/>
                把，
                列尾主机钥匙<input type="text" id="eight4" value="" size="2"/>
                把<br />
                人力制动机紧固器<input type="text" id="eight5" value="" size="2"/>
                个，
                号码：<input type="text" id="eight6" value="" size="70"/>
                <br />
                列车无线调度通信设备便携台<input type="text" id="eight7" value="" size="2"/>
                台，
                作用状态：<input type="text" id="eight8" value="" size="70"/>
                <br />
                列车无线调度通信设备作用状态：<input type="text" id="eight9" value="" size="70"/>
                <br />
                防溜铁鞋<input type="text" id="eight10" value="" size="2"/>
                只，
                号码：<input type="text" id="eight11" value="" size="70"/>
                <br />
                防溜铁鞋及人力制动机紧固器钥匙<input type="text" id="eight12" value="" size="2"/>
                把，
                语音记录装置作用状态：<input type="text" id="eight13" value="" size="70"/>
                <br />
                灯显设备：<input type="text" id="eight14" value="" size="70"/>
                <br />
                其他：<br />
                <textarea id="eight15" cols="130" rows="8"></textarea><br />
              </td>
            </tr>
            <tr>
              <th class="text-c">交班者</th>
              <td>
                值班员：<span class="qd">
                  <input id="nine1" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('nine1')" class="btn-link"> 证件签到</a>
                </span>
              </td>
              <td>
                助理值班员（内勤）：<span class="qd">
                  <input id="nine2" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('nine2')" class="btn-link"> 证件签到</a>
                </span>
              </td>
              <td>
                助理值班员（外勤）：<span class="qd">
                  <input id="nine3" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('nine3')" class="btn-link"> 证件签到</a>
                </span>
              </td>
            </tr>
            <tr>
              <th class="text-c">接班者</th>
              <td>
                值班员：<span class="qd"/>
                <input id="ten1" title="请输入身份证最后6位" type="text" size="6"/>
                <a href="javascript:zjpost('ten1')" class="btn-link"> 证件签到</a>
              </td>
              <td>
                助理值班员（内勤）：<span class="qd">
                  <input id="ten2" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('ten2')" class="btn-link"> 证件签到</a>
                </span>
              </td>
              <td>
                助理值班员（外勤）：<span class="qd">
                  <input id="ten3" title="请输入身份证最后6位" type="text" size="6"/>
                  <a href="javascript:zjpost('ten3')" class="btn-link"> 证件签到</a>
                </span>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </article>
  <script src="/datatime/laydate.js"></script>
  <script src="lay_rq.js"></script>
  <script src="01.js"></script>
</div>
