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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 第一次加载
                StationList.Items.Add("安康车务段");
                LedgerTypeList.Items.Add("岗位交接簿");
                AccessLevelList.Items.Add("1");
                AccessLevelList.Items.Add("2");
                AccessLevelList.Items.Add("3");
                AccessLevelList.Items.Add("4");
                AccessLevelList.Items.Add("5");
            }
            else
            {
                // post back, 用户点击了Upload 按钮。

                // @Frank to do,
                // 根据ledgerNodes 数据表 生成左边的菜单。参考Site.Master.
            }

        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            var station = StationList.SelectedValue;
            var ledgerNodeType = LedgerTypeList.SelectedValue;
            var ledgerNodeName = LedgerNodeName.Text;
            var accessLevel = Convert.ToInt32(AccessLevelList.SelectedValue);

            if (FileUploadCtrl.HasFile)
            {
                StreamReader sr = new StreamReader(FileUploadCtrl.FileContent);

                string templateContent = sr.ReadToEnd();
                sr.Dispose();
                DztzDataContext dbContext = new DztzDataContext();
                string time = DateTime.Now.ToString();
                dbContext.LedgerNodes.InsertOnSubmit(new LedgerNode()
                {
                    Station = station,
                    LedgerNodeType = ledgerNodeType,
                    LedgerNodeName = ledgerNodeName,
                    AccessLevel = accessLevel,
                    CreateTime = time,
                    CreateUser = Global.CurrentUser,
                    ModifyTime = time,
                    ModifyUser = Global.CurrentUser,
                    TemplateContent = templateContent
                });

                dbContext.SubmitChanges();
            }
            else
            {
                ;
            }

            // https://blog.csdn.net/mhjbeijing/article/details/6423215
            // refresh page.

        }
    }
}