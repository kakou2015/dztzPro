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
            DztzDataContext dbContext = new DztzDataContext();
            var node = dbContext.Users.SingleOrDefault(ln => ln.LoginName == txtName.Text);
            if (node != null && node.UserPassword == txtPassword.Text)
			{
                Global.CurrentUser = node;
                node.LoginCount += 1;
                node.LastLoginTime = node.LoginTime;
                node.LoginTime = DateTime.Now;
                dbContext.SubmitChanges();
				Response.Redirect("Index.aspx");
			}
            else
            {
                Response.Redirect("Login.aspx");
            }
		}
	}
}