<%@ include file="header.jsp"%>
<%@ page session="true" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- banner -->
<div class="banner" id="home1">
	<div class="container">
		<h3>
			Cát Biển Vivian,<span>Đẹp, Chất lượng</span>
		</h3>
	</div>
</div>
<!-- //banner -->

<!-- breadcrumbs -->
<div class="breadcrumb_dress">
	<div class="container">
		<ul>
			<li><a href="<%=request.getContextPath()%>/home"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span> Trang
					chủ</a> <i>/</i></li>
			<li>Đồ bơi nữ</li>
		</ul>
	</div>
</div>
<!-- //breadcrumbs -->

<!-- Female swim suit -->
<div class="dresses">
	<div class="container">
		<div class="w3ls_dresses_grids">
			<!-- <div class="col-md-4 w3ls_dresses_grid_left">

				<div class="w3ls_dresses_grid_left_grid">
					<h3>Color</h3>
					<div class="w3ls_dresses_grid_left_grid_sub">
						<div class="ecommerce_color">
							<ul>
								<li><a href="#"><i></i> Red(5)</a></li>
								<li><a href="#"><i></i> Brown(2)</a></li>
								<li><a href="#"><i></i> Yellow(3)</a></li>
								<li><a href="#"><i></i> Violet(6)</a></li>
								<li><a href="#"><i></i> Orange(2)</a></li>
								<li><a href="#"><i></i> Blue(1)</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="w3ls_dresses_grid_left_grid">
					<h3>Size</h3>
					<div class="w3ls_dresses_grid_left_grid_sub">
						<div class="ecommerce_color ecommerce_size">
							<ul>
								<li><a href="#">Medium</a></li>
								<li><a href="#">Large</a></li>
								<li><a href="#">Extra Large</a></li>
								<li><a href="#">Small</a></li>
							</ul>
						</div>
					</div>
				</div>

			</div> -->
			<div class="col-md-12 w3ls_dresses_grid_right">

				<div class="w3ls_dresses_grid_right_grid2">
					<div class="w3ls_dresses_grid_right_grid2_left">
						<h3>Showing Results: ${countSwimSuits}</h3>
					</div>
					<div class="w3ls_dresses_grid_right_grid2_right">
						<select name="select_item "
							class="select_item type-regular price-sorting">
							<option selected="selected">Default sorting</option>
							<option value="l2h">Sort by price: low to high</option>
							<option value="h2l">Sort by price: high to low</option>
						</select>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="w3ls_dresses_grid_right_grid3 products-grid">
					<c:forEach var="swimsuit" items="${femaleSwimSuits}">
						<div data-sid="${swimsuit.clothesPrice}"
							class="col-md-4 products agileinfo_new_products_grid agileinfo_new_products_grid_dresses"
							data-price="${swimsuit.clothesPrice }">
							<div class="my_ecommerce_tab_left dresses_grid">
								
								<div>
									<img src='${swimsuit.clothesImages[0].url}'
										alt=" " class="img-responsive" />
								</div>
								<h5>
									<a href="<%=contextPath%>/shop/detail/${swimsuit.clothesID}.action">${swimsuit.clothesName }</a>
								</h5>
								<div class="simpleCart_shelfItem">
									<p>
										<!-- <span>$231</span> -->
										<i class="item_price">${swimsuit.clothesPrice }</i>
									</p>
									<p>
										<a class="item_add cd-add-to-cart" data-price="${swimsuit.clothesPrice }"
										data-id="${swimsuit.clothesID}" data-img="${swimsuit.clothesImages[0].url}" data-url="<%=contextPath%>/shop/detail/${swimsuit.clothesID}.action"
										data-quantity="1" data-name="${swimsuit.clothesName }"
										 href="#">Add to cart</a>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<script type="text/javascript"
	src='<%=contextPath + "/js/sortPrice.js"%>'></script>
<%@ include file="footer.jsp"%>