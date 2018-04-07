<%@ include file="header.jsp"%>
<%@ page session="true" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Load cart -->
<script type="text/javascript"
	src='<%=contextPath + "/js/loadCartToCheckout.js"%>'></script>
<!-- /load cart -->

<!-- banner -->
<div class="banner10" id="home1">
	<div class="container">
		<h2>Checkout</h2>
	</div>
</div>
<!-- //banner -->

<!-- breadcrumbs -->
<div class="breadcrumb_dress">
	<div class="container">
		<ul>
			<li><a href="index.html"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
			<li>Checkout</li>
		</ul>
	</div>
</div>
<!-- //breadcrumbs -->

<!-- checkout -->

<div id="checkout-id" class="checkout" >
	<div class="container list-cart empty">
		<h3>
			Your shopping cart contains: <span></span>
		</h3>
		
		<div class="checkout-right">
			<table class="timetable_sub">
				<thead>
					<tr>
						<th>SL No.</th>
						<th class="image-product">Product</th>
						<th>Quantity</th>
						<th>Product Name</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody class="cart-data">
					<!-- <tr class="rem1">
						<td class="invert">1</td>
						<td class="invert-image"><a href="single.html"><img
								src="images/j3.jpg" alt=" " class="img-responsive" /></a></td>
						<td class="invert">3</td>
						<td class="invert">Beige solid Chinos</td>
						<td class="invert">$200.00</td>
					</tr> -->
				</tbody>
			</table>
		</div>
		<div class="checkout-left">
			<div class="checkout-left-basket">
				
				<ul>
					<li>Product1 <i>-</i> <span>$200.00 </span></li>
					<li>Product2 <i>-</i> <span>$270.00 </span></li>
					<li>Product3 <i>-</i> <span>$212.00 </span></li>
					<li></li>
					<li>Total <i>-</i> <span>$697.00</span></li>
				</ul>
				<h4><a href="#">Xác nhận thông tin</a></h4>
			</div>
			<div class="checkout-right-basket">
				<a href="products.html"><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue
					Shopping</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<!-- //checkout -->


<%@ include file="footer.jsp"%>