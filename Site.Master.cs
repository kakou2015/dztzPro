﻿using System;
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
            //if (Session["user"] == null)
            //{
            //    Response.Redirect("login.aspx");
            //}

            LeftMenuContent = "<aside class=\"Hui-admin-aside-wrapper\"><div class=\"Hui-admin-logo-wrapper\"><a class=\"logo navbar-logo\" href=\"./\"><i class=\"va-m iconpic global-logo\"></i></a><a href =\"index.aspx\">电子台账 </a></div>";
            
            DztzDataContext dbContext = new DztzDataContext();
            var q = from ln in dbContext.LedgerNodes
                        orderby ln.LedgerNodeType
                        select
                            new {id = ln.Id, type = ln.LedgerNodeType, name = ln.LedgerNodeName };
            string type = "";
            foreach (var ledgerNode in q)
            {
                if (type == "")
                {
                    type = ledgerNode.type;
                    LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\"><dt class=\"Hui-menu-title\">"
                        + ledgerNode.type + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow open\">&#xe6d5;</i></dt>"
                        + "<dd class=\"Hui-menu-item\"><ul><li><dl class=\"Hui-menu\">"
                        + "<dt class=\"Hui-menu-title\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                        + "<dd class=\"Hui-menu-item\"><ul>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\')\">填写 </a></li>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "\')\">修改</a></li>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'search.aspx?ledgerNodeId=" + ledgerNode.id.ToString() + "\')\"> 查询 </a></li>"
                        + "</ul></dd></dl>";
                }
                else if (type != ledgerNode.type)
                {
                    type = ledgerNode.type;
                    LeftMenuContent += "</li></ul></dd></dl></div>";
                    LeftMenuContent += "<div class=\"Hui-admin-menu-dropdown bk_2\"><dl id = \"menu-article\" class=\"Hui-menu\"><dt class=\"Hui-menu-title\">"
                        + ledgerNode.type + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                        + "<dd class=\"Hui-menu-item\"><ul><li><dl class=\"Hui-menu\">"
                        + "<dt class=\"Hui-menu-title\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                        + "<dd class=\"Hui-menu-item\"><ul>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\')\">填写 </a></li>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "\')\">修改</a></li>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'search.aspx?ledgerNodeId=" + ledgerNode.id.ToString() + "\')\"> 查询 </a></li>"
                        + "</ul></dd></dl>";
                }
                else
                {
                    LeftMenuContent += "<dl class=\"Hui-menu\">"
                        + "<dt class=\"Hui-menu-title\">" + ledgerNode.name + "<i class=\"Hui-iconfont Hui-admin-menu-dropdown-arrow\">&#xe6d5;</i></dt>"
                        + "<dd class=\"Hui-menu-item\"><ul>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'task.aspx?action=1&ledgerNodeId=" + ledgerNode.id.ToString() + "\')\">填写 </a></li>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'task.aspx?action=2&ledgerNodeId=" + ledgerNode.id.ToString() + "\')\">修改</a></li>"
                        + "<li><a href =\"javascript:void(0);\" onclick=\"menuitem_click(" + "\'search.aspx?ledgerNodeId=" + ledgerNode.id.ToString() + "\')\"> 查询 </a></li>"
                        + "</ul></dd></dl>";
                }
            }

            if (type != "")
            {
                LeftMenuContent += "</li></ul></dd></dl></div>";
            }

            LeftMenuContent += "<dl id=\"menu-home\" class=\"Hui-menu\"><dd class=\"Hui-menu-item-frist\"><ul><li style=\"margin: 0 0 0 25px; color: #20DA01\"><a href=\"javascript:void(0);\" onclick=\"menuitem_click('AddNode.aspx\')\">账簿模板管理</a></li></ul></dd></dl>";
            LeftMenuContent += "</aside>";
        }
    }
}