<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="dztzPro.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <article class="Hui-admin-content clearfix">
        <div class="panel">
            <div class="panel-body">
                <div class="text-c f-24">关于 <sub>V2020.7</sub></div>
                <div class="contact mt-20">
                    <ol class="linenums">
                        <li>这是第一版程序，有些细节需要根据用户需求做出调整。</li>
                        <li>左侧菜单会根据账簿模板情况自动更新,如若是管理员权限登录显示模板管理菜单</li>
                        <li>需要登录或者退出登录时,可点击左上方的电子台帐进入登录界面；</li>
                        <li>电子台帐可以通过点击"保存"按钮中途保存，如果需要继续填写，请点击相应的修改菜单进行修改。点解"结束填写"按钮之后不可修改；</li>
                    </ol>
                </div>
            </div>
        </div>
    </article>

</asp:Content>
