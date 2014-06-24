<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="Web_ClinicManage.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 90%;
            border: 1px solid #cccccc;
            background-color: #ffffff;
        }
        .style2
        {
            height: 14px;
        }
        .newStyle1
        {
            border-color: #008000;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <p></p>
    <h2>
       Cập nhật về quá Trình Xây Dựng Project
    </h2>
    <p>
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Form/ Chức Năng</td>
                <td>
                    Tình trạng</td>
                <td>
                    Chú thích</td>
                <td>
                    Thông tin khác</td>
            </tr>
            <tr>
                <td>
                    1</td>
                <td>
                    <a href="News/Role.aspx">Role.aspx</a></td>
                <td>
                    đã làm</td>
                <td>
                    Chưa bắt lỗi người dùng nhập</td>
                <td>
                    quản lý quyền của người dùng</td>
            </tr>
            <tr>
                <td>
                    2</td>
                <td>
                    <a href="News/User.aspx">User.aspx</a></td>
                <td>
                    đã làm</td>
                <td>
                    Chưa bắt lỗi người dùng</td>
                <td>
                    Các user </td>
            </tr>
            <tr>
                <td>
                    3</td>
                <td>
                    <a href="News/GroupNews.aspx">GroupNews.aspx</a></td>
                <td>
                    đã làm</td>
                <td>
                    Chưa bắt lỗi người dùng</td>
                <td>
                    Các nhóm tin tức(xã hội,Văn hóa...)</td>
            </tr>
            <tr>
                <td class="style2">
                    4</td>
                <td class="style2">
                    <a href="News/News.aspx">News.aspx</a></td>
                <td class="style2">
                    đang làm</td>
                <td class="style2">
                    -dang 
                    lam</td>
                <td class="style2">
                    Quản trị phần tin tức,
                    </td>
            </tr>
            <tr>
                <td>
                    5</td>
                <td>
                    <a href="News/NewsDetail.aspx">NewsDetail.aspx</a></td>
                <td>
                    Chưa</td>
                <td>
                    ddang lamf</td>
                <td>
                    THêm xửa xóa từng bài biết</td>
            </tr>
            <tr>
                <td>
                    6</td>
                <td>
                    <a href="News/ReportVisistor.aspx">ReportVisistor.aspx</a></td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    Số khác thăm web. cái này phụ </td>
            </tr>
            <tr>
                <td>
                    7</td>
                <td>
                    Báo cáo,Thống kê </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    Thống kê bán hàng, doanh số...</td>
            </tr>
            <tr>
                <td>
                    8</td>
                <td>
                    <a href="Product/Product.aspx">Product.aspx</a></td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    Quản lý các sản phẩm</td>
            </tr>
            <tr>
                <td>
                    9</td>
                <td>
                    <a href="Product/Customers.aspx">Customers.aspx</a></td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    quản lý thông tin khách hàng</td>
            </tr>
            <tr>
                <td>
                    10</td>
                <td>
                    <a href="Product/Category.aspx">Category.aspx</a></td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    Danh mục các loại hàng hóa</td>
            </tr>
            <tr>
                <td>
                    11</td>
                <td>
                    <a href="Product/Brands.aspx">Brands.aspx</a></td>
                <td>
                    &nbsp;</td>
                <td>
                    làm 1 phần. Chưa xong</td>
                <td>
                    Quản lý thương hiệu</td>
            </tr>
            <tr>
                <td>
                    12</td>
                <td>
                    <a href="Product/BillCustomers.aspx">BillCustomers.aspx</a></td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    Chi tiết hóa đơn</td>
            </tr>
            <tr>
                <td>
                    13</td>
                <td>
                    &nbsp;</td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    PHẦN HIỂN THỊ</td>
                <td>
                    </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    15</td>
                <td>
                    PHần Tin tức</td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    Hiển thị tin tức cho người dùng xem</td>
            </tr>
            <tr>
                <td>
                    16</td>
                <td>
                    Hiển thị sản phẩm &amp; Giỏ hàng</td>
                <td>
                    Chưa</td>
                <td>
                    &nbsp;</td>
                <td>
                    Hiển thị sản phầm trên web</td>
            </tr>
            <tr>
                <td>
                    17</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    18</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    19</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    20</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
