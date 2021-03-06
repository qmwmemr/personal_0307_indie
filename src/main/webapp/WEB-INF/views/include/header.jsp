<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Indie & Zones ♪</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="<c:url value='site.webmanifest'/>">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/img/favicon.png'/>">

<!-- CSS here -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/flaticon.css'/>">
<link rel="stylesheet" href="<c:url value='/css/slicknav.css'/>">
<link rel="stylesheet" href="<c:url value='/css/animate.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/magnific-popup.css'/>">
<link rel="stylesheet"
	href="<c:url value='/css/fontawesome-all.min.css'/>">
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
					<img src="<c:url value='/img/logo/logo5.png'/>" alt="">
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
							<a href="/hp/home"><img
								src="<c:url value='/img/logo/logo5.png'/>" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="/hp/home">메인</a></li>
									<li class="hot"><a href="/board/random">랜덤</a></li>
									<li><a href="/board/list">게시판</a></li>
									<c:if test="${login == null }">
										<li><a href="/hp/login">로그인</a></li>
									</c:if>
									<c:if test="${login != null }">
										<li><a href="/hp/myPage">마이페이지</a></li>
										<li><a href="/user/logout">로그아웃</a></li>
									</c:if>

									<li><a href="#">More</a>
										<ul class="submenu">
											<li><a href="/hp/about">소개</a></li>
											<!-- 
											<li><a href="/hp/chart">순위</a></li>
											 -->
											<li><a href="/hp/contact">콘텍트</a></li>
											<!-- 
											<li><a href="/hp/shop"> Product list</a></li>
											<li><a href="/hp/product_details"> Product Details</a></li>
											 -->									
										</ul></li>

									<!-- 
									<li><a href="/hp/blog">Blog</a>
										<ul class="submenu">
											<li><a href="/hp/blog">Blog</a></li>
											<li><a href="/hp/blog-details">Blog Details</a></li>
										</ul></li>
									<li><a href="#">Pages</a>
										<ul class="submenu">

											<li><a href="/board/list">Board</a></li>

											<li><a href="/hp/elements">Element</a></li>
											<li><a href="/hp/confirmation">Confirmation</a></li>
											<li><a href="/hp/checkout">Product Checkout</a></li>
										</ul>
									</li>
									 -->
									 
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="header-right">
							<ul>
								<li>
									<a href="/board/list">
										<span class="flaticon-search"></span>
									</a>
								</li>
								<c:if test="${login == null }">
									<li>
										<a href="/hp/login">
										<span class="flaticon-user">
										</span></a>
									</li>
								</c:if>
								<c:if test="${login != null }">
									<li>
										<a href="/hp/myPage">
										<span class="flaticon-user"></span>
										</a>
									</li>
								</c:if>
								<li><a href="/board/random"><span class="flaticon-heart"></span></a></li>
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