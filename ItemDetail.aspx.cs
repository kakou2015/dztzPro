using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro.Views
{
    public partial class ItemDetail : System.Web.UI.Page
    {
        public string TemplateContent { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //TemplateContent = "{ 't1':'1','t2':'2','t3':'3'}";

            // @Frank, Read data from DB.
            //TemplateContent=
        }
    }
}