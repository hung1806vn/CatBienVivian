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
			<li><a href="index.html"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
			<li>Single Page</li>
		</ul>
	</div>
</div>
<!-- //breadcrumbs -->

<!-- single -->
<div class="single">
	<div class="container">
		<div class="col-md-4 single-left">
			<div class="flexslider">
				<ul class="slides">
					<c:forEach var="image" items="${images}">
						<li data-thumb="${image.url }">
							<div class="thumb-image">
								<img src="${image.url }" data-imagezoom="true"
									class="img-responsive">
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- flixslider -->
			<script defer src="<%=request.getContextPath()%>/js/jquery.flexslider.js"></script>
			<link rel="stylesheet" href="<%=request.getContextPath()%>/css/flexslider.css" type="text/css"
				media="screen" />
			<script>
				// Can also be used with $(document).ready()
				$(window).load(function() {
					$('.flexslider').flexslider({
						animation : "slide",
						controlNav : "thumbnails"
					});
				});
			</script>
			<!-- flixslider -->
			<!-- zooming-effect -->
			<script src="<%=request.getContextPath()%>/js/imagezoom.js"></script>
			<!-- //zooming-effect -->
		</div>
		<div class="col-md-8 single-right">
			<h3>${clothes.clothesName}</h3>
			<div class="description">
				<h5>
					<i>Description</i>
				</h5>
				<p>${clothes.clothesDescription}</p>
			</div>
			<div class="color-quality">
				<div class="color-quality-left">
					<h5>Color :</h5>
					<ul>
						<li><a href="#"><span></span>Red</a></li>
						<li><a href="#" class="brown"><span></span>Yellow</a></li>
						<li><a href="#" class="purple"><span></span>Purple</a></li>
						<li><a href="#" class="gray"><span></span>Violet</a></li>
					</ul>
				</div>
				<div class="color-quality-right">
					<h5>Quality :</h5>
					<div class="quantity">
						<div class="quantity-select">
							<div class="entry value-minus1">&nbsp;</div>
							<div class="entry value1">
								<span>1</span>
							</div>
							<div class="entry value-plus1 active">&nbsp;</div>
						</div>
					</div>
					<!--quantity-->
					<script>
						$('.value-plus1').on(
								'click',
								function() {
									var divUpd = $(this).parent().find(
											'.value1'), newVal = parseInt(
											divUpd.text(), 10) + 1;
									divUpd.text(newVal);
								});

						$('.value-minus1').on(
								'click',
								function() {
									var divUpd = $(this).parent().find(
											'.value1'), newVal = parseInt(
											divUpd.text(), 10) - 1;
									if (newVal >= 1)
										divUpd.text(newVal);
								});
					</script>
					<!--quantity-->

				</div>
				<div class="clearfix"></div>
			</div>
			<div class="simpleCart_shelfItem">
				<p>
					<!-- <span>$320</span> -->
					<i class="item_price">${clothes.clothesPrice }</i>
				</p>
				<p>
					<a class="item_add" href="#">Add to cart</a>
				</p>
			</div>

		</div>
		<div class="clearfix"></div>
	</div>
</div>


<%@ include file="footer.jsp"%>