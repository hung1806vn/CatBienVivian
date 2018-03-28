<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="true" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Marvel Free Bootstrap Admin Template</title>
<!-- Bootstrap Styles-->
<link href='<%=contextPath + "/adminAssets/css/bootstrap.css"%>'
	rel="stylesheet">
<!-- FontAwesome Styles-->
<link href='<%=contextPath + "/adminAssets/css/font-awesome.css"%>'
	rel="stylesheet">
<!-- Morris Chart Styles-->
<link
	href='<%=contextPath + "/adminAssets/js/morris/morris-0.4.3.min.css"%>'
	rel="stylesheet">
<!-- Custom Styles-->
<link href='<%=contextPath + "/adminAssets/css/custom-styles.css"%>'
	rel="stylesheet">
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link
	href='<%=contextPath + "/adminAssets/js/dataTables/dataTables.bootstrap.css"%>'
	rel="stylesheet">
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><strong>Cát Biển
						Vivian</strong></a>

			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 min</span>
								</div>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>

						<li><a href="javascript:formSubmit()"><i
								class="fa fa-sign-out fa-fw"></i> Logout</a></li>
						<c:url value="/logout" var="logoutUrl" />
						<form action="${logoutUrl }" method="post" id="logoutForm">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="active-menu"
						href="<%=request.getContextPath()%>/admin"><i
							class="fa fa-dashboard"></i> Dashboard</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/swimsuits"><i
							class="fa fa-desktop"></i> Đồ bơi</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/swimsuits"><i
							class="fa fa-desktop"></i> Clothes</a></li>

				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->