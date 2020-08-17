using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dztzPro
{
    public partial class AccessLevel : System.Web.UI.Page
    {
        private long currentSelectedAccessLevel = 0;
        static public string GetUIString(long accessRight)
        {
                
            string html = "<tr><td class=\"auto-style1\">访问权限：&nbsp;</td><td><input id=\"accessRight\" name=\"accessRight\" value=\""
                + accessRight.ToString() +"\"></td></tr><tr><td></td><td><table>";
            DztzDataContext dbContext = new DztzDataContext();
            foreach(var accessLevel in dbContext.AccessLevels)
            {
                if((accessLevel.ALValue & accessRight) == accessLevel.ALValue)
                {
                    html += "<p><input id=\"al_" + accessLevel.ALValue.ToString() 
                        + "\" type=\"checkbox\" Height=\"20px\" Width=\"500px\" checked=\"true\" onclick=\"updateAccessRight(this.id);\"/><label for=\"al_" 
                        + accessLevel.ALValue.ToString() + "\">" + accessLevel.ALName + "</label></p>";
                }
            }

            html += "</table></td></tr>";
            return html;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DztzDataContext dbContext = new DztzDataContext();
                var accessLevel = Convert.ToInt64(Request["accessLevel"]);
                var node = dbContext.AccessLevels.SingleOrDefault(ln => ln.ALValue == accessLevel);
                if (node != null)
                {
                    if (!Page.IsPostBack)
                    {
                        this.AccessLevelName.Text = node.ALName;
                    }

                    currentSelectedAccessLevel = accessLevel;
                    this.SaveBttn.Text = "更新";
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        this.AccessLevelName.Text = "";
                    }

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
                var accesslevelName = this.AccessLevelName.Text;
                DztzDataContext dbContext = new DztzDataContext();
                string time = DateTime.Now.ToString();
                var node = dbContext.AccessLevels.SingleOrDefault(ln => ln.ALName == accesslevelName);
                if (node != null)
                {
                    Response.Redirect("AccessLevel.aspx?accessLevel=0");
                }
                else
                {
                    if (SaveBttn.Text == "新建")//新建
                    {
                        var q = dbContext.AccessLevels.Max(x => x.ALValue);
                        dbContext.AccessLevels.InsertOnSubmit(new AccessLevel()
                        {
                            ALName = accesslevelName,
                            ALValue = q * 2
                        });
                    }
                    else//更新
                    {
                        var q = dbContext.AccessLevels.SingleOrDefault(c => c.ALValue == currentSelectedAccessLevel);
                        q.ALName = accesslevelName;
                    }

                    dbContext.SubmitChanges();
                }
            }
            catch(Exception exp)
            {
                Console.Out.WriteLine(exp.ToString());
            }
            Response.Redirect("AccessLevel.aspx?accessLevel=0");
        }

        protected void AccessLevelGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (AccessLevelGridView.SelectedIndex >= 0)
            {
                Response.Redirect("AccessLevel.aspx?accessLevel=" + AccessLevelGridView.SelectedRow.Cells[1].Text);                
            }
        }
    }
}