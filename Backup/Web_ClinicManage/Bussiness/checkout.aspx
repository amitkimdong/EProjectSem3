﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Bussiness/MasterPageBussiness.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="Bussiness_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="checkout">
					<h4><span>Checkout</span></h4>
					<table>
						<thead>
							<tr>
								<th>Order no. 0017893547</th>
								<th>Quantity</th>
								<th>Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><img style="width: 200px;height: 145px;" src="product/medical/medical1.jpg" alt="Thumbnail"> <b>Hukbalahap Boots</b>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis cursus gravida. Suspendisse ut ligula tristique velit blandit blandit vel sit amet ipsum. Nam accumsan turpid id mauris fermentum
									</p></td>
								<td><a href="checkout.aspx" class="minus"></a> <a href="checkout.aspx" class="plus"></a>
									<input type="text" value="1" class="txtfield"></td>
								<td class="last"><div>
										$8.50 <a href="checkout.aspx">Delete</a>
									</div></td>
							</tr>
                            <tr>
								<td><img style="width: 200px;height: 145px;" src="product/medical/medical1.jpg" alt="Thumbnail"> <b>Hukbalahap Boots</b>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis cursus gravida. Suspendisse ut ligula tristique velit blandit blandit vel sit amet ipsum. Nam accumsan turpid id mauris fermentum
									</p></td>
								<td><a href="checkout.aspx" class="minus"></a> <a href="checkout.aspx" class="plus"></a>
									<input type="text" value="1" class="txtfield"></td>
								<td class="last"><div>
										$8.50 <a href="checkout.aspx">Delete</a>
									</div></td>
							</tr>
                            <tr>
								<td><img style="width: 200px;height: 145px;" src="product/medical/medical1.jpg" alt="Thumbnail"> <b>Hukbalahap Boots</b>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis cursus gravida. Suspendisse ut ligula tristique velit blandit blandit vel sit amet ipsum. Nam accumsan turpid id mauris fermentum
									</p></td>
								<td><a href="checkout.aspx" class="minus"></a> <a href="checkout.aspx" class="plus"></a>
									<input type="text" value="1" class="txtfield"></td>
								<td class="last"><div>
										$8.50 <a href="checkout.aspx">Delete</a>
									</div></td>
							</tr>
						</tbody>
					</table>
					<a href="checkout.aspx" class="proceed-btn">Proceed to Checkout</a>
				</div>
</asp:Content>

