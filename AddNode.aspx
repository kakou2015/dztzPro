<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNode.aspx.cs" Inherits="dztzPro.AddNode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server" style="height: 920px; width: 1900px">
        <table>
            <tr>
                <td class="auto-style1">账簿名：&nbsp;
                    <asp:TextBox ID="LedgerNodeName" runat="server" Height="20px" Width="500px" TabIndex="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">账簿类别：&nbsp;&nbsp;
                    <asp:DropDownList ID="LedgerTypeList" runat="server" Height="30px" Width="500px" TabIndex="11">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">车站：&nbsp;&nbsp;
                    <asp:DropDownList ID="StationList" runat="server" Height="30px" Width="500px" TabIndex="11">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
               <td class="auto-style1">访问权限：
                    <asp:DropDownList ID="AccessLevelList" runat="server" Height="30px" Width="50px" TabIndex="12">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">摸板路径：<asp:FileUpload ID="FileUploadCtrl" runat="server" Height="30px" Width="600px" TabIndex="13" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="UploadBttn" runat="server" Text="上传" OnClick="Upload_Click" Height="30px" Width="80px" Style="margin-left: 57px" TabIndex="14" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="LedgerNodeGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="16px" Width="1198px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="LedgerNodeType" HeaderText="账簿类别" SortExpression="LedgerNodeType" />
                <asp:BoundField DataField="LedgerNodeName" HeaderText="账簿名称" SortExpression="LedgerNodeName" />
                <asp:BoundField DataField="Station" HeaderText="站点" SortExpression="Station" />
                <asp:BoundField DataField="AccessLevel" HeaderText="访问权限" SortExpression="AccessLevel" />
                <asp:BoundField DataField="CreateUser" HeaderText="创建人" SortExpression="CreateUser" />
                <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" />
                <asp:BoundField DataField="ModifyUser" HeaderText="修改人" SortExpression="ModifyUser" />
                <asp:BoundField DataField="ModifyTime" HeaderText="修改时间" SortExpression="ModifyTime" />
                <asp:BoundField DataField="TemplateFileName" HeaderText="摸板文件名" SortExpression="TemplateFileName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dztzConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Station],[LedgerNodeName], [LedgerNodeType], [AccessLevel], [CreateUser], [CreateTime], [ModifyUser], [ModifyTime], [TemplateFileName] FROM [ledgerNode] ORDER BY [Id] DESC, [ModifyTime] DESC, [CreateTime] DESC"></asp:SqlDataSource>
    </form>
</asp:Content>
