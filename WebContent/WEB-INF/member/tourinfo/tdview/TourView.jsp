<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="topMenu.jsp" flush="false" />

<!--*******************************************************
	관광 이미지 
***********************************************************  -->
<section class="marketplace-top">
	<div id="market-wrapper">
		<div class="item_image">
			<img data-effect="fade" class="aligncenter" width="90%" height="400"
				src="<c:url value='/main_theme/img/market_single_01.png'/>" alt="">
		</div>
		<!-- end item_image -->
	</div>
</section>
<!--*******************************************************
	관광정보 상세  
***********************************************************  -->
<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="general-title text-center">
				<h3>국립양평치유의 숲</h3>
				<p></p>
				<hr>
			</div>

			<div class="divider"></div>

			<div class="item_details">

				<div class="col-lg-8 col-md-8 col-sm-12">
					<div class="theme_details">
						<div class="details_section">
							<h3>개요</h3>
							<ul>
								<li class="version"><span>위치: 경기도 양평군 양동면 황거길</span></li>

								<li class="release"><span>문의: 031-8097-4581</span></li>

								<li class="designer"><span>이용시간: [당일방문] 09:30~12:00,
										13:30~16:00 <br> * 시설 상황 등에 따라 변동 가능(사전 문의 권장)
								</span></li>
								<li class="designer"><span>쉬는날:연중무휴</span></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- col-lg-3 -->

				<div class="col-lg-4 col-md-4 col-sm-12">
					<div class="theme_details">
						<div class="item_price">
							<!-- <h3>
								<span><small>$</small>450.00</span>
							</h3> -->
						</div>
						<!-- item_price -->
						<hr>
						<div class="buttons" data-target="#myModal">
							<a class="button btn-block large"
								href="https://cafe.naver.com/foresthealingyp">지자체 홈페이지</a> <a
								class="button btn-block large" href="#"> <i
								class="fa fa-pencil"></i>정보 수정
							</a> <a class="button btn-block large" href="#"> <i
								class="fa fa-download"></i> 즐겨찾기 추가
							</a>
						</div>
						<!-- buttons -->
						<hr>
						<div class="rating text-center">
							<i class="fa fa-plain"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-o"></i>
							<p>Users Rating</p>
						</div>
						<!-- rating -->
					</div>
					<!-- theme_details -->
				</div>
				<!-- col-lg-3 -->
				<div class="col-lg-12 col-md-12 col-sm-12">
					<br>
				</div>

				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="theme_details">
						<div class="item-description">

							<p>개요 : 립양평치유의숲은 경기도 양평군 양동면 황거길 262-10 삼각산(538m) 남쪽자락에 위치하여,
								수도권에서 한시간 이내의 뛰어난 접근성을 가지고 있으며, 온열치유실, 명상움막, 무인건강관리시스템 등의 다양한
								치유시설 및 대상별 전문적인 치유프로그램을 제공합니다.</p>
							<hr>
							<p>개장일:</p>
							<hr>
							<p>소요시간:</p>
							<hr>
							<p>등산로:</p>
							<hr>
							<p>야간산행 제한안내:</p>
							<hr>
						</div>
						<!-- item-description -->
					</div>
					<!-- theme_details -->
				</div>
				<!-- col-lg-6 -->
			</div>
			<!-- item_details -->
			<div class="clearfix"></div>
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->


<!-- *****************************************
	관련리뷰 캐러셀
***************************************** -->
<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="clearfix"></div>
			<hr>

			<div class="portfolio-wrapper related_items">
				<h4 class="title">관련 리뷰</h4>

				<div class="container">
				  <div class="carousel">
				    <div class="item a"><img src="../../../images/space.jpg" >A</div>
				    <div class="item b"><img src="../../../images/ppp.png" >B</div>
				    <div class="item c"><img src="../../../images/bg1.jpg" >C</div>
				    <div class="item d"><img src="../../../images/ppp.png" >D</div>
				    <div class="item e"><img src="../../../images/space.jpg" >E</div>
				    <div class="item f"><img src="../../../images/space.jpg" >F</div>
				  </div>
				</div>
					<div class="next">Next</div>
					<div class="prev">Prev</div>


				
				
				
			</div>
			<!-- owl-related -->
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->

<!-- *******************************************
 		지도
************************************************ -->
<section style="background-color: white;">
	<div class="general-title text-center" >
		<h3>지도</h3>
		<p>지도보여줄 곳</p>
		<hr>
	</div>

	<div class="divider"></div>
	<div class="theme_overviews clearfix">
		
<div class="wrapper">
  <div  id="one"><span style="font-size:5em">지도</span></div>
  <div  id="two"><span style="font-size:5em">정보</span></div>
</div>

	</div>
	<!-- theme / Products overview -->

</section>
<style>
#one{
float:left;
width:1000px;
height:700px;
background-color: red;
}
#two{
float:right;
width:300px;
height:700px;
background-color: blue;
}





 #body1 { 
   background: #333; 
   padding: 70px 0; 
   font: 15px/20px Arial, sans-serif; 
 }



.carousel {
   height: 100%; 
   width: 100%; 
  position: static;
  transform-style: preserve-3d;
  transition: transform 1s;
}

.item {
  display: block;
  position: absolute;
  background: #000;
  width: 250px;
  height: 200px;
  line-height: 200px;
  font-size: 5em;
  text-align: center;
  color: #FFF;
  opacity: 0.95;
  border-radius: 10px;
}

.a {
  transform: rotateY(0deg) translateZ(250px);
  background: #ed1c24;
}
.b {
  transform: rotateY(60deg) translateZ(250px);
  background: #0072bc;
}
.c {
  transform: rotateY(120deg) translateZ(250px);
  background: #39b54a;
}
.d {
  transform: rotateY(180deg) translateZ(250px);
  background: #f26522;
}
.e {
  transform: rotateY(240deg) translateZ(250px);
  background: #630460;
} 
.f {
  transform: rotateY(300deg) translateZ(250px);
  background: #8c6239;
}

.next, .prev {
  color: #444;
  position: absolute;
  top: 100px;
  padding: 1em 2em;
  cursor: pointer;
  background: #CCC;
  border-radius: 5px;
  border-top: 1px solid #FFF;
  box-shadow: 0 5px 0 #999;
  transition: box-shadow 0.1s, top 0.1s;
}
.next:hover, .prev:hover { color: #000; }
.next:active, .prev:active {
  top: 104px;
  box-shadow: 0 1px 0 #999;
}
.next { right: 5em; }
.prev { left: 5em; }






</style>
<script>
var carousel = $(".carousel"),
currdeg  = 0;

$(".next").on("click", { d: "n" }, rotate);
$(".prev").on("click", { d: "p" }, rotate);

function rotate(e){
if(e.data.d=="n"){
currdeg = currdeg - 60;
}
if(e.data.d=="p"){
currdeg = currdeg + 60;
}
carousel.css({
"-webkit-transform": "rotateY("+currdeg+"deg)",
"-moz-transform": "rotateY("+currdeg+"deg)",
"-o-transform": "rotateY("+currdeg+"deg)",
"transform": "rotateY("+currdeg+"deg)"
});
}
</script>

