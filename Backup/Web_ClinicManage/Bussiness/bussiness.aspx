<%@ Page Title="" Language="C#" MasterPageFile="~/Bussiness/MasterPageBussiness.master" AutoEventWireup="true" CodeFile="bussiness.aspx.cs" Inherits="Bussiness_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="contents">
        <div id="adbox">
            <div id="search">
                <h3>Quick Search</h3>
                <p>
                    Search by Name, by vv
					
                </p>
                <form action="re_search.aspx" method="post" id="form1" runat="server">
                    <ul>
                        <li>
                            <select id="size">
                                <option>Search by </option>
                            </select>
                        </li>
                        <li>
                            <select id="color">
                                <option>Search by </option>
                            </select>
                        </li>
                        <li>
                            <select id="brand">
                                <option>Search by </option>
                            </select>
                        </li>
                        <li>
                            <asp:TextBox ID="txtSeachbyName" runat="server" Text="Search by Name" Width="184px"></asp:TextBox>
                        </li>
                    </ul>
                    <input  type="submit" value="Find !" class="button" >
                </form>
            </div>
            <img src="images/shop-now.jpg" height="355" width="618" alt="Promo">
            <a href="../index.aspx" class="button"></a><span></span>
        </div>
        <div id="main">
            <div id="featured">
                <h4><span>Featured Items</span></h4>
                <ul class="items">
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                </ul>
            </div>
            <div id="sale">
                <h4><span>Sale Items</span></h4>
                <ul class="items">
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                    <li> 
                        <a href="product.aspx">
                            <img style="width: 169px; height: 100px;" src="product/medical/medical1.jpg" alt="Img">
                            Thuốc Cheverlyn Zespax 
                            <span>Hãng sản xuất: ABC Thuốc</span>
                            <span>Loại: Hộp</span><span>Số lượng: 90</span>
                        </a>
                        <br />
                        <a href="#" style="color: red" >Cho vào giỏ hàng | Cart</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

