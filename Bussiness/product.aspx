<%@ Page Title="" Language="C#" MasterPageFile="~/Bussiness/MasterPageBussiness.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Bussiness_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="product">
        <div class="section">
            <ul>
                <li>
                    <a href="product.aspx">
                        <img src="product/medical/.jpg" alt="thumbnail"></a>
                </li>
                <li>
                    <a href="product.aspx">
                        <img src="product/medical/.jpg" alt="thumbnail"></a>
                </li>
                <li>
                    <a href="product.aspx">
                        <img src="product/medical/.jpg" alt="thumbnail"></a>
                </li>
                <li>
                    <a href="product.aspx">
                        <img src="product/medical/.jpg" alt="thumbnail"></a>
                </li>
                <li>
                    <a href="product.aspx">
                        <img src="product/medical/.jpg" alt="thumbnail"></a>
                </li>
            </ul>
            <div>
                <img style="height: 316px; width: 317px;" src="product/medical/medical1.jpg" alt="view">
            </div>
        </div>
        <div class="section">
            <h2><span>$8.50</span>Hukbalahap Boots</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis cursus gravida. Suspendisse ut ligula tristique velit blandit vel sit amet ipsum. Nam accumsan turpis id mauris fermentum pharetra. Cras interdum, risus et dictum bibendum, arcu tellus convallis libero, quis placerat urna erat et lorem. Phasellus inter dum turpis vestibulum ligula varius sit amet ultricies massa vulputate. Morbis vehicula, velit a faucibus cursus, turpis magna mattis mi, in ultrices totor nibh eu dui. Nam at ipsum in urna convallis accumsan. Nullam at
					
            </p>
            <form action="../index.aspx" method="post">
                <select>
                    <option>Select Qty.</option>
                </select>
                <input type="submit" value="Add to Cart" class="btn-cart">
                <input type="submit" value="Read news">
            </form>
        </div>
    </div>
    <div class="comment">
        <div class="write_comment">
            <div class="title">
                <h2>Comment user</h2>
            </div>
            <form runat="server">
                <table style="width: 100%;">
                    <tbody>
                        <tr>
                            <td><span id="ContentPlaceHolder1_Label1">Nick Name</span></td>
                            <td>
                                <input name="ctl00$ContentPlaceHolder1$TextBox4" type="text" id="ContentPlaceHolder1_TextBox4" style="width: 215px;"></td>

                        </tr>
                        <tr>
                            <td><span id="ContentPlaceHolder1_Label2">Mail</span></td>
                            <td>
                                <input name="ctl00$ContentPlaceHolder1$TextBox1" type="text" id="ContentPlaceHolder1_TextBox1" style="width: 215px;"></td>

                        </tr>
                        <tr>
                            <td><span id="ContentPlaceHolder1_Label3">Comment</span></td>
                            <td>
                                <textarea name="ctl00$ContentPlaceHolder1$TextBox3" rows="2" cols="20" id="ContentPlaceHolder1_TextBox3" style="width: 215px; height: 50px;"></textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input style="background-color: #e5b614;color: #fcffff;" type="submit" name="ctl00$ContentPlaceHolder1$Button1" value="Send" id="ContentPlaceHolder1_Button1">
                                <input  type="submit" name="ctl00$ContentPlaceHolder1$Button2" value="Cancel" id="ContentPlaceHolder1_Button2"></td>
                        </tr>

                    </tbody>
                </table>
            </form>
        </div>
        <div class="read_comment">
            <div class="title">
                <h2>Alls comment user</h2>
            </div>
            <div class="info_comment">
                <div class="avatar">123</div>
                <div class="user">
                    <h3>Giá cả rất tốt</h3>
                    <p>Tôi rất thích sản phẩm này</p>
                </div>
            </div>
            <div class="info_comment">
                <div class="avatar">123</div>
                <div class="user">
                    <h3>Dũng mãi không hết rất tốt</h3>
                    <p>Tôi rất thích sản phẩm này</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

