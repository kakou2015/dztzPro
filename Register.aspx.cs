using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class Register : System.Web.UI.Page
    {
        public long AccessRight = 0;
        public string AccessRightContent = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DztzDataContext dbContext = new DztzDataContext();
                foreach (var n in dbContext.AccessLevels)
                {
                    AccessRight += n.ALValue;
                }

                this.AccessRightContent = AccessLevel.GetUIString(AccessRight);
                this.SaveBttn.Text = "提交";
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
                var node = dbContext.Users.SingleOrDefault(u => u.LoginName == this.tbLoginName.Text);
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

                dbContext.SubmitChanges();
            }
            catch (Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }

            Response.Redirect("Login.aspx");
        }
    }
}