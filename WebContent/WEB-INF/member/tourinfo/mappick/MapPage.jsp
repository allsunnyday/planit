<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(function() {
	$('#showMapIllustPage').click(function() {
		location.href='<c:url value="/tourinfo/mappick/MapIllust.it"/>';
	});
});
</script>
<div class="container-fluid" style="padding-top: 80px; padding-bottom: 30px; background-color:#47698c;">
	<div class="row">
		<div class="col-md-6" style="background-color: #47698c;">
			<!--지도-->
			<div class="col-md-12">
			<div><h2 style="color: white;">까꿍</h2></div>
				<div style="width: 100%; float: right; padding-bottom: 50px;">
					<!-- <div class="container-fluid" style="margin-top: 60px; width: 75%; height: 40px; float: right;"> -->
					<div id="planmap"
						style="width: 100%; height: 700px; float: inherit; text-align: center;">
						<!-- 다음 map 시작 -->
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>
						<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = { 
					        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 10 // 지도의 확대 레벨 
					    }; 

					var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
					if (navigator.geolocation) {
					    
					    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
					    navigator.geolocation.getCurrentPosition(function(position) {
					        
					        var lat = position.coords.latitude, // 위도
					            lon = position.coords.longitude; // 경도
					        
					        var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
					            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
					        
					        // 마커와 인포윈도우를 표시합니다
					        displayMarker(locPosition, message);
					            
					      });
					    
					} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
					    
					    var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
					        message = 'geolocation을 사용할수 없어요..'
					        
					    displayMarker(locPosition, message);
					}

					// 지도에 마커와 인포윈도우를 표시하는 함수입니다
					function displayMarker(locPosition, message) {

					    // 마커를 생성합니다
					    var marker = new daum.maps.Marker({  
					        map: map, 
					        position: locPosition
					    }); 
					    
					    var iwContent = message, // 인포윈도우에 표시할 내용
					        iwRemoveable = true;

					    // 인포윈도우를 생성합니다
					    var infowindow = new daum.maps.InfoWindow({
					        content : iwContent,
					        removable : iwRemoveable
					    });
					    
					    // 인포윈도우를 마커위에 표시합니다 
					    infowindow.open(map, marker);
					    
					    // 지도 중심좌표를 접속위치로 변경합니다
					    map.setCenter(locPosition);      
					}    
						</script>
						<!-- 다음 map 종료 -->
					</div>
					<!-- </div> -->
				</div>
			</div>
			<button class="btn btn-warning" id="showMapIllustPage">일러스트로 볼래요</button>
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
 
