<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="GroupNews.aspx.cs" Inherits="Web_ClinicManage.News.GroupNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="PageName">
        Manage Group News
    </div>
    <asp:Panel ID="pnView" runat="server">
        <div class="Control">
            <ul>
                <li>
                    <asp:LinkButton CssClass="vadd" ID="lbtAddT" runat="server" OnClick="AddButton_Click">Add News Group</asp:LinkButton></li>
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
                    <asp:BoundColumn DataField="Name" HeaderText="Group Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Title" HeaderText="Title"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Tag" HeaderText="Tag"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Level" HeaderText="Level"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Description" HeaderText="Description"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Priority" HeaderText="Priority"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Index" HeaderText="Index"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Active" HeaderText="Active"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Lang" HeaderText="Lang"></asp:BoundColumn>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="*Name not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblLogo" runat="server" Text="Tag"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtTag" runat="server" CssClass="TextShort"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtTag" ErrorMessage="*Tag not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblPass" runat="server" Text="Level:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtLevel" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtLevel" ErrorMessage="*Level not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblOrd" runat="server" Text="Title:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtTitle" ErrorMessage="*Title not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label1" runat="server" Text="Desciption:"></asp:Label>
                    &nbsp;
                </th>
                <td>
                    <asp:TextBox ID="txtDesciption" runat="server" CssClass="text"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label2" runat="server" Text="KeyWord:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtKeyword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtKeyword" ErrorMessage="*KeyWord not be empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label4" runat="server" Text="Ord:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtOrd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtOrd" ErrorMessage="*Ord not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label3" runat="server" Text="Priority:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtPriority" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtPriority" ErrorMessage="*Priorityr not be empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label5" runat="server" Text="Index:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtIndex" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtIndex" ErrorMessage="*Index not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label6" runat="server" Text="Active:"></asp:Label>
                </th>
                <td>
                    <asp:CheckBox ID="chkActive" runat="server" />
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label7" runat="server" Text="Lang:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtLang" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtLang" ErrorMessage="*Lang not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
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
