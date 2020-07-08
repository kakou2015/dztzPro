using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class SiteMaster : MasterPage
    {
        public string LeftMenuContent { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            LeftMenuContent = "<aside class=\"Hui-admin-aside-wrapper\"><div class=\"Hui-admin-logo-wrapper\"><a class=\"logo navbar-logo\" href=\"./\"><i class=\"va-m iconpic global-logo\"></i></a><a href =\"addNode.aspx\">电子台账 </a></div>";
            if (!IsPostBack)
            {
                // 第一次加载
                DztzDataContext dbContext = new DztzDataContext();
                foreach (var ledgerNode in dbContext.LedgerNodes)
                {
                    LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\"><dt class=\"Hui-menu-title\">"
                        + ledgerNode.LedgerNodeType
                        + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt><dd class=\"Hui-menu-item\"><ul><li><dl class=\"Hui-menu\"><dt class=\"Hui-menu-title\">"
                        + ledgerNode.LedgerNodeName
                        + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt><dd class=\"Hui-menu-item\"><ul><li><a href =\"task.aspx?action=1&ledgerNodeId="
                        + ledgerNode.Id.ToString()
                        + "\">填写 </a></li><li><a href=\"task.aspx?action=2&ledgerNodeId="
                        + ledgerNode.Id.ToString()
                        + "\">修改</a></li><li><a href = \"search.aspx?ledgerNodeId="
                        + ledgerNode.Id.ToString()
                        + "\"> 查询 </a></li></ul></dd></dl></li></ul></dd></dl></div>";
                }
            }
            else
            {
                // post back, 用户点击了Upload 按钮。

                // @Frank to do,
                // 根据ledgerNodes 数据表 生成左边的菜单。参考Site.Master.
                DztzDataContext dbContext = new DztzDataContext();
                foreach (var ledgerNode in dbContext.LedgerNodes)
                {
                    LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\"><dt class=\"Hui-menu-title\">"
                        + ledgerNode.LedgerNodeType
                        + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt><dd class=\"Hui-menu-item\"><ul><li><dl class=\"Hui-menu\"><dt class=\"Hui-menu-title\">"
                        + ledgerNode.LedgerNodeName
                        + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt><dd class=\"Hui-menu-item\"><ul><li><a href =\"task.aspx?action=1&ledgerNodeId="
                        + ledgerNode.Id.ToString()
                        + "\">填写 </a></li><li><a href=\"task.aspx?action=2&ledgerNodeId="
                        + ledgerNode.Id.ToString()
                        + "\">修改</a></li><li><a href = \"search.aspx?ledgerNodeId="
                        + ledgerNode.Id.ToString()
                        + "\"> 查询 </a></li></ul></dd></dl></li></ul></dd></dl></div>";
                }
            }

            LeftMenuContent += "<dl id=\"menu-home\" class=\"Hui-menu\"><dd class=\"Hui-menu-item-frist\"><ul><li style=\"margin: 0 0 0 25px; color: #20DA01\"><a href=\"AddNode.aspx\">账簿模板管理</a></li></ul></dd></dl>";
            LeftMenuContent += "</aside>";
        }
    }
}