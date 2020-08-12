using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DztzDataContext dbContext = new DztzDataContext();
                var userId = Convert.ToInt64(Request["userId"]);
                var node = dbContext.Users.SingleOrDefault(ln => ln.UserId == userId);
                if (node != null)
                {
                    if (!Page.IsPostBack)
                    {
                        this.tbDepartment.Text = node.Department.ToString();
                        this.tbLoginName.Text = node.LoginName;
                        this.tbUserName.Text = node.UserName;
                        this.tbMobilePhone.Text = node.MobilePhone;
                        this.tbEmail.Text = node.Email;
                        this.tbAccessRight.Text = node.AccessRight.ToString();
                        this.tbDescription.Text = node.Description;
                    }

                    this.SaveBttn.Text = "更新";
                }
                else
                {
                    this.SaveBttn.Text = "新建";
                }

            }
            catch (Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagement.aspx");
        }

        protected void UserGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (UserGridView.SelectedIndex >= 0)
            {
                Response.Redirect("UserManagement.aspx?userId=" + UserGridView.SelectedRow.Cells[0].Text);
            }
        }
    }
}