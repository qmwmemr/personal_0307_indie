<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Watch shop | eCommers</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/img/favicon.ico'/>">

<!-- CSS here -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/flaticon.css'/>">
<link rel="stylesheet" href="<c:url value='/css/slicknav.css'/>">
<link rel="stylesheet" href="<c:url value='/css/animate.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/magnific-popup.css'/>">
<link rel="stylesheet" href="<c:url value='/css/fontawesome-all.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/themify-icons.css'/>">
<link rel="stylesheet" href="<c:url value='/css/slick.css'/>">
<link rel="stylesheet" href="<c:url value='/css/nice-select.css'/>">
<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="<c:url value='/img/logo/logo.png'/>" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div class="menu-wrapper">
						<!-- Logo -->
						<div class="logo">
							<a href="home"><img src="<c:url value='/img/logo/logo.png'/>" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="home">Home</a></li>
									<li><a href="shop">shop</a></li>
									<li><a href="about">about</a></li>
									<li class="hot"><a href="#">Latest</a>
										<ul class="submenu">
											<li><a href="shop"> Product list</a></li>
											<li><a href="product_details"> Product Details</a></li>
										</ul></li>
									<li><a href="blog">Blog</a>
										<ul class="submenu">
											<li><a href="blog">Blog</a></li>
											<li><a href="blog-details">Blog Details</a></li>
										</ul></li>
									<li><a href="#">Pages</a>
										<ul class="submenu">
											<li><a href="login">Login</a></li>
											<li><a href="cart">Cart</a></li>
											<li><a href="elements">Element</a></li>
											<li><a href="confirmation">Confirmation</a></li>
											<li><a href="checkout">Product Checkout</a></li>
										</ul></li>
									<li><a href="contact">Contact</a></li>
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="header-right">
							<ul>
								<li>
									<div class="nav-search search-switch">
										<span class="flaticon-search"></span>
									</div>
								</li>
								<li><a href="login"><span class="flaticon-user"></span></a></li>
								<li><a href="cart"><span
										class="flaticon-shopping-cart"></span></a></li>
							</ul>
						</div>
					</div>
					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
</header>