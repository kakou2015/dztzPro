
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24"><font size="4">{$title}</font></p>
                <table class="table table-border table-bordered table-bg mt-20">
                    <thead>
                    <tr class="text-c">
                        <th>序号</th>
                        <th width="9.3%">使用编号</th>
                        <th width="9.3%">打码编号</th>
                        <th width="9.3%">购置日期</th>
                        <th width="9.3%">发放日期</th>
                        <th width="9.3%">使用地点</th>
                        <th width="9.3%">保管存放地点</th>
                        <th width="9.3%">保管责任人</th>
                        <th width="9.3%">技术状态（在用、备用、修理、报废）</th>
                        <th width="9.3%">变动情况</th>
                        <th width="9.3%">备注</th>
                    </tr>
                    </thead>
                    <tbody>
					{foreach $rs1 as $rs}
						<tr class="text-c">
							{for $i=1 to 11}<td>{$rs["a$i"]}</td>{/for}
						</tr>
					{/foreach}
                    <tr>
                        <td colspan="11"><ol>
                                <li>说明：保管责任人为装卸企业的，须在其与车站签订的安全协议中注明。</li>
                                <li>规格：A4纸（横）</li>
                            </ol></td>
                    </tr>
					<tr><th colspan="11">{$page_disp}</th> </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </article>
</div>
