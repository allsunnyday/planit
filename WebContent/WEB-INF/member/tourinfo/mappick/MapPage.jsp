<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid" style="padding-top: 80px">
	<div class="row">
		<div class="col-md-6" style="background-color: #47698c;">
			<!--지도-->
			<div class="col-md-12">
			<div><h2>안녕</h2></div>
				<div style="width: 100%; float: right; padding-bottom: 50px;">
					<!-- <div class="container-fluid" style="margin-top: 60px; width: 75%; height: 40px; float: right;"> -->
					<div id="planmap"
						style="width: 100%; height: 700px; float: inherit; text-align: center;">
						<!-- 다음 map 시작 -->
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>
						<script>
							var container = document.getElementById('planmap'); //지도를 담을 영역의 DOM 레퍼런스
							var options = { //지도를 생성할 때 필요한 기본 옵션
								center : new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
								level : 3
							//지도의 레벨(확대, 축소 정도)
							};
							var map = new daum.maps.Map(container, options);
						</script>
						<!-- 다음 map 종료 -->
					</div>
					<!-- </div> -->
				</div>
			</div>
		</div>
		<!--  관광지별 추천		-->
 <div class="container clearfix col-md-6"  style="background-color: #47698c;">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
<!-- title -->
			<div class="general-title text-center">
				<h3 style="color: white;">POPULAR ITEMS</h3>
				<p style="color: white;"><a href="<c:url value='/mypage/partner/Reservation_P.it'/>">베스트 관광지</a></p>
				<hr>
			</div>
				<!-- carousel start -->
				<div id="mycarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#mycarousel" data-slide-to="0" class="avtive"></li>
						<li data-target="#mycarousel" data-slide-to="1"></li>
						<!-- <li data-target="#mycarousel" data-slide-to="2"></li> -->
					</ol>
					<!-- wrapper for slides -->
					<div class="carousel-inner">
						<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
						<div class="item active">
							<div id="popularitems" class="">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
										
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>
							</div>
						</div>
						<!-- end carousel slide 1   -->
						<div class="item ">
							<div id="popularitems" class="">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>
							</div>
						</div>

					</div>
					<!-- end wrapper for slides -->
					<a class="left carousel-control" href="#mycarousel"
						data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#mycarousel"
						data-slide="next"> <span class="icon-next"></span>
					</a>
				</div>
				<!-- end carousel container-->
				<!-- title -->
				<div class="general-title text-center">
					<p style="color: white;"><a href="<c:url value='/mypage/partner/Request_P.it'/>">컨텐츠별 베스트</a></p>
					<hr>
				</div>
				<!-- carousel start -->
				<div id="mycarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#mycarousel" data-slide-to="0" class="avtive"></li>
						<li data-target="#mycarousel" data-slide-to="1"></li>
						<!-- <li data-target="#mycarousel" data-slide-to="2"></li> -->
					</ol>
					<!-- wrapper for slides -->
					<div class="carousel-inner">
						<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
						<div class="item active">
							<div id="popularitems" class="">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>
							</div>
						</div>
						<!-- end carousel slide 1   -->
						<div class="item ">
							<div id="popularitems" class="">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>
							</div>
						</div>

					</div>
					<!-- end wrapper for slides -->
					<a class="left carousel-control" href="#mycarousel"
						data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#mycarousel"
						data-slide="next"> <span class="icon-next"></span>
					</a>
				</div>
				<!-- end carousel container-->
<!-- title -->
				<div class="general-title text-center">
					<p style="color: white;">베스트 리뷰</p>
					<hr>
				</div>
				<!-- carousel start -->
				<div id="mycarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#mycarousel" data-slide-to="0" class="avtive"></li>
						<li data-target="#mycarousel" data-slide-to="1"></li>
						<!-- <li data-target="#mycarousel" data-slide-to="2"></li> -->
					</ol>
					<!-- wrapper for slides -->
					<div class="carousel-inner">
						<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
						<div class="item active">
							<div id="popularitems" class="">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>
							</div>
						</div>
						<!-- end carousel slide 1   -->
						<div class="item ">
							<div id="popularitems" class="">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>"
										alt="">
								</div>
							</div>
						</div>

					</div>
					<!-- end wrapper for slides -->
					<a class="left carousel-control" href="#mycarousel"
						data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#mycarousel"
						data-slide="next"> <span class="icon-next"></span>
					</a>
				</div>
				<!-- end carousel container-->
		</div>
		<!-- end content -->
	</div>
	<!-- end carousel  -->
		

       

	</div>
</div>
 
