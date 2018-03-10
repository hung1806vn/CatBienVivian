<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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

<!-- banner-bottom -->
<div class="special-deals">
	<div class="container">
		<h2>Sản phẩm</h2>
		<div class="w3agile_special_deals_grids">
			<div class="col-md-6 w3agile_special_deals_grid_left">
				<div class="w3agile_special_deals_grid_left_grid">
					<a href="#" target="_self" title="Đồ bơi Nam"> <img
						class="img-responsive" src="images/DoBoiNam.jpg" alt="Đồ bơi nam"></a>
				</div>
			</div>
			<div class="col-md-6 w3agile_special_deals_grid_left">
				<div class="w3agile_special_deals_grid_left_grid">
					<a href="#" target="_self" title="Đồ bơi nữ"> <img
						class="img-responsive" src="images/DoBoiNu.jpg" alt="Đồ bơi nữ"></a>
				</div>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner-bottom -->


<!-- special-deals -->
<div class="special-deals">
	<div class="container">
		<h2>Special Deals</h2>
		<div class="w3agile_special_deals_grids">
			<div class="col-md-7 w3agile_special_deals_grid_left">
				<div class="w3agile_special_deals_grid_left_grid">
					<img src="images/26.jpg" alt=" " class="img-responsive" />
					<div class="w3agile_special_deals_grid_left_grid_pos1">
						<h5>
							10%<span>Sale</span>
						</h5>
					</div>
					<div class="w3agile_special_deals_grid_left_grid_pos">
						<h4>
							Chúng tôi đề nghị<span>những sản phẩm tốt nhất</span>
						</h4>
					</div>
				</div>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="w3agile_special_deals_grid_left_grid1">
									<img src="images/1.png" alt=" " class="img-responsive" />
									<p>Quis autem vel eum iure reprehenderit qui in ea
										voluptate velit esse quam nihil molestiae consequatur, vel
										illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>
									<h4>Laura</h4>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="w3agile_special_deals_grid_left_grid1">
									<img src="images/2.png" alt=" " class="img-responsive" />
									<p>Quis autem vel eum iure reprehenderit qui in ea
										voluptate velit esse quam nihil molestiae consequatur, vel
										illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>
									<h4>Michael</h4>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="w3agile_special_deals_grid_left_grid1">
									<img src="images/3.png" alt=" " class="img-responsive" />
									<p>Quis autem vel eum iure reprehenderit qui in ea
										voluptate velit esse quam nihil molestiae consequatur, vel
										illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>
									<h4>Rosy</h4>
								</div>
							</div>
						</article>
					</div>
				</div>
				<script src="js/jquery.wmuSlider.js"></script>
				<script>
					$('.example1').wmuSlider();
				</script>
			</div>
			<div class="col-md-5 w3agile_special_deals_grid_right">
				<img src="images/25.jpg" alt=" " class="img-responsive" />
				<div class="w3agile_special_deals_grid_right_pos">
					<h4>
						Women's <span>Special</span>
					</h4>
					<h5>
						save up <span>to</span> 30%
					</h5>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //special-deals -->

<!-- top-brands -->
<div class="top-brands">
	<div class="container">
		<h3>Top Brands</h3>
		<div class="sliderfig">
			<ul id="flexiselDemo1">
				<li><img src="images/4.png" alt=" " class="img-responsive" />
				</li>
				<li><img src="images/5.png" alt=" " class="img-responsive" />
				</li>
				<li><img src="images/6.png" alt=" " class="img-responsive" />
				</li>
				<li><img src="images/7.png" alt=" " class="img-responsive" />
				</li>
				<li><img src="images/46.jpg" alt=" " class="img-responsive" />
				</li>
			</ul>
		</div>
		<script type="text/javascript">
			$(window).load(function() {
				$("#flexiselDemo1").flexisel({
					visibleItems : 4,
					animationSpeed : 1000,
					autoPlay : true,
					autoPlaySpeed : 3000,
					pauseOnHover : true,
					enableResponsiveBreakpoints : true,
					responsiveBreakpoints : {
						portrait : {
							changePoint : 480,
							visibleItems : 1
						},
						landscape : {
							changePoint : 640,
							visibleItems : 2
						},
						tablet : {
							changePoint : 768,
							visibleItems : 3
						}
					}
				});

			});
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	</div>
</div>
<!-- //top-brands -->
<!-- newsletter -->
<div class="newsletter">
	<div class="container">
		<div class="col-md-6 w3agile_newsletter_left">
			<h3>Newsletter</h3>
			<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
		</div>
		<div class="col-md-6 w3agile_newsletter_right">
			<form action="#" method="post">
				<input type="email" name="Email" value="Email"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Email';}" required="">
				<input type="submit" value="" />
			</form>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //newsletter -->
<%@ include file="footer.jsp"%>