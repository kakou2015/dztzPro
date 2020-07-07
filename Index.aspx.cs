using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class Index : System.Web.UI.Page
    {
        public string JsonContent { get; set; }
        public string Content { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            int templateId = 1;
            try
            {
                var action = Request["action"];
                if (action != null)
                {
                    templateId = Convert.ToInt32(action);
                }

                //DztzDataContext dztz = new DztzDataContext();
                //var legerNode = dztz.ledgerNodes.SingleOrDefault<ledgerNode>(s => s.Id == templateId);
                //Content = legerNode.TemplateContent;
                var templateFile = Server.MapPath("~/templates/" + templateId + ".tpl");
                if (File.Exists(templateFile))
                {
                    Content = File.ReadAllText(templateFile);
                }
            }
            catch(Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }
        }
    }
}