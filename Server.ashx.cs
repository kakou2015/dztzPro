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
            if (!string.IsNullOrEmpty(context.Request["uid"]))
            {
                try
                {
                    int id = Convert.ToInt32(context.Request["uid"]);
                    
                    if (id > 0)
                    {
                        DztzDataContext dztz = new DztzDataContext();
                        var ledgerNodeItem = dztz.LedgerNodeItems.Single<LedgerNodeItem>(s => s.Id == id);
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

                            string data = HttpUtility.UrlDecode(context.Request["content"].ToString(), Encoding.UTF8);
                            ledgerNodeItem.ModifyTime = DateTime.Now.ToString();
                            ledgerNodeItem.ModifyUser = "";//current login user
                            ledgerNodeItem.TemplateValue = data;
                            dztz.SubmitChanges();
                        }
                        else // insert new row
                        {
                            ledgerNodeItem = dztz.LedgerNodeItems.SingleOrDefault<LedgerNodeItem>(s => s.Id == id);
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

                            string data = HttpUtility.UrlDecode(context.Request["content"].ToString(), Encoding.UTF8);
                            ledgerNodeItem.LedgerNodeId = 1;//current ledgernode id
                            ledgerNodeItem.CreateUser = "";//current login user
                            ledgerNodeItem.ModifyTime = DateTime.Now.ToString();
                            ledgerNodeItem.ModifyTime = DateTime.Now.ToString();
                            ledgerNodeItem.ModifyUser = "";//current login user
                            ledgerNodeItem.TemplateValue = data;
                            dztz.LedgerNodeItems.InsertOnSubmit(ledgerNodeItem);
                            dztz.SubmitChanges();
                        }
                    }
                    else
                    {
                        context.Response.Write("id must be bigger than 0.");
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