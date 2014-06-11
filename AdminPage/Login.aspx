<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_LuongTheVinh.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="table">
         <tr>
            <th colspan="2">
                <h3>Đăng nhập vào hệ thống&nbsp;</h3></th>
        </tr>
        <tr>
            <th class="style1">
                <asp:Label ID="Label1" runat="server" Text="Mã Code:"></asp:Label>&nbsp;</th>
            <td>
                <asp:TextBox ID="txtCode" runat="server" CssClass="TextShort" Width="200px"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <th class="style1">
                <asp:Label ID="Label2" runat="server" Text="Mật Khẩu:"></asp:Label>&nbsp;</th>
            <td>
                <asp:TextBox ID="txtPass" runat="server" Width="200px"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <th class="style1">
                &nbsp;</th>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="(*)"></asp:Label>
            </td>
        </tr>
        <tr>
            <th colspan="2" align="center">
               ---------
                <asp:LinkButton ID="lbtLogin" runat="server" onclick="lbtLogin_Click">Đăng nhập</asp:LinkButton>
                -------
<asp:LinkButton ID="lbtCancel" runat="server" onclick="lbtCancel_Click">Hủy</asp:LinkButton>
                ----------</th>
        </tr>
    </table>
</asp:Content>
