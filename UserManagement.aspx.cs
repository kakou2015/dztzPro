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
        public long SelectedUserId = 0;
        public long AccessRight = 0;
        public string AccessRightContent = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Global.CurrentUser != null)
                {
                    SqlDataSource1.SelectParameters["CurrentLoginUser"].DefaultValue = Global.CurrentUser.UserId.ToString();
                }

                DztzDataContext dbContext = new DztzDataContext();
                SelectedUserId = Convert.ToInt64(Request["userId"]);
                var node = dbContext.Users.SingleOrDefault(ln => ln.UserId == SelectedUserId);
                if (node != null)
                {
                    if (!Page.IsPostBack)
                    {
                        AccessRight = node.AccessRight;
                        this.tbLoginName.Text = node.LoginName;
                        this.tbPassword.Attributes["value"] = node.UserPassword;
                        this.tbRePasswird.Attributes["value"] = node.UserPassword;
                        this.tbUserName.Text = node.UserName;
                        this.tbMobilePhone.Text = node.MobilePhone;
                        this.tbEmail.Text = node.Email;
                        this.tbDepartment.Text = node.Department;
                        this.tbOccupation.Text = node.Occupation;
                        this.tbSuperior.Text = node.Superior.ToString();
                        this.AccessRightContent = "<td>" + AccessLevel.GetUIString(node.AccessRight) + "</td>";
                        this.tbDescription.Text = node.Description;
                    }

                    this.SaveBttn.Text = "更新";
                }
                else
                {
                    AccessRight = Global.CurrentUser.AccessRight;
                    this.AccessRightContent = "<td>" + AccessLevel.GetUIString(Global.CurrentUser.AccessRight) + "</td>";
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
            try
            {
                if(this.tbPassword.Text != this.tbRePasswird.Text)
                {
                    Response.Write("2次输入的密码不一致");
                    return;
                }

                var loginName = this.tbLoginName.Text;
                DztzDataContext dbContext = new DztzDataContext();
                string time = DateTime.Now.ToString();
                if (SaveBttn.Text == "新建")//新建
                {
                    var node = dbContext.Users.SingleOrDefault(u => u.UserId == this.SelectedUserId);
                    if (node != null)
                    {
                        Response.Write("用户已存在，不能新建");
                        return;
                    }
                    else
                    {
                        dbContext.Users.InsertOnSubmit(new User()
                        {
                            LoginName = this.tbLoginName.Text,
                            UserPassword = this.tbPassword.Text,
                            UserName = this.tbUserName.Text,
                            MobilePhone = this.tbMobilePhone.Text,
                            Email = this.tbEmail.Text,
                            Department = this.tbDepartment.Text,
                            Occupation = this.tbOccupation.Text,
                            Description = this.tbDescription.Text,
                            AccessRight = Convert.ToInt64(Request.Form["accessRight"].ToString()),
                            Superior = Convert.ToInt64(this.tbSuperior.Text),
                            CreateTime = DateTime.Now,
                            LoginCount = 0
                        });
                    }
                }
                else//更新
                {
                    var node = dbContext.Users.SingleOrDefault(u => u.UserId == this.SelectedUserId);
                    if(node != null)
                    {
                        node.LoginName = this.tbLoginName.Text;
                        node.UserPassword = this.tbPassword.Text;
                        node.UserName = this.tbUserName.Text;
                        node.MobilePhone = this.tbMobilePhone.Text;
                        node.Email = this.tbEmail.Text;
                        node.Department = this.tbDepartment.Text;
                        node.Occupation = this.tbOccupation.Text;
                        node.Description = this.tbDescription.Text;
                        node.AccessRight = Convert.ToInt64(Request.Form["accessRight"].ToString());
                        node.Superior = Convert.ToInt64(this.tbSuperior.Text);
                    }
                }

                dbContext.SubmitChanges();
            }
            catch (Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }

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