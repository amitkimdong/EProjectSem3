<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="admLeft.ascx.cs" Inherits="Web_LuongTheVinh.Controls.admLeft" %>
<table class="table" cellspacing="0" cellpadding="0">
    <tr>
        <td class="left">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
        <td>
            SMT Line
        </td>
        <td class="image">
            <img alt="" id="imgdiv1" src="../App_Themes/admin/images/closed.gif" onclick="toggleXPMenu('div1');" />
        </td>
        <td class="right">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
    </tr>
</table>
<asp:Panel ID="div1" CssClass="content" ClientIDMode="Static" runat="server">
    <ul>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_system.jpg" />
            <asp:LinkButton ID="lbtConfig" CausesValidation="false" runat="server">Thay Linh Kiện</asp:LinkButton></li>
    
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_page.jpg" />
            <asp:LinkButton ID="lbtPage" CausesValidation="false" runat="server">Quick Check</asp:LinkButton></li>
            <li>
            <img alt="" src="../App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="LinkButton1" runat="server">Check "01" Feeder</asp:LinkButton></li>
            <li>
            <img alt="" src="../App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="LinkButton2" runat="server">Kiểm tra tem DID</asp:LinkButton></li>

        <%--<li><img alt="" src="/App_Themes/admin/images/icon_contact.jpg"/><asp:LinkButton 
                ID="lbtContact" CausesValidation="false" runat="server" onclick="LinkButton_Click">Liên hệ, phản hồi</asp:LinkButton></li>--%>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_adv.jpg" />
            <asp:LinkButton ID="lbtAdverties" CausesValidation="false" runat="server">Check 01 Feeder</asp:LinkButton></li>
    </ul>
</asp:Panel>
<table class="table" cellspacing="0" cellpadding="0">
    <tr>
        <td class="left">
            <img alt="" src="../App_Themes/admin/images/blank.gif"
        </td>
        <td>
            PDC Store
           </td>
        <td class="image">
            <img alt="" id="imgdiv10" src="../App_Themes/admin/images/closed.gif" onclick="toggleXPMenu('div10');" />
        </td>
        <td class="right">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
    </tr>
</table>
<asp:Panel ID="div10" CssClass="content" ClientIDMode="Static" runat="server">
    <ul>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="lbtGroupNews" runat="server">Nhập Linh Kiện</asp:LinkButton></li>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_pro.jpg" />
            <asp:LinkButton ID="lbtNews" runat="server">Xuất linh kiện</asp:LinkButton></li>
    </ul>
</asp:Panel>
<table class="table" cellspacing="0" cellpadding="0">
    <tr>
        <td class="left">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
        <td>
            Quản trị</td>
        <td class="image">
            <img alt="" id="imgdiv9" src="../App_Themes/admin/images/closed.gif" onclick="toggleXPMenu('div9');" />
        </td>
        <td class="right">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
    </tr>
</table>
<asp:Panel ID="div9" CssClass="content" ClientIDMode="Static" runat="server">
    <ul>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="lbtBrands" CausesValidation="false" runat="server">PC Master</asp:LinkButton></li>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="lbtCategory" CausesValidation="false" runat="server">Nhóm sản phẩm</asp:LinkButton></li>
        <li>
            <img src="../App_Themes/admin/images/icon_pro.jpg" alt="" />
            <asp:LinkButton ID="lbtProduct" CausesValidation="false" runat="server">Danh sách sản phẩm</asp:LinkButton></li>
        <li>
            <img src="../App_Themes/admin/images/icon_pro.jpg" alt=""><asp:LinkButton ID="lbtCustomer"
                CausesValidation="false" runat="server">Quản lý khách hàng</asp:LinkButton></li>
        <li>
            <img src="../App_Themes/admin/images/icon_pro.jpg" alt=""><asp:LinkButton ID="lbttbCUSTOMERS"
                CausesValidation="false" runat="server">Quản lý đơn hàng bán lẻ</asp:LinkButton></li>
        <li>
            <img src="../App_Themes/admin/images/icon_pro.jpg" alt=""><asp:LinkButton ID="lbtCommentProduct"
                CausesValidation="false" runat="server">Phản hồi sản phẩm</asp:LinkButton></li>

                    <li>
            <img alt="" src="../App_Themes/admin/images/icon_user.jpg" />
            <asp:LinkButton ID="lbtUser" CausesValidation="false" runat="server" 
                onclick="lbtUser_Click">Người dùng</asp:LinkButton></li>
    </ul>
</asp:Panel>
<table class="table" cellspacing="0" cellpadding="0">
    <tr>
        <td class="left">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
        <td>
            Hỗ trợ trực tuyến
              <td class="image">
            <img alt="" id="imgdiv8" src="../App_Themes/admin/images/closed.gif" onclick="toggleXPMenu('div8');" />
        </td>
        <td class="right">
            <img alt="" src="../App_Themes/admin/images/blank.gif" />
        </td>
    </tr>
</table>
<asp:Panel ID="div8" CssClass="content" ClientIDMode="Static" runat="server">
    <ul>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_gpro.jpg" />
            <asp:LinkButton ID="lbtGroupSupport" CausesValidation="false" runat="server">Nhóm hỗ trợ</asp:LinkButton></li>
        <li>
            <img alt="" src="../App_Themes/admin/images/icon_pro.jpg" />
            <asp:LinkButton ID="lbtSupport" CausesValidation="false" runat="server">Nhân viên hỗ trợ</asp:LinkButton></li></ul>
</asp:Panel>
<div class="powered_by">
    Powered by: <a href="../../index.aspx" target="_blank"><b>Bachkhoa-Aptech</b></a></div>
