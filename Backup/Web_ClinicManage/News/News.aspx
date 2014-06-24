<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Web_ClinicManage.News.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class ="PageName">
Manage&nbsp; News
</div>
 <asp:Panel ID="pnView" runat="server">
        <div class="Control">
            <ul>
                <li>
                    <asp:LinkButton CssClass="vadd" ID="lbtAddT" runat="server" OnClick="AddButton_Click">Add News </asp:LinkButton></li>
                <li>
                    <asp:LinkButton CssClass="vrefresh" ID="lbtRefreshT" runat="server" OnClick="RefreshButton_Click">Refresh</asp:LinkButton></li>
                <li></li>
                <li>
                </li>
            </ul>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="DataGrid1" runat="server" Width="100%" CssClass="TableView" AllowPaging="True"
                PageSize="25" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Center"
                OnItemCommand="grvUser_ItemCommand">
                <HeaderStyle CssClass="trHeader"></HeaderStyle>
                <ItemStyle CssClass="trOdd"></ItemStyle>
                <AlternatingItemStyle CssClass="trEven"></AlternatingItemStyle>
                <Columns>
                    <asp:TemplateColumn ItemStyle-CssClass="tdCenter">
                        <HeaderTemplate>
                            <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="False"></asp:CheckBox>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server"></asp:CheckBox>
                        </ItemTemplate>
                        <ItemStyle CssClass="tdCenter"></ItemStyle>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn ItemStyle-CssClass="Function">
                        <HeaderTemplate>
                            Chức năng
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Sửa" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Id")%>'
                                CommandName="Edit" CssClass="Edit" ImageUrl="/App_Themes/Admin/images/edit.png"
                                ToolTip="Edit" />
                            <asp:ImageButton ID="cmdDelete" runat="server" AlternateText="Xóa" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Id")%>'
                                CommandName="Delete" CssClass="Delete" ImageUrl="/App_Themes/Admin/images/delete.png"
                                OnClientClick="javascript:return confirm('Bạn có muốn xóa?');" ToolTip="Xóa" />
                        </ItemTemplate>
                        <ItemStyle CssClass="Function" />
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle HorizontalAlign="Center" CssClass="Paging" Position="Bottom" NextPageText="Previous"
                    PrevPageText="Next" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>
        </asp:Panel>
    </asp:Panel>
    
</asp:Content>
