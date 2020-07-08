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
                //    < dl id = "menu-article" class="Hui-menu">
                //    <dt class="Hui-menu-title">岗位交接簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                //    <dd class="Hui-menu-item">
                //        <ul>
                //            <li>
                //                <dl class="Hui-menu">
                //                    <dt class="Hui-menu-title">车站值班员交接班簿<i class="Hui-iconfont Hui-admin-menu-dropdown-arrow">&#xe6d5;</i></dt>
                //                    <dd class="Hui-menu-item">
                //                        <ul>
                //                            <li>
                //                                <a href = "task.aspx?action=write&ledgerNodeId=1" > 填写 </ a >
                //                            </ li >
                //                            < li >
                //                                < a href="task.aspx?action=modify&ledgerNodeId=1">修改</a>
                //                            </li>
                //                            <li>
                //                                <a href = "task.aspx?action=search&ledgerNodeId=1" > 查询 </ a >
                //                            </ li >
                //                        </ ul >
                //                    </ dd >
                //                </ dl >
                //            </ li >
                //        </ ul >
                //    </ dd >
                //</ dl >

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
                    CreateUser = "frank",
                    ModifyTime = time,
                    ModifyUser = "frank",
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