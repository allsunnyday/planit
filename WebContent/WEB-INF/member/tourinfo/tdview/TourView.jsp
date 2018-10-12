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
							<a class="button btn-block large" href="https://cafe.naver.com/foresthealingyp">지자체 홈페이지</a> 
							<a class="button btn-block large" href="#"> 
							<i class="fa fa-pencil"></i>정보 수정</a>
						    <a class="button btn-block large" href="#"> 
						    <i class="fa fa-download"></i> 즐겨찾기 추가
						    <a  class="button btn-block large" href="#target"> 
						    <i class="fa fa-map"></i> 지도
						    
							</a>
						</div>
						<!-- buttons -->
						<hr>
						<div class="rating text-center">
							<i class="fa fa-star-o"></i> 
							<p>찜찜찜찜찜</p>
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
	<section style="background:white;">
	<div class="general-title text-center" >
		<h3>보고계신 여행지와 관련된 </h3>
		<p>다른관광지들!</p>
		<hr>
	</div>
	<div class="a_1">
		<input checked id="one" name="multiples" type="radio" value="1">
        <label for="one">1</label>
        
		<input id="two" name="multiples" type="radio" value="2">
        <label for="two">2</label>

        <input id="three" name="multiples" type="radio" value="3">
        <label for="three">3</label>

        <input id="four" name="multiples" type="radio" value="4">
        <label for="four">4</label>

        <input id="five" name="multiples" type="radio" value="5">
        <label for="five">5</label>

        <input id="six" name="multiples" type="radio" value="6">
        <label for="six">6</label>

        <input id="seven" name="multiples" type="radio" value="7">
        <label for="seven">7</label>

        <input id="eight" name="multiples" type="radio" value="8">
        <label for="eight">8</label>

		<div  class="a_1_1">
			<div class="carousel">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 1">
				<img src="<c:url value='/images/list/333.jpg'/>" alt="Landscape 2">
				<img src="<c:url value='/images/list/bibim.jpg'/>" alt="Landscape 3">
				<img src="<c:url value='/images/list/andong.jpg'/>" alt="Landscape 4">
				<img src="<c:url value='/images/list/forest.jpg'/>" alt="Landscape 5">
				<img src="<c:url value='/images/list/hotel.PNG'/>" alt="Landscape 6">
				<img src="<c:url value='/images/list/motel.PNG'/>" alt="Landscape 7">
				<img src="<c:url value='/images/list/pen.PNG'/>" alt="Landscape 8">
			</div>
		</div>

	</div>
</section>
<style>
 .a_1 {
		width: 500px;
		margin: 50px auto;
		text-align: center;
	}

	figure {
		margin: 0;
	}

	.a_1_1 {
		width: 500px;
		height: 300px;
		text-align: left;
		margin:80px auto;
		-webkit-perspective: 1000px;
		-webkit-perspective-origin: 50% -25%;
	}

		.carousel {
			-webkit-transform-style: preserve-3d;
			-webkit-transform: translateZ(-540px);
			position: relative;
			margin: 0;
			width: 500px;
			height: 300px;
			-webkit-transition: 1s;
		}

		.carousel img {
				position: absolute;
				border: 15px solid rgba(0, 0, 0, .8);
				opacity: .5;
				-webkit-transition: 1s;
        width: 500px;
        height: 300px;
        background:#ccc;
			}

				
				.carousel img:nth-child(1) { -webkit-transform: translateZ(540px) scale(.8); }
				.carousel img:nth-child(2) { -webkit-transform: rotateY(45deg) translateZ(540px) scale(.8); }
				.carousel img:nth-child(3) { -webkit-transform: rotateY(90deg) translateZ(540px) scale(.8); }
				.carousel img:nth-child(4) { -webkit-transform: rotateY(135deg) translateZ(540px) scale(.8); }
				.carousel img:nth-child(5) { -webkit-transform: rotateY(180deg) translateZ(540px) scale(.8); }
				.carousel img:nth-child(6) { -webkit-transform: rotateY(225deg) translateZ(540px) scale(.8); }
				.carousel img:nth-child(7) { -webkit-transform: rotateY(270deg) translateZ(540px) scale(.8); }
				.carousel img:nth-child(8) { -webkit-transform: rotateY(315deg) translateZ(540px) scale(.8); }

	label {
		cursor: pointer;
		background: #eee;
		display: inline-block;
		border-radius: 50%;
		width: 30px;
		padding-top: 7px;
		height: 23px;
		font: .9em Arial;
	}

	label:hover {
		background: white;
	}

	input {
		position: absolute;
		left: -9999px;
	}

	input:checked + label {
		font-weight: bold;
		background: white;
	}

		input[value="1"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px); }
		input[value="2"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-45deg); }
		input[value="3"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-90deg); }
		input[value="4"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-135deg); }
		input[value="5"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-180deg); }
		input[value="6"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-225deg); }
		input[value="7"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-270deg); }
		input[value="8"]:checked ~ .a_1_1 .carousel { -webkit-transform: translateZ(-540px) rotateY(-315deg); }

		input[value="1"]:checked ~ .a_1_1 .carousel img:nth-child(1) { -webkit-transform: translateZ(540px) scale(1); opacity: 1; }
		input[value="2"]:checked ~ .a_1_1 .carousel img:nth-child(2) { -webkit-transform: rotateY(45deg) translateZ(540px) scale(1); opacity: 1; }
		input[value="3"]:checked ~ .a_1_1 .carousel img:nth-child(3) { -webkit-transform: rotateY(90deg) translateZ(540px) scale(1); opacity: 1; }
		input[value="4"]:checked ~ .a_1_1 .carousel img:nth-child(4) { -webkit-transform: rotateY(135deg) translateZ(540px) scale(1); opacity: 1; }
		input[value="5"]:checked ~ .a_1_1 .carousel img:nth-child(5) { -webkit-transform: rotateY(180deg) translateZ(540px) scale(1); opacity: 1; }
		input[value="6"]:checked ~ .a_1_1 .carousel img:nth-child(6) { -webkit-transform: rotateY(225deg) translateZ(540px) scale(1); opacity: 1; }
		input[value="7"]:checked ~ .a_1_1 .carousel img:nth-child(7) { -webkit-transform: rotateY(270deg) translateZ(540px) scale(1); opacity: 1; }
		input[value="8"]:checked ~ .a_1_1 .carousel img:nth-child(8) { -webkit-transform: rotateY(315deg) translateZ(540px) scale(1); opacity: 1; }
</style>


<!-- *******************************************
 		지도
************************************************ -->

<section id="target" style="background-color: white;">
	<div  class="general-title text-center" >
		<h3> 지도</h3>
		<p>지도보여줄 곳</p>
		<hr>
	</div>

	<div class="divider"></div>
	<div  class="theme_overviews clearfix">
		
<div class="wrapper">
  <div  id="one">
  <div style="width: 100%; float: right;">
	<!-- <div class="container-fluid" style="margin-top: 60px; width: 100%; height: 40px; float: right;"> -->
		<div id="planmap"  style="background-color:cyan; width:100%; height:570px; float: inherit; text-align: center;">
			<!-- 다음 map 시작 -->
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>
			<script>
				var container = document.getElementById('planmap'); //지도를 담을 영역의 DOM 레퍼런스
				var options = { //지도를 생성할 때 필요한 기본 옵션
					center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
					level: 3 //지도의 레벨(확대, 축소 정도)
				};				
				var map = new daum.maps.Map(container, options);
			</script>
			<!-- 다음 map 종료 -->
		</div>
	<!-- </div> -->
</div>
  </div>
  <div  id="two"><span style="font-size:5em">정보</span></div>
</div>

	</div>
	<!-- theme / Products overview -->

</section>

<style>
#one{
float:left;
margin-left:5px;
width:1000px;
height:700px;
/* background-color: red; */
}
#two{
float:right;
width:300px;
height:700px;
background-color: blue;
}

</style>

<script>
jQuery(document).ready(function($) {
    $(".scroll").click(function(event){            
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
    });
});
</script>


 