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
        protected void Page_Load(object sender, EventArgs e)
        {
            var action = Request["action"];
            if (action != null)
            {
                if (action == "1")
                {
                    //display template to let user to fill data,
                    // Use ajax to save data.
                    Session["user"] = null; 
                    Global.CurrentUser = "";
                }
            }

            Global.CurrentSelectedLedger = 0;
        }
    }
}