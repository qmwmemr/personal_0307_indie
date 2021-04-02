<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />


<main>
	<!--? slider Area Start -->
	<div class="slider-area ">
		<div class="slider-active">
			<!-- Single Slider -->
			<div
				class="single-slider slider-height d-flex align-items-center slide-bg">
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
							<div class="hero__caption">
								<h1 data-animation="fadeInLeft" data-delay=".4s"
									data-duration="2000ms">We Love Indie</h1>
								<p data-animation="fadeInLeft" data-delay=".7s"
									data-duration="2000ms">
									<strong>인디</strong><br> 주류를 벗어나 자신만의 노래와 세계를 구축한 <br>
									독창적인 가수 또는 음악 <br>
								</p>


								<!-- Hero-btn -->
								<div class="hero__btn" data-animation="fadeInLeft"
									data-delay=".8s" data-duration="2000ms">
									<c:if test="${login == null }">
										<a href="/hp/login" class="btn hero-btn">로그인</a>
									</c:if>
									<c:if test="${login != null }">
										<a href="/board/list" class="btn hero-btn">게시판</a>
									</c:if>
								</div>


							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 d-none d-sm-block">
							<div class="hero__img" data-animation="bounceIn" data-delay=".4s">
								<img src="<c:url value='/img/hero/micro2.png'/>" alt=""
									class=" heartbeat">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Single Slider -->
			<div
				class="single-slider slider-height d-flex align-items-center slide-bg">
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
							<div class="hero__caption">
								<h1 data-animation="fadeInLeft" data-delay=".4s"
									data-duration="2000ms">Do you like it, too?</h1>
								<p data-animation="fadeInLeft" data-delay=".7s"
									data-duration="2000ms">
									혹시 당신도 인디에 관심이 있다면<br> 저회와 함께 즐겨보실래요?
								</p>

								<!-- Hero-btn -->
								<div class="hero__btn" data-animation="fadeInLeft"
									data-delay=".8s" data-duration="2000ms">
									<c:if test="${login == null }">
										<a href="/hp/signUp" class="btn hero-btn">회원가입</a>
									</c:if>
									<c:if test="${login != null }">
										<a href="/board/random" class="btn hero-btn">랜덤음악</a>
									</c:if>
								</div>


							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 d-none d-sm-block">
							<div class="hero__img" data-animation="bounceIn" data-delay=".4s">
								<img src="<c:url value='/img/hero/micro2.png'/>" alt=""
									class=" heartbeat">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End-->
	<!-- ? New Product Start -->
	<section class="new-product-area section-padding30">
		<div class="container">
			<!-- Section tittle -->
			<div class="row">
				<div class="col-xl-12">
					<div class="section-tittle mb-70">
						<h2>Best Song</h2>
					</div>
				</div>
			</div>


			<div class="row">
				<c:forEach var="b" items="${top3}">
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
						<div class="single-new-pro mb-30 text-center">
							<div class="product-img">
								<iframe width="360" height="450" src="${b.board_link }"
									frameborder="0"
									allow="accelerometer; autoplay; 
													clipboard-write; encrypted-media; 
													gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>
							<div class="product-caption">
								<h3>
									<a href="<c:url value='/board/content/${b.board_no}'/>">${b.board_title}</a>
								</h3>
								<span> <a
									href="<c:url value='/board/list?keyword=${b.board_singer}&condition=singer'/>"
									style="color: black">${b.board_singer}</a>
								</span>
							</div>
						</div>
					</div>
				</c:forEach>

				<!-- 원래 있던거 
				<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
					<div class="single-new-pro mb-30 text-center">
						<div class="product-img">
							<img src="<c:url value='/img/gallery/구름.jpg'/>" alt="">
						</div>
						<div class="product-caption">
							<h3>
								<a href="product_details.html">Cloud</a>
							</h3>
							<span>As Usual As Today</span>
						</div>
					</div>
				</div>
			-->

			</div>
	</section>
	<!--  New Product End -->
	<!--? Gallery Area Start -->
	<div class="gallery-area">
		<div class="container-fluid p-0 fix">
			<div class="row">
				<div class="col-xl-6 col-lg-4 col-md-6 col-sm-6">
					<div class="single-gallery mb-30">
						<div class="gallery-img big-img"
							style="background-image: url(<c:url value='/img/gallery/hans.jpg'/>);"></div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
					<div class="single-gallery mb-30">
						<div class="gallery-img big-img"
							style="background-image: url(<c:url value='/img/gallery/sofie.jpg'/>);"></div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-4 col-md-12">
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-6 col-sm-6">
							<div class="single-gallery mb-30">
								<div class="gallery-img small-img"
									style="background-image: url(<c:url value='/img/gallery/danie.jpg'/>);"></div>
							</div>
						</div>
						<div class="col-xl-12 col-lg-12  col-md-6 col-sm-6">
							<div class="single-gallery mb-30">
								<div class="gallery-img small-img"
									style="background-image: url(<c:url value='/img/gallery/gl.jpg'/>);"></div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Gallery Area End -->


	<!--? Popular Items Start -->
	<div class="popular-items">
		<div class="container">
			<!-- Section tittle -->
			<div class="row justify-content-center">
				<div class="col-xl-7 col-lg-8 col-md-10">
					<div class="section-tittle mb-70 text-center">
						<h2>Popular Songs</h2>
						<p>회원님들이 추천한 곡들 중에서 인기가 많은 노래들입니다.</p>
					</div>
				</div>
			</div>
			<div class="row">

				<c:forEach var="c" items="${top10}">
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
						<div class="single-popular-items mb-50 text-center">
							<div class="popular-img">
								<iframe width="480" height="505" src="${c.board_link }"
									frameborder="0"
									allow="accelerometer; autoplay; 
													clipboard-write; encrypted-media; 
													gyroscope; picture-in-picture"
									allowfullscreen></iframe>
								<div class="img-cap">
									<span
										onclick="location.href='<c:url value="/board/content/${c.board_no}"/>'">
										<a>게시글 보러가기</a>
									</span>
								</div>
								<div class="favorit-items">
									<span class="flaticon-heart">${c.board_cnt }</span>
								</div>
							</div>
							<div class="popular-caption">
								<h3>
									<a>${c.board_title}</a>
								</h3>
								<span>${c.board_singer}</span>
							</div>
						</div>
					</div>
				</c:forEach>


				<!-- Button -->
				<div class="row justify-content-center" align="center">
					<div class="room-btn pt-70">
						<a href="catagori.html" class="btn view-btn1"> View More</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Popular Items End -->
		<!--? Video Area Start -->
		<div class="video-area">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-lg-12">
						<div class="video-wrap">
							<div class="play-btn ">
								<a class="popup-video"
									href="https://www.youtube.com/watch?v=nQVZtfflCyk"><i
									class="fas fa-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!-- Arrow -->
				<div class="thumb-content-box">
					<div class="thumb-content">
						<h3>Square - 백예린</h3>
					</div>
				</div>
			</div>
		</div>
		<!-- Video Area End -->
		<!--? Watch Choice  Start-->
		<div class="watch-area section-padding30">
			<div class="section-tittle mb-70 text-center">
						<h2>Recommend Songs</h2>
						<p>이번 주 추천하는 곡입니다</p>
					</div>
			<div class="container">
				<div
					class="row align-items-center justify-content-between padding-130">
					<div class="col-lg-5 col-md-6">
						<div class="watch-details mb-40">
							<h2>사랑하는 책</h2>
							<h4 align="right">은교</h4>
							<p>책 속의 세상 안에 들어가<br> 
							그를 만나게 된다면 <br>
							나는 무엇을 말할 수 가 있을까 <br>
							<br>
							눈조차 마주칠 용기가 <br>
							내 안에 뿜어져 나올런지 <br>
							그림조차 그려지지가 않아<br>
							<br>
							- 사랑하는 책 가사 中 -
							</p>
							
							<a href="/board/content/13" class="btn">Listen Now</a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-10">
						<div class="choice-watch-img mb-40">
							<img src="<c:url value='/img/gallery/Eunkyo.jpg'/>" alt="">
						</div>
					</div>
				</div>
				<div class="row align-items-center justify-content-between">
					<div class="col-lg-6 col-md-6 col-sm-10">
						<div class="choice-watch-img mb-40">
							<img src="<c:url value='/img/gallery/31.jpg'/>" alt="">
						</div>
					</div>
					<div class="col-lg-5 col-md-6">
						<div class="watch-details mb-40">
							<h2>31</h2>
							<h3 align="right"> 카더가든</h3>
							<p>
							휘어지는 가지마다 수놓았던<br>
							검은 미련 같아라<br>
							헤프던 맘들 모아 모두<br>
							내 잘못이라고 말할 수만 있다면<br>
							모질 게<br>
							<br>
							날 떠나도 떠나지 않는 사람들<br>
							이렇게 간직하길 그래도<br>
							시간 지나 나는 여기 있을 거야<br>
							아무 일도 없었던 것처럼<br>
							<br>
							- 31 가사 中 -
							</p>
							<a href="/board/content/1" class="btn">Listen Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Watch Choice  End-->
		
</main>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>
</html>