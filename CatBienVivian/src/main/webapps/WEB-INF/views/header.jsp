<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="true" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Cát Biển Vivian shop bán đồ thể dục</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
		
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 

</script>

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700"
	rel="stylesheet">
<!-- //for-mobile-apps -->
<link href='<%=contextPath + "/css/bootstrap.css"%>' rel="stylesheet"
	type="text/css" media="all" />
<link href='<%=contextPath + "/css/style.css"%>' rel="stylesheet"
	type="text/css" media="all" />
<link href='<%=contextPath + "/css/fasthover.css"%>' rel="stylesheet"
	type="text/css" media="all" />
<link href='<%=contextPath + "/css/cartReset.css"%>' rel="stylesheet"
	type="text/css" media="all" />
<link href='<%=contextPath + "/css/cart.css"%>' rel="stylesheet"
	type="text/css" media="all" />
<!-- js -->
<script src='<%=contextPath + "/js/jquery.min.js"%>'></script>
<script type="text/javascript" src='<%=contextPath + "/js/cart.js"%>'></script>
<!-- //js -->
<!-- countdown -->
<link rel="stylesheet"
	href='<%=contextPath + "/css/jquery.countdown.css"%>' />
<!-- //countdown -->

<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript"
	src='<%=contextPath + "/js/bootstrap-3.1.1.min.js"%>'></script>	
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<script language="javascript">
function start(){
	loadItemFromCart();
	loadCart();
}
</script>
<!-- Load cart -->
<script type="text/javascript"
	src='<%=contextPath + "/js/loadCart.js"%>'></script>
<!-- /load cart -->

</head>

<body onload="start()">
	<!-- header -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog"
		aria-labelledby="myModal88" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Don't Wait, Login
						now!</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-12 modal_body_left modal_body_left1"
							style='border-right: 1px dotted #C2C2C2; padding-right: 3em;'>
							<div class="sap_tabs">
								<div id="horizontalTab"
									style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>Đăng
												nhập </span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>Đăng
												ký </span></li>
									</ul>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form name='loginForm' action="<c:url value='/login'/>"
													method='POST'>
													<input name="username" placeholder="Username" type="text"
														required=""> <input name="password"
														placeholder="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" name="login" value="Sign in">
														<input type="hidden" name="${_csrf.parameterName}"
															value="${_csrf.token}" />
													</div>
												</form>
											</div>
										</div>
									</div>

									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">
													<input placeholder="Name" name="Name" type="text"
														required=""> <input placeholder="Email Address"
														name="Email" type="email" required=""> <input
														placeholder="Password" name="Password" type="password"
														required=""> <input placeholder="Confirm Password"
														name="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Create Account" />
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<script src='<%=contextPath + "/js/easyResponsiveTabs.js"%>'
								type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function() {
									$('#horizontalTab').easyResponsiveTabs({
										type : 'default', //Types: default, vertical, accordion           
										width : 'auto', //auto or any width like 600px
										fit : true
									// 100% fit in a container
									});
								});
							</script>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="header">
		<div class="container">
			<div class="w3l_login">
				<a href="#" data-toggle="modal" data-target="#myModal88"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div>
			<div class="w3l_logo">
				<h1>
					<a href="index.html">Cát Biển Vivian<span>Shop đồ thể
							thao</span></a>
				</h1>
			</div>
			<%-- 			<div class="cart box_1">
				<a href="checkout.html">
					<div class="total">
						<span class="simpleCart_total"></span> (<span
							id="simpleCart_quantity" class="simpleCart_quantity"></span>
						items)
					</div> <img src='<%=contextPath + "/images/bag.png"%>' alt="" />
				</a>
				<p>
					<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
				</p>
				<div class="clearfix"></div>
			</div> --%>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<%=contextPath%>/home"
							class="act">Trang chủ</a></li>
						<!-- Mega Menu -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Products <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-6">
										<ul class="multi-column-dropdown">
											<h6>Đồ bơi</h6>
											<li><a href="<%=contextPath%>/shop/maleSwimsuit">Đồ
													bơi cho nam<span>New</span>
											</a></li>
											<li><a href="<%=contextPath%>/shop/femaleSwimsuit">Đồ
													bơi cho nữ </a></li>
											<li><a href="<%=contextPath%>/shop/childrenSwimsuit">Đồ
													bơi cho trẻ em </a></li>
										</ul>
									</div>
									<div class="col-sm-6">
										<ul class="multi-column-dropdown">
											<h6>Đồ thể thao</h6>
											<li><a href="#">Đồ Aerobic</a></li>
											<li><a href="#">Đồ thể dục cổ động</a></li>
											<li><a href="#">Đồ ba lê</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>
						<li><a href="<%=request.getContextPath()%>/about">About
								Us</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Mail Us</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- 	<a href="#0" class="cd-add-to-cart" data-price="25.99">Add To Cart</a> -->
	<div class="cd-cart-container empty">
		<a href="#0" class="cd-cart-trigger"> Cart
			<ul class="count">
				<li>0</li>
				<li>0</li>
			</ul> .count
		</a>

		<div class="cd-cart">
			<div class="wrapper">
				<header>
					<h2>Giỏ hàng</h2>
				</header>
				<div class="body">
					<ul>
					</ul>
				</div>
				<footer>
					<a href="<%=request.getContextPath()%>/checkout" class="checkout btn"><em>Thanh toán - <span>0</span> VNĐ</em></a>
				</footer>
			</div>
		</div>
	</div>
	<!-- //header -->