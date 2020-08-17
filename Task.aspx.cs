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
        public string AccessRight { get; set; }
        public string LedgerItemId { get; set; }
        public string LedgerNodeId { get; set; }
        public string Content { get; set; }

        public string JsonContent { get; set; }
        public string Title { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Global.CurrentUser != null)
                {
                    AccessRight = Global.CurrentUser.AccessRight.ToString();
                }

                JsonContent = "";
                DztzDataContext dbContext = new DztzDataContext();
                var id = Convert.ToInt32(Request["ledgerNodeId"]);
                var itemId = Convert.ToInt32(Request["ledgerNodeItemId"]);
                var node = dbContext.LedgerNodes.First(ln => ln.Id == id);
                if (node != null)
                {
                    LedgerNodeId = id.ToString();
                    Content = node.TemplateContent;
                    Global.CurrentSelectedLedger = id;
                }
                var action = Request["action"];
                if (action != null)
                {
                    LedgerItemId = "0";
                    if (action == "1")
                    {
                        //display template to let user to fill data,
                        // Use ajax to save data.
                        Title = node.LedgerNodeType + "  --  " + node.LedgerNodeName + "  --  新建";
                    }
                    else if(action == "2")
                    {
                        // display template to display the data.
                        if(itemId == 0)
                        {
                            Response.Redirect("search.aspx?action=2&ledgerNodeId=" + id.ToString());
                        }
                        else
                        {
                            var nodeItem = dbContext.LedgerNodeItems.FirstOrDefault<LedgerNodeItem>(ln => ln.LedgerNodeId == id && ln.Id == itemId);
                            if (nodeItem != null)
                            {
                                LedgerItemId = nodeItem.Id.ToString();
                                JsonContent = HttpUtility.UrlEncode(nodeItem.TemplateValue, Encoding.UTF8);
                            }
                            else
                            {
                                Response.Redirect("task.aspx?action=1&ledgerNodeId=" + id.ToString());
                            }

                            Title = node.LedgerNodeType + "  --  " + node.LedgerNodeName + "  --  修改";
                        }

                    }
                }

            }
            catch(Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }
        }
    }
}