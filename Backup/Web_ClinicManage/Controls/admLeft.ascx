<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="admLeft.ascx.cs" Inherits="Web_ClinicManage.Controls.admLeft" %>
<table class="table" cellspacing="0" cellpadding="0">
    <tr>
        <td class="left">
            <img alt="" src="/App_Themes/admin/images/blank.gif" />
        </td>
        <td>
            Commerce
        </td>
        <td class="image">
            <img alt="" id="imgdiv1" src="/App_Themes/admin/images/closed.gif" onclick="toggleXPMenu('div1');" />
        </td>
        <td class="right">
            <img alt="" src="/App_Themes/admin/images/blank.gif" />
        </td>
    </tr>
</table>
<asp:Panel ID="div1" CssClass="content" ClientIDMode="Static" runat="server">
    <ul>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_system.jpg" />
            <asp:LinkButton ID="lbtConfig" CausesValidation="false" runat="server">Category</asp:LinkButton></li>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_page.jpg" />
            <asp:LinkButton ID="lbtPage" CausesValidation="false" runat="server">List Product</asp:LinkButton></li>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="LinkButton1" runat="server">Brands</asp:LinkButton></li>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="LinkButton2" runat="server">Bill Detail</asp:LinkButton></li>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_adv.jpg" />
            <asp:LinkButton ID="lbtAdverties" CausesValidation="false" runat="server">Bill Customers</asp:LinkButton></li>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_pro.jpg" />
            <asp:LinkButton ID="lbtNews" runat="server">Manage Customer</asp:LinkButton></li>
        <li>
            <img src="/App_Themes/admin/images/icon_pro.jpg" alt="" /><asp:LinkButton ID="LinkButton3"
                CausesValidation="false" runat="server">Manage Comment</asp:LinkButton></li>
    </ul>
</asp:Panel>
<table class="table" cellspacing="0" cellpadding="0">
    <tr>
        <td class="left">
            <img alt="" src="/App_Themes/admin/images/blank.gif" />
        </td>
        <td>
            Manage News</td>
        <td class="image">
            <img alt="" id="imgdiv9" src="/App_Themes/admin/images/closed.gif" onclick="toggleXPMenu('div9');" />
        </td>
        <td class="right">
            <img alt="" src="/App_Themes/admin/images/blank.gif" />
        </td>
    </tr>
</table>
<asp:Panel ID="div9" CssClass="content" ClientIDMode="Static" runat="server">
    <ul>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="lbtBrands" CausesValidation="false" runat="server" 
                PostBackUrl="~/News/GroupNews.aspx">Group News</asp:LinkButton></li>
        <li>
            <img alt="" src="/App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="lbtCategory" CausesValidation="false" runat="server" 
                PostBackUrl="~/News/News.aspx">Manage News</asp:LinkButton></li>
        <li>
            <img src="/App_Themes/admin/images/icon_pro.jpg" alt="" />
            <asp:LinkButton ID="lbtProduct" CausesValidation="false" runat="server" 
                PostBackUrl="~/News/ReportVisistor.aspx">Report Visistor</asp:LinkButton></li>
        <li>
            <img src="/App_Themes/admin/images/icon_user.jpg" alt=""/>
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/News/User.aspx">User</asp:LinkButton>
        </li>
        <li>
            <img src="/App_Themes/admin/images/icon_pro.jpg" alt=""/>
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/News/Role.aspx">Role</asp:LinkButton>
        </li>
        <li>
            <img src="/App_Themes/admin/images/icon_pro.jpg" alt=""/>
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/About.aspx">About</asp:LinkButton>
        </li>
                
    </ul>
</asp:Panel>

<div class="powered_by">
    Powered by: 
    <br />
    <b> <a href="http://toantv1987.com" target="_blank">AT</a></b><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
</div>
