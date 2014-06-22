<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Brands.aspx.cs" Inherits="Web_ClinicManage.Product.Brands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="PageName">
        Manage Brand
    </div>
    <asp:Panel ID="pnView" runat="server">
        <div class="Control">
            <ul>
                <li>
                    <asp:LinkButton CssClass="vadd" ID="lbtAddT" runat="server" OnClick="AddButton_Click">Add Brand</asp:LinkButton></li>
                <li>
                    <asp:LinkButton CssClass="vrefresh" ID="lbtRefreshT" runat="server" OnClick="RefreshButton_Click">Refresh</asp:LinkButton></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="DataGrid1" runat="server" Width="100%" CssClass="TableView" AllowPaging="True"
                PageSize="25" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Center"
                OnItemCommand="grvUser_ItemCommand" AutoGenerateColumns="False">
                <HeaderStyle CssClass="trHeader"></HeaderStyle>
                <ItemStyle CssClass="trOdd"></ItemStyle>
                <AlternatingItemStyle CssClass="trEven"></AlternatingItemStyle>
                <Columns>
                    <asp:BoundColumn DataField="Name" HeaderText="Name" ItemStyle-CssClass="tdCenter"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Logo" HeaderText="Logo"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Ord" HeaderText="Ord"></asp:BoundColumn>
              
                    <asp:BoundColumn DataField="Lang" HeaderText="Lang"></asp:BoundColumn>
                  
                    <asp:TemplateColumn ItemStyle-CssClass="Function">
                        <HeaderTemplate>
                            Action
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
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblLogo" runat="server" Text="Logo:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtLogo" runat="server" CssClass="TextShort"></asp:TextBox>
                </td>
            </tr>
           
            
            <tr>
                <th>
                    <asp:Label ID="Label4" runat="server" Text="Ord:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtOrd" runat="server"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <th>
                    <asp:Label ID="Label7" runat="server" Text="Lang:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtLang" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    &nbsp;
                </th>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <th>
                    &nbsp;
                </th>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="Control" colspan="2">
                    <ul>
                        <li>
                            <asp:LinkButton CssClass="uupdate" ID="lbtSave" runat="server" ValidationGroup="Brands"
                                OnClick="Update_Click">Save</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="uback" ID="lbtBackB" runat="server" CausesValidation="False"
                                ValidationGroup="Brands" OnClick="lbtBackB_Click">Back</asp:LinkButton></li>
                    </ul>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
