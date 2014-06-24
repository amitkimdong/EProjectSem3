<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="Web_ClinicManage.News.Role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="PageName">
        User</div>
    <asp:Panel ID="pnView" runat="server">
        <div class="Control">
            <ul>
                <li>
                    <asp:LinkButton CssClass="vadd" ID="lbtAddT" runat="server" OnClick="AddButton_Click">Thêm mới</asp:LinkButton></li>
                <li>
                    <asp:LinkButton CssClass="vrefresh" ID="lbtRefreshT" runat="server" OnClick="RefreshButton_Click">Làm mới</asp:LinkButton></li>
                <li></li>
                <li>
                </li>
            </ul>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="DataGrid1" runat="server" Width="100%" CssClass="TableView" AutoGenerateColumns="False"
                AllowPaging="True" PageSize="25" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Center"
                OnItemCommand="DataGrid1_ItemCommand">
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
                    <asp:BoundColumn DataField="Id" HeaderText="Id" Visible="False" />
                    <asp:BoundColumn DataField="RoleName" HeaderText="RoleName" 
                        ItemStyle-CssClass="Text" Visible="true">
                        <ItemStyle CssClass="tdCenter"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:TemplateColumn ItemStyle-CssClass="Function">
                        <HeaderTemplate>
                            Chức năng
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Sửa" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"Id")%>'
                                CommandName="Edit" CssClass="Edit" ImageUrl="/App_Themes/Admin/images/edit.png"
                                ToolTip="Sửa" />
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
        <div class="Control">
        </div>
    </asp:Panel>
    <asp:Panel ID="pnUpdate" runat="server" Visible="False">
        <table class="TableUpdate" border="1">
            <tr>
                <td class="Control" colspan="2">
                    <h3>
                        <asp:Label ID="lblAction" runat="server" Text="Làm gì đó nhỉ"></asp:Label>
                    </h3>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblName" runat="server" Text="RoleName:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtRoleName" runat="server" CssClass="text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtRoleName"
                        Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" 
                        ValidationGroup="Brands"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
          
            <tr>
                <td class="Control" colspan="2">
                    <ul>
                        <li>
                            <asp:LinkButton CssClass="uupdate" ID="lbtUpdateB" runat="server" ValidationGroup="Brands"
                                OnClick="Update_Click">Save</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="uback" ID="lbtBackB" runat="server" CausesValidation="False"
                                ValidationGroup="Brands" OnClick="Back_Click">Trở về</asp:LinkButton></li>
                    </ul>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
