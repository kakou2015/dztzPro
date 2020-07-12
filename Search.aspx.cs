using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class Search : System.Web.UI.Page
    {
        public string Title { get; set; }
        public string Action { get; set; }
        public string LedgerNodeId { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var action = Request["action"];
                Action = action;
                if (action != null)
                {
                    if (action == "1")
                    {
                        (LedgerItemsGridView.Columns[7] as CommandField).SelectText = "查看";
                    }
                    else if (action == "2")
                    {
                        (LedgerItemsGridView.Columns[7] as CommandField).SelectText = "修改";
                    }
                }

                var id = Convert.ToInt32(Request["ledgerNodeId"]);
                DztzDataContext dbContext = new DztzDataContext();
                var q = from ln in dbContext.LedgerNodes
                        where ln.Id == id
                        select
                            new { station = ln.Station, type = ln.LedgerNodeType, name = ln.LedgerNodeName };
                Title = q.First().type + "  --  " + q.First().name + " -- 查询";
                Global.CurrentSelectedLedger = id;
            }
            catch (Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }

        }

        protected void LedgerItemsGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (LedgerItemsGridView.SelectedIndex >= 0)
            {
                if (Action == "1")
                {
                    Response.Redirect("itemView.aspx?ledgerNodeId="
                        + Global.CurrentSelectedLedger.ToString()
                        + "&ledgerNodeItemId=" + LedgerItemsGridView.SelectedRow.Cells[0].Text);
                }
                else
                {
                    Response.Redirect("task.aspx?action=2&ledgerNodeId="
                        + Global.CurrentSelectedLedger.ToString()
                        + "&ledgerNodeItemId=" + LedgerItemsGridView.SelectedRow.Cells[0].Text);
                }
            }
        }

        /// 在对数据进行了绑定后激发
        /// 主要实现鼠标点击时选中该行
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LedgerItemsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //#region 方法0 存在bug 暂未改进 供参考
            ////e.Row.Attributes["style"] = "cursor:hand";
            ////PostBackOptions myPostBackOptions = new PostBackOptions(this);
            ////myPostBackOptions.AutoPostBack = false;
            ////myPostBackOptions.PerformValidation = false;
            ////myPostBackOptions.RequiresJavaScriptProtocol = true; //加入javascript:头
            ////String evt = Page.ClientScript.GetPostBackClientHyperlink(sender as GridView, "Select$" + e.Row.RowIndex.ToString());
            ////e.Row.Attributes.Add("onclick", evt);
            //#endregion

            //#region 方法1
            ////if (e.Row.RowType == DataControlRowType.DataRow)
            ////{
            ////    e.Row.Attributes.Add("onClick", "__doPostBack('" + GridView1.UniqueID + "','Select$" + e.Row.RowIndex + "');");//此处为两个“_”
            ////}
            //#endregion

            //#region 方法2
            //int i;
            //for (i = 0; i <= LedgerItemsGridView.Rows.Count; i++)
            //{
            //    //首先判断是否是数据行
            //    if (e.Row.RowType == DataControlRowType.DataRow)
            //    {
            //        //当鼠标停留时更改背景色
            //        e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#0FA0AA'");
            //        //当鼠标移开时还原背景色
            //        e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            //        //单击行的任意列会自动选中此行
            //        e.Row.Attributes.Add("onclick", "__doPostBack('GridView1','Select$" + e.Row.RowIndex + "')");
            //    }
            //}
            //#endregion
        }
    }
}