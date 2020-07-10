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
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Convert.ToInt32(Request["ledgerNodeId"]);
            DztzDataContext dbContext = new DztzDataContext();
            var q = from ln in dbContext.LedgerNodes
                    where ln.Id == id
                    select
                        new { station = ln.Station, type = ln.LedgerNodeType, name = ln.LedgerNodeName };
            Title = q.First().type + "  --  " + q.First().name + " -- 记录";
            Global.CurrentSelectedLedger = id;
        }
    }
}