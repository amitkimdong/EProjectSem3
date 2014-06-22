<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="Web_ClinicManage.News.NewsDetail" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="pnUpdate" runat="server">
        <table class="TableUpdate" border="1">
            <tr>
                <td class="Control" colspan="2">
                    &nbsp;</td>
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
                    <asp:Label ID="lblLogo" runat="server" Text="Tag"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtTag" runat="server" CssClass="TextShort"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblPass" runat="server" Text="Level:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtLevel" runat="server"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblOrd" runat="server" Text="Title:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="text"></asp:TextBox>
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
                    <asp:Label ID="Label3" runat="server" Text="Priority:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtPriority" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="Label5" runat="server" Text="Index:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtIndex" runat="server"></asp:TextBox>
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
                </td>
            </tr>
            <tr>
                <th>
                    &nbsp;</th>
                <td>
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
                    </FCKeditorV2:FCKeditor>
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
                                OnClick="Update_Click">Save</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton CssClass="uback" ID="lbtBackB" runat="server" CausesValidation="False"
                                ValidationGroup="Brands" PostBackUrl="~/Default.aspx" 
                                onclick="lbtBackB_Click">Back Home</asp:LinkButton>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />

</asp:Content>
