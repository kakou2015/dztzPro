﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNode.aspx.cs" Inherits="dztzPro.AddNode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 99%; text-align: center; padding-left:8px">
        <form runat="server">
            <table class="table table-border table-bordered table-bg mt-20">
                <tr>
                    <td class="auto-style1">账簿名：&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="LedgerNodeName" runat="server" Height="20px" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">账簿类别：
                    </td>
                    <td>
                        <asp:DropDownList ID="LedgerTypeList" runat="server" Height="30px" Width="500px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <%= AccessRightContent %>
                <tr>
                    <td class="auto-style1">摸板路径：
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUploadCtrl" runat="server" Height="30px" Width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="UploadBttn" runat="server" Text="上传" OnClick="Upload_Click" Height="30px" Width="80px" Style="margin-left: 57px"/>
                        </a>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="LedgerNodeGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="LedgerNodeType" HeaderText="账簿类别" SortExpression="LedgerNodeType" />
                    <asp:BoundField DataField="LedgerNodeName" HeaderText="账簿名称" SortExpression="LedgerNodeName" />
                    <asp:BoundField DataField="AccessRight" HeaderText="访问权限" SortExpression="AccessRight" />
                    <asp:BoundField DataField="CreateUser" HeaderText="创建人" SortExpression="CreateUser" />
                    <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                    <asp:BoundField DataField="ModifyUser" HeaderText="修改人" SortExpression="ModifyUser" />
                    <asp:BoundField DataField="ModifyTime" HeaderText="修改时间" SortExpression="ModifyTime" />
                    <asp:BoundField DataField="TemplateFileName" HeaderText="摸板文件名" SortExpression="TemplateFileName" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="Freezing" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" 
                SelectCommand="SELECT DISTINCT [Id], [LedgerNodeName], [LedgerNodeType], [AccessRight], [CreateUser], [CreateTime], [ModifyUser], [ModifyTime], [TemplateFileName] FROM [ledgerNode]  WHERE (([AccessRight] & @CurrentLoginUserAR) = [AccessRight]) ORDER BY [Id] DESC, [ModifyTime] DESC, [CreateTime] DESC"
                ProviderName="<%$ ConnectionStrings:dztzConnectionString.ProviderName %>">
                <SelectParameters> 
                    <asp:Parameter DefaultValue="1" Name="CurrentLoginUserAR" Type="Int64" /> 
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" runat="server">
    <li style="color:#040038">
        账簿模板管理
    </li>
    <li>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </li>
</asp:Content>
