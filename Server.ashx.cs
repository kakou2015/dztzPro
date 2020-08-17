using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace dztzPro
{
    /// <summary>
    /// Summary description for Server
    /// </summary>
    public class Server : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            // Use ajax to get/post/update/delete data.
            //https://api.jquery.com/jQuery.ajax/
            //$.ajax('Server.ashx',)
            if (!string.IsNullOrEmpty(context.Request["ledgerItemId"]))
            {
                try
                {
                    int id = Convert.ToInt32(context.Request["ledgerItemId"]);

                    DztzDataContext dztz = new DztzDataContext();
                    if (id > 0)
                    {
                        var ledgerNodeItem = dztz.LedgerNodeItems.SingleOrDefault<LedgerNodeItem>(s => s.Id == id);
                        if (ledgerNodeItem != null) // update row
                        {
                            if (context.Request["name"] == "save")
                            {
                                ledgerNodeItem.Status = 0;
                                context.Response.Write("save ok");
                            }
                            else if (context.Request["name"] == "finish")
                            {
                                ledgerNodeItem.Status = 1;
                                context.Response.Write("finish ok");
                            }

                            string data = context.Request["content"];
                            ledgerNodeItem.ModifyTime = DateTime.Now.ToString();
                            ledgerNodeItem.ModifyUser = Global.CurrentUser.UserName;//current login user
                            ledgerNodeItem.TemplateValue = data;
                            dztz.SubmitChanges();
                        }
                        else
                        {
                            context.Response.Write("找不到需要更新的账簿。");
                        }
                    }
                    else // insert new row
                    {
                        var ledgerNodeItem = new LedgerNodeItem();
                        if (context.Request["name"] == "save")
                        {
                            ledgerNodeItem.Status = 0;
                            context.Response.Write("save ok");
                        }
                        else if (context.Request["name"] == "finish")
                        {
                            ledgerNodeItem.Status = 1;
                            context.Response.Write("finish ok");
                        }

                        string data = context.Request["content"];
                        ledgerNodeItem.LedgerNodeId = Convert.ToInt32(context.Request["ledgerNodeId"]);//current ledgernode id                        
                        ledgerNodeItem.LedgerNodeName = dztz.LedgerNodes.SingleOrDefault<LedgerNode>(s => s.Id == ledgerNodeItem.LedgerNodeId).LedgerNodeName;
                        ledgerNodeItem.CreateUser = Global.CurrentUser.UserName;//current login user
                        ledgerNodeItem.CreateTime = DateTime.Now.ToString();
                        ledgerNodeItem.ModifyTime = DateTime.Now.ToString();
                        ledgerNodeItem.ModifyUser = Global.CurrentUser.UserName;//current login user
                        ledgerNodeItem.TemplateValue = data;
                        dztz.LedgerNodeItems.InsertOnSubmit(ledgerNodeItem);
                        dztz.SubmitChanges();
                        if (ledgerNodeItem.Status == 0)
                        {
                            context.Response.Redirect("task.aspx?action=2&ledgerNodeId=" + ledgerNodeItem.LedgerNodeId.ToString());
                        }
                    }
                }
                catch(Exception e)
                {
                    context.Response.Write(e.ToString());
                }
            }
            else
            {
                context.Response.Write("not processed");
            }

            context.Response.ContentType = "text/plain";
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}