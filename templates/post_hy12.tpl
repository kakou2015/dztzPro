
<div class="Hui-admin-article">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <p class="text-c f-24">{$rs[0]['station']}{$title}</p>
                <form action="task.php?action=save_hy12" method="post" class="form">
                <table class="table table-border table-bordered table-bg mt-20">
                    <thead>
                    <tr class="text-c">
                        <th width="44%" colspan="4">
                            <div class="radio-box">
                                <input type="radio" id="radio-1" name="a1" value="白班" {if $rs[0]['a1'] eq '白班'} checked{/if}>
                                <label for="radio-1">白班</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-2" name="a1" value="夜班" {if $rs[0]['a1'] eq '夜班'} checked{/if}>
                                <label for="radio-2">夜班</label>
                            </div>
                            </th>
                        <th colspan="5" class="text-r"><input type="text" class="input-text" id="rq" name="rq" placeholder="请选择日期" readonly="readonly" value="{date('Y-n-j',$rs[0]['rq']|default:time())}"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="text-c">
                        <td colspan="2">交班</td>
                        <td colspan="2">第&nbsp;&nbsp;&nbsp;<input type="text" class="input1" name="a2" value="{$rs[0]['a2']}">&nbsp;&nbsp;&nbsp;班
                        </td>
                        <td width="11%">司机姓名</td>
                        <td colspan="4">{$rs[0]['a3']}
                            <button class="btn btn-primary radius" type="button" onclick="fq('ledger_pro_hy12','a3');">指纹签认</button>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td colspan="2">接班</td>
                        <td colspan="2">第&nbsp;&nbsp;&nbsp;<input type="text" class="input1" name="a4" value="{$rs[0]['a4']}">&nbsp;&nbsp;&nbsp;班
                        </td>{$rs[0]['a5']}
                        <td width="138">司机姓名</td>
                        <td colspan="4">
                            <button class="btn btn-primary radius" type="button" onclick="fq('ledger_pro_hy12','a5');">指纹签认</button>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td colspan="2">运转小时</td>
                        <td colspan="2">检修时间</td>
                        <td width="11%">完成吨数</td>
                        <td colspan="2" width="18%">耗电</td>
                        <td colspan="2">耗油</td>
                    </tr>
                    <tr class="text-c">
                        <td colspan="2"><input type="text" class="input-text" name="a6" value="{$rs[0]['a6']}"></td>
                        <td colspan="2"><input type="text" class="input-text" name="a7" value="{$rs[0]['a7']}"></td>
                        <td><input type="text" class="input-text" name="a8" value="{$rs[0]['a8']}"></td>
                        <td colspan="2"><input type="text" class="input-text" name="a9" value="{$rs[0]['a9']}"></td>
                        <td colspan="2"><input type="text" class="input-text" name="a10" value="{$rs[0]['a10']}"></td>
                    </tr>
                    <tr class="text-c">
                        <td rowspan="4">检查保养项目</td>
                        <td>清洁卫生</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-111" name="a11" value="√" {if $rs[0]['a11'] eq '√'} checked{/if}>
                                <label for="radio-111">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-011" name="a11" value="×" {if $rs[0]['a11'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>金属结构</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-112" name="a12" value="√" {if $rs[0]['a12'] eq '√'} checked{/if}>
                                <label for="radio-112">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-012" name="a12" value="×" {if $rs[0]['a12'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td width="11%">音响照明</td>
                        <td>
                            <div class="radio-box">
                                <input type="radio" id="radio-113" name="a13" value="√" {if $rs[0]['a13'] eq '√'} checked{/if}>
                                <label for="radio-113">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-013" name="a13" value="×" {if $rs[0]['a13'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td>各部紧固件</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-114" name="a14" value="√" {if $rs[0]['a14'] eq '√'} checked{/if}>
                                <label for="radio-114">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-014" name="a14" value="×" {if $rs[0]['a14'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>电气线路</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-115" name="a15" value="√" {if $rs[0]['a15'] eq '√'} checked{/if}>
                                <label for="radio-115">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-015" name="a15" value="×" {if $rs[0]['a15'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>仪器仪表</td>
                        <td>
                            <div class="radio-box">
                                <input type="radio" id="radio-116" name="a16" value="√" {if $rs[0]['a16'] eq '√'} checked{/if}>
                                <label for="radio-116">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-016" name="a16" value="×" {if $rs[0]['a16'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td>各部润滑</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-117" name="a17" value="√" {if $rs[0]['a17'] eq '√'} checked{/if}>
                                <label for="radio-117">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-017" name="a17" value="×" {if $rs[0]['a17'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>安全装置</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-118" name="a18" value="√" {if $rs[0]['a18'] eq '√'} checked{/if}>
                                <label for="radio-118">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-018" name="a18" value="×" {if $rs[0]['a18'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>油水气电</td>
                        <td>
                            <div class="radio-box">
                                <input type="radio" id="radio-119" name="a19" value="√" {if $rs[0]['a19'] eq '√'} checked{/if}>
                                <label for="radio-119">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-019" name="a19" value="×" {if $rs[0]['a19'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td>空机运转</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-120" name="a20" value="√" {if $rs[0]['a20'] eq '√'} checked{/if}>
                                <label for="radio-120">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-020" name="a20" value="×" {if $rs[0]['a20'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>钢丝绳</td>
                        <td colspan="2">
                            <div class="radio-box">
                                <input type="radio" id="radio-121" name="a21" value="√" {if $rs[0]['a21'] eq '√'} checked{/if}>
                                <label for="radio-121">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-021" name="a21" value="×" {if $rs[0]['a21'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                        <td>附属设备、工具、备品</td>
                        <td>
                            <div class="radio-box">
                                <input type="radio" id="radio-222" name="a22" value="√" {if $rs[0]['a22'] eq '√'} checked{/if}>
                                <label for="radio-222">√</label>
                            </div>
                            <div class="radio-box">
                                <input type="radio" id="radio-022" name="a22" value="×" {if $rs[0]['a22'] eq '×'} checked{/if}>
                                <label for="radio-1">×</label>
                            </div>
                        </td>
                    </tr>
                    <tr class="text-c">
                        <td>故障处理</td>
                        <td colspan="8"><textarea cols="" rows="" class="textarea" name="a23">{$rs[0]['a23']|strip_tags}</textarea></td>
                    </tr>
                    <tr class="text-c">
                        <td>接班司机意见</td>
                        <td colspan="8"><textarea cols="" rows="" class="textarea" name="a24">{$rs[0]['a24']|strip_tags}</textarea></td>
                    </tr>
                    <tr>
                        <td colspan="9">注：交接班司机按检查和保养内容进行检查和验收，无问题在项目栏后打&ldquo;√&rdquo;，否则打&ldquo;×&rdquo;，并在故障处理中填写故障处理过程和结果。</td>
                    </tr>
                    </tbody>
                </table>
                    <p class="text-c mt-40">
                        <button type="submit" class="btn btn-success"><i class="Hui-iconfont">&#xe632;</i> 保存提交</button>
                        <input type="hidden" name="uid" id="uid" value="{$rs[0]['id']}">
                    </p>
                </form>
                <p class="mt-20">
                    <a href="task.php?action=end_hy12&uid={$rs[0]['id']}" class="btn btn-danger radius">结束填写</a>
                </p>
            </div>
        </div>
    </article>
    {include file="zk.tpl"}
</div>
<script src="/datatime/laydate.js"></script>
<script type="text/javascript" src="./finger.js"></script>
<script src="lay_rq.js"></script>
