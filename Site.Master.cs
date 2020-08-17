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
            if (Global.CurrentUser == null)
            {
                Response.Redirect("login.aspx");
            }

            LeftMenuContent = "<aside class=\"Hui-admin-aside-wrapper\"><div class=\"Hui-admin-logo-wrapper\"><a class=\"logo navbar-logo\" href=\"./\"><i class=\"va-m iconpic global-logo\"></i></a><a href =\"index.aspx?action=1\">电子台账 </a></div>";
            
            DztzDataContext dbContext = new DztzDataContext();
            var q = from ln in dbContext.LedgerNodes
                        orderby ln.LedgerNodeType
                        select
                            new {id = ln.Id, type = ln.LedgerNodeType, name = ln.LedgerNodeName };
            string type = "";
            string selectedtype = "";
            foreach (var ledgerNode in q)
            {
                if (Global.CurrentSelectedLedger == ledgerNode.id)
                {
                    selectedtype = ledgerNode.type;
                    break;
                }
            }

            foreach (var ledgerNode in q)
            {
                if (type == "")
                {
                    type = ledgerNode.type;
                    if (Global.CurrentSelectedLedger == ledgerNode.id)
                    {
                        LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title selected\">" + ledgerNode.type + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\" style=\"display: block;\"><ul><li><dl class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title selected\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\" style=\"display: block;\"><ul>"
                            + "<li><a href =\"task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\">填写 </a></li>"
                            + "<li><a href=\"task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "&ledgerNodeItemId=0\">修改</a></li>"
                            + "<li><a href = \"search.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\"> 查询 </a></li>"
                            + "</ul></dd></dl>";
                    }
                    else
                    {
                        LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\">"
                            + (selectedtype == ledgerNode.type ? "<dt class=\"Hui-menu-title selected\">" : "<dt class=\"Hui-menu-title\">")
                            + ledgerNode.type + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\"" + (selectedtype == ledgerNode.type ? " style=\"display: block;\"" : "") + "><ul><li><dl class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\"><ul>"
                            + "<li><a href =\"task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\">填写 </a></li>"
                            + "<li><a href=\"task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "&ledgerNodeItemId=0\">修改</a></li>"
                            + "<li><a href = \"search.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\"> 查询 </a></li>"
                            + "</ul></dd></dl>";
                    }
                }
                else if (type != ledgerNode.type)
                {
                    type = ledgerNode.type;
                    LeftMenuContent += "</li></ul></dd></dl></div>";
                    if (Global.CurrentSelectedLedger == ledgerNode.id)
                    {
                        LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title selected\">" + ledgerNode.type + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\" style=\"display: block;\"><ul><li><dl class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title selected\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\" style=\"display: block;\"><ul>"
                            + "<li><a href =\"task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\">填写 </a></li>"
                            + "<li><a href=\"task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "&ledgerNodeItemId=0\">修改</a></li>"
                            + "<li><a href = \"search.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\"> 查询 </a></li>"
                            + "</ul></dd></dl>";
                    }
                    else
                    {
                        LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\">"
                            + (selectedtype == ledgerNode.type ? "<dt class=\"Hui-menu-title selected\">" : "<dt class=\"Hui-menu-title\">")
                            + ledgerNode.type + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\"" + (selectedtype == ledgerNode.type ? " style=\"display: block;\"" : "") + "><ul><li><dl class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\"><ul>"
                            + "<li><a href =\"task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\">填写 </a></li>"
                            + "<li><a href=\"task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "&ledgerNodeItemId=0\">修改</a></li>"
                            + "<li><a href = \"search.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\"> 查询 </a></li>"
                            + "</ul></dd></dl>";
                    }
                }
                else
                {
                    if (Global.CurrentSelectedLedger == ledgerNode.id)
                    {
                        LeftMenuContent += "<dl class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title selected\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\" style=\"display: block;\"><ul>"
                            + "<li><a href =\"task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\">填写 </a></li>"
                            + "<li><a href=\"task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "&ledgerNodeItemId=0\">修改</a></li>"
                            + "<li><a href = \"search.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\"> 查询 </a></li>"
                            + "</ul></dd></dl>";
                    }
                    else
                    {
                        LeftMenuContent += "<dl class=\"Hui-menu\">"
                            + "<dt class=\"Hui-menu-title\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                            + "<dd class=\"Hui-menu-item\"><ul>"
                            + "<li><a href =\"task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\">填写 </a></li>"
                            + "<li><a href=\"task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "&ledgerNodeItemId=0\">修改</a></li>"
                            + "<li><a href = \"search.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\"> 查询 </a></li>"
                            + "</ul></dd></dl>";
                    }
                }
            }

            if (type != "")
            {
                LeftMenuContent += "</li></ul></dd></dl></div>";
            }

            LeftMenuContent += "<dl id=\"menu-home\" class=\"Hui-menu\"><dd class=\"Hui-menu-item-frist\"><ul><li style=\"margin: 0 0 0 25px; color: #20DA01\"><a href=\"AddNode.aspx\">账簿模板管理</a></li></ul></dd></dl>";
            LeftMenuContent += "<dl id=\"menu-home\" class=\"Hui-menu\"><dd class=\"Hui-menu-item-frist\"><ul><li style=\"margin: 0 0 0 25px; color: #20DA01\"><a href=\"UserManagement.aspx\">属下用户管理</a></li></ul></dd></dl>";
            LeftMenuContent += "<dl id=\"menu-home\" class=\"Hui-menu\"><dd class=\"Hui-menu-item-frist\"><ul><li style=\"margin: 0 0 0 25px; color: #20DA01\"><a href=\"AccessLevel.aspx?accessLevel=0\">访问权限管理</a></li></ul></dd></dl>";
            LeftMenuContent += "</aside>";
        }
    }
}