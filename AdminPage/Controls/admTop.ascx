<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="admTop.ascx.cs" Inherits="Web_LuongTheVinh.Controls.admTop" %>
<div class="div"><table class="table" cellspacing="0" cellpadding="0">
<tr>
    <td colspan="3" class="logo">ADMIN PAGE MANAGER</td>
</tr>
<tr>
    <td class="left">
        Wellcome: <strong>
         </strong>&nbsp;
        <asp:Literal ID="ltrLanguage" runat="server"></asp:Literal>
        &nbsp;
        <asp:ImageButton ID="ibtEn" runat="server" ImageUrl="../App_Themes/Admin/images/flag_en.gif"
            OnClick="ibtEn_Click" ImageAlign="TextTop" />
        &nbsp;
        <asp:ImageButton ID="ibtVi" runat="server" ImageUrl="../App_Themes/Admin/images/flag_vi.gif"
            OnClick="ibtVi_Click" ImageAlign="TextTop" />
        &nbsp;
    </td>
    <td class="right">
       [ <asp:LinkButton ID="lbtHome" 
            runat="server" onclick="lbtHome_Click">Trang Chủ</asp:LinkButton> ]  &nbsp;
       [ <asp:LinkButton ID="lbtLogout" runat="server" onclick="lbtLogout_Click">Đăng Xuất</asp:LinkButton> ]
        
    </td>
</tr>
</table>
</div>