using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class AddNode : System.Web.UI.Page
    {
        public long AccessRight = 0;
        public string AccessRightContent = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.CurrentUser != null)
            {
                SqlDataSource2.SelectParameters["CurrentLoginUserAR"].DefaultValue = Global.CurrentUser.AccessRight.ToString();
            }

            if (!IsPostBack)
            {
                // 第一次加载
                LedgerTypeList.Items.Add("岗位交接簿");
                AccessRight = Global.CurrentUser.AccessRight;
                this.AccessRightContent = AccessLevel.GetUIString(Global.CurrentUser.AccessRight);
            }
            else
            {
                // post back, 用户点击了Upload 按钮。

                // @Frank to do,
                // 根据ledgerNodes 数据表 生成左边的菜单。参考Site.Master.
            }

            Global.CurrentSelectedLedger = 0;
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            var ledgerNodeType = LedgerTypeList.SelectedValue;
            var accessRight = Convert.ToInt64(Convert.ToInt64(Request.Form["accessRight"].ToString()));

            if (FileUploadCtrl.HasFile)
            {
                StreamReader sr = new StreamReader(FileUploadCtrl.FileContent);

                string templateContent = sr.ReadToEnd();
                sr.Dispose();
                DztzDataContext dbContext = new DztzDataContext();
                string time = DateTime.Now.ToString();
                dbContext.LedgerNodes.InsertOnSubmit(new LedgerNode()
                {
                    LedgerNodeType = ledgerNodeType,
                    LedgerNodeName = LedgerNodeName.Text==""?FileUploadCtrl.FileName:LedgerNodeName.Text,
                    AccessRight = accessRight,
                    CreateTime = time,
                    CreateUser = Global.CurrentUser.UserName,
                    ModifyTime = time,
                    ModifyUser = Global.CurrentUser.UserName,
                    TemplateFileName = FileUploadCtrl.FileName,
                    TemplateContent = templateContent
                });

                dbContext.SubmitChanges();
            }
            else
            {
                ;
            }

            Response.Redirect("AddNode.aspx");
        }
    }
}