<%@ Page Title="" Language="C#" MasterPageFile="~/Bussiness/MasterPageBussiness.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Bussiness_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="product">
					<div class="section">
						<ul>
							<li>
								<a href="product.aspx"><img src="product/medical/.jpg" alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.aspx"><img src="product/medical/.jpg" alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.aspx"><img src="product/medical/.jpg" alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.aspx"><img src="product/medical/.jpg" alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.aspx"><img src="product/medical/.jpg" alt="thumbnail"></a>
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
							<input type="submit" value="Add to Wishlist">
						</form>
					</div>
				</div>
</asp:Content>

