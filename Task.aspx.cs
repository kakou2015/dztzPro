using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class Task : System.Web.UI.Page
    {
        public string Content { get; set; }

        public string JsonContent { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            JsonContent = "";
            DztzDataContext context = new DztzDataContext();
            var action = Request["action"];
            if(action!=null)
            {
                if (action == "1")
                {
                    //display template to let user to fill data,
                    // Use ajax to save data.
                }
                else
                {
                    // display template to display the data.
                    //@Frank ,refine common.js

                    var nodeItemId = Convert.ToInt32(Request["itemId"]);

                    var nodeItem = context.LedgerNodeItems.First(ln => ln.Id == nodeItemId);
                    JsonContent = nodeItem.TemplateValue;

                    //前端用 $('#jsonContent').value() 可以获取jsonContent 的string，然后参照ItemDetail.aspx,把数据赋值给table。
                }
            }

            var id = Convert.ToInt32(Request["ledgerNodeId"]);

            

            var node= context.ledgerNodes.First(ln => ln.Id == id);
            Content = node.TemplateContent;
        }
    }
}