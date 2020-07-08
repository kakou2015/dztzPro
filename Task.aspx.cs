using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class Task : System.Web.UI.Page
    {
        public string LedgerItemId { get; set; }
        public string LedgerNodeId { get; set; }
        public string Content { get; set; }

        public string JsonContent { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            JsonContent = "";
            DztzDataContext context = new DztzDataContext();
            var action = Request["action"];
            if(action!=null)
            {
                LedgerItemId = "0";
                if (action == "1")
                {
                    //display template to let user to fill data,
                    // Use ajax to save data.
                }
                else
                {
                    // display template to display the data.
                    //只能修改未完成的账簿，同时只能存在一张未完成的账簿
                    var nodeItem = context.LedgerNodeItems.SingleOrDefault<LedgerNodeItem>(ln => ln.Status == 0);
                    if (nodeItem != null)
                    {
                        LedgerItemId = nodeItem.Id.ToString();
                        JsonContent = HttpUtility.UrlEncode(nodeItem.TemplateValue,Encoding.UTF8);
                    }

                    //前端用 $('#jsonContent').value() 可以获取jsonContent 的string，然后参照ItemDetail.aspx,把数据赋值给table。
                }

            }

            var id = Convert.ToInt32(Request["ledgerNodeId"]);

            var node= context.LedgerNodes.First(ln => ln.Id == id);
            if (node != null)
            {
                LedgerNodeId = id.ToString();
                Content = node.TemplateContent;
            }
        }
    }
}