<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
/* 
.description:before {
	content: "";
	height: 100%;
} */
/* 
************************************************************************************************************************************************
지역선택 아이콘 
***********************************************************************************************************************************************
 */
#description_icon {
	width: 200px;
	height: 97px;
	border: none;
	background:
		url('http://tong.visitkorea.or.kr/img/vk/kor/bz15/travel_plus/find_title_1.png')
		no-repeat;
	top: 10px;
	left: 30px;
}
/* -------------------------------- */
.mapIllust li {
	position: absolute;
}

/* 
************************************************************************************************************************************************
지도 영역별 클릭 버튼
***********************************************************************************************************************************************
 */

/* -------------------------------- */
/* 
************************************************************************************************************************************************
지도 PNG
***********************************************************************************************************************************************
 */
 .icon1{
 	left:25%;
 	top:15%
 }
 .icon2{
 	left:32%; 
 	top: 17%
 }
 
.icon3 { /* 경기 */
	left: 42%;
	top: 23%;
}

.icon4 { /* 강원 */
	left:50%;
	top: 13%;
}

.icon5 { /* 충남 */
	left: 25%;
	top: 37%;
}

.icon6 { /* 세종 */
	left: 32%;
	top: 34%;
}

.icon17 { /* 충북 */
	left: 42%;
	top: 30%;
}

.icon7 { /* 대전 */
	left: 37%;
	top: 40%;
}

.icon8 {/* 경북 */
	left: 55%;
	top: 40%;
}

.icon9 {/* 전북 */
	left: 33%;
	top: 54%;
}

.icon10 {/*대구  */
	left: 56%;
	top: 52%;
}

.icon11 {/* 광주 */
	left: 30%;
	top: 67%;
}

.icon12 {/* 전남 */
	left: 28%;
	top: 75%;
}

.icon13 {/*  경남*/
	left: 46%;
	top: 62%;
}

.icon14 {/* 울산 */
	left: 61%;
	top: 60%;
}

.icon15 { /* 부산 */
	left: 57%;
	top: 69%;
}

.icon16 { /* 제주 */
	left: 24%;
	top: 90%;
}
 
 
.mapIllust {
	background:
		url('http://tong.visitkorea.or.kr/img/vk/kor/bz15/travel_plus/find_map.png')
		no-repeat;
	background-size: 400px 600px;
	background-position: center;
	
}

.mapIllust ul {
	position: relative;
	width: 100%;
	height: 600px;
	list-style: none;
	list-style-image: none;
}

.mapIllust button {
	color: white;
	line-height: normal;
	border: 0;
	letter-spacing: normal;
	word-spacing: normal;
}

.go-button {
	/* display: block; */
	background: transparent;
	border-width: 0px;
	cursor: pointer;
	font-size: 20px;
}


</style>
<script>
$(function() {
	$('#showMapPage').click(function() {
		location.href='<c:url value="/tourinfo/mappick/MapPage.it"/>';
	});
});
</script>

<div class="container-fluid" style="padding-top: 70px; background-color:#47698c; ">
	<div class="row">
		<div class="col-md-5" style="background-color: #47698c;  padding-bottom: 30px;">
			<!-- 지역선택 아이콘 -->
			<div class="col-md-12">
				<div id="description_icon" style="margin-top: 30px"></div>
			</div>
			<!--지도-->
			<div class="col-md-12">
				<form action="" name="searchForm">
					<div class="lcate"
						style="overflow: hidden; background-color: #47698c;">
						<div class="mapIllust" style="position:relative">
							<ul id="setHiddenButtons1" style="position:relative">
								<li class="icon1"><button value="2" name="areaCode" type="button" class="go-button">인천</button></li>
								<li class="icon2"><button value="1" name="areaCode" type="button" class="go-button ov">서울</button></li>
								<li class="icon3"><button value="31" name="areaCode" type="button" class="go-button">경기</button></li>
								<li class="icon4"><button value="32" name="areaCode" type="button" class="go-button">강원</button></li>
								<li class="icon5"><button value="34" name="areaCode" type="button" class="go-button">충남</button></li>
								<li class="icon6"><button value="8" name="areaCode" type="button" class="go-button">세종</button></li>
								<li class="icon17"><button value="33" name="areaCode" type="button" class="go-button">충북</button></li>
								<li class="icon7"><button value="3" name="areaCode" type="button" class="go-button">대전</button></li>
								<li class="icon8"><button value="35" name="areaCode" type="button" class="go-button">경북</button></li>
								<li class="icon9"><button value="37" name="areaCode" type="button" class="go-button">전북</button></li>
								<li class="icon10"><button value="4" name="areaCode" type="button" class="go-button">대구</button></li>
								<li class="icon11"><button value="5" name="areaCode" type="button" class="go-button">광주</button></li>
								<li class="icon12"><button value="38" name="areaCode" type="button" class="go-button">전남</button></li>
								<li class="icon13"><button value="36" name="areaCode" type="button" class="go-button">경남</button></li>
								<li class="icon14"><button value="7" name="areaCode" type="button" class="go-button">울산</button></li>
								<li class="icon15"><button value="6" name="areaCode" type="button" class="go-button">부산</button></li>
								<li class="icon16"><button value="39" name="areaCode" type="button" class="go-button">제주</button></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
			<button class="btn btn-warning" id="showMapPage">지도로 볼래요</button>
		</div>
		
		<!--  관광지별 추천		-->
 <div class="container clearfix col-md-7"  style="background-color: #47698c;">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
<!-- title -->
			<div class="general-title text-center">
				<h3 style="color: white;">POPULAR ITEMS</h3>
				<p style="color: white; font-style: normal;"><a href="<c:url value='/mypage/partner/Reservation_P.it'/>">베스트 관광지</a></p>
				<button class="btn btn-warning" style="text-align: ">+</button>
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
					<p style="color: white; font-style: normal;"><a href="<c:url value='/mypage/partner/Request_P.it'/>">컨텐츠별 베스트</a></p>
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
					<p style="color: white; font-style: normal;">베스트 리뷰</p>
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
 
