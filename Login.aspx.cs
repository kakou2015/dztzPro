using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void LoginBttn_Click(object sender, EventArgs e)
		{
			if (txtName.Text == "admin" && txtPassword.Text == "111111")
			{
				Session["user"] = txtName;
                Global.CurrentUser = txtName.Text; 
				Response.Redirect("Index.aspx");
			}
		}
	}
}