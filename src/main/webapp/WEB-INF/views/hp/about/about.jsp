<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

    <main>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>About Us</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!-- About Details Start -->
        <div class="about-details section-padding30">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-1 col-lg-8">
                        <div class="about-details-cap mb-50">
                            <h4>My Mission</h4>
                            <p>
                            	개인적으로 인디음악을 매우 좋아하며 <br>
                            	음악 특성상 홍보나 추천에 어려움이 있다는 것을 알기에 <br>
                            	"서로 좋아하는 노래를 추천해보자!" 라는 취지를 담은 사이트입니다. <br>
                            </p>
                            <p>
                            	Java 8, Jsp, Spring framework5 를 사용했습니다. 
                            </p>
                        </div>

                        <div class="about-details-cap mb-50">
                            <h4>My Vision</h4>
                            <p>
                            향후 더 추가하고 싶은 부분이 많습니다
                            <p/>
                            <p>
                            1. 랜덤재생 페이지에서 영상이 끝나면 자동적으로 다음으로 넘어가게 하기. <br>
                            2. 메인(홈)화면은 유튜브 영상창이 아니라 썸네일로 뜨게 하기. <br>
                            3. 랭킹 페이지를 만들어서 한달주기로 자동 업데이트 되게 하기 등등..
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About Details End -->
        <!--? Video Area Start -->
        <div class="video-area mb-100">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                    <div class="video-wrap">
                        <div class="play-btn "><a class="popup-video" href="https://www.youtube.com/watch?v=KMc6DyEJp04"><i class="fas fa-play"></i></a></div>
                    </div>
                    </div>
                </div>
                <!-- Arrow -->
                <div class="thumb-content-box">
                    <div class="thumb-content">
                        <h3>Next Video</h3>
                        <a href="#"> <i class="flaticon-arrow"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Video Area End -->
       
    </main>
   <jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>
</html>