<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/* 
***************************
지역선택 아이콘 
*************************
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
	left: 27%;
	top: 67%;
}

.icon12 {/* 전남 */
	left: 25%;
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
 
 /* 
************************************************************************************************************************************************
지도 PNG
***********************************************************************************************************************************************
 */
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
	background: transparent;
	border-width: 0px;
	cursor: pointer;
	font-size: 20px;
}

/* 이미지 사이즈 조정 */
.carousel-inner img{
	height: 200px;
	width: 500px;
}
</style>

<script>
//1. 버튼 클릭시 지도 api띄워주기
//2. 해당 지역관랸 추천 리스트띄워주기
//3. session에서 로그인 멤버 선호도 내용 찾기
	
	$(function(){
		$('.go-button').click(function() {
			console.log("지역값: "+$(this).html()+$(this).val()); //버튼 클릭시 해당 지역이름 받아오기
			$.ajax({
				url: "<c:url value='/tourinfo/mappick/MapPick.it'/>",
				dataType: 'json',
				data:{areacode:$(this).val()},
				success: successMapPick,
				error: function(request, status, error){
					console.log(request, status, error);
				}
			});///ajax
		});
	});
	
	//지도 버튼 클릭시 ajax성공 함수
	var successMapPick = function(data) {
		console.log(JSON.stringify(data));
		var firstString = '';
		var lastString ='';
		var first='';
		var last='';
		/* var tourpickList = data['tourpickList'] ;
		console.log(JSON.stringify(tourpickList)); */
		$.each(data, function(index, content){// index = 0부터
			if(index < 6 ){ //012 345
				if(index <3){ //0 1 2
					firstString+=''
						+'<div class="col-lg-4">'
						+'	<a><img src=\''+content['firstimage']+'\' alt="travelimg"><span>'+content['title']+'</span></a>'
						+'</div>';
				}
				else{ // 3,4,5
					lastString+=''
					+'<div class="col-lg-4">'
					+'	<a><img src=\''+content['firstimage']+'\' alt="travelimg"><span>'+content['title']+'</span></a>'
					+'</div>';
				}
			}
			else{  //678 910 11
				// contentpick일경우에는여기에서 스트링을 만든다 .
				if(index <9){ //6 7 8
					first+=''
						+'<div class="col-lg-4">'
						+'	<a><img src=\''+content['firstimage']+'\' alt="contentimg"><span>'+content['title']+'</span></a>'
						+'</div>';
				}
				else{ // 3,4,5
					last+=''
					+'<div class="col-lg-4">'
					+'	<a><img src=\''+content['firstimage']+'\' alt="contentimg"><span>'+content['title']+'</span></a>'
					+'</div>';
				}
			}
		});// each 
		
		
		$('.best-first').html(firstString);
		$('.best-last').html(lastString);
		//
		$('.content-first').html(first);
		$('.content-last').html(last);
		
		//contentpickList
	};

</script>


<div class="container-fluid" style="padding-top: 70px; background-color:#47698c;">
	<div class="row">
		<div id="showDiv" class="col-md-5" style="background-color: #47698c;  padding-bottom: 30px;">
			<!-- 지역선택 아이콘 -->
			<div class="col-md-12">
				<div id="description_icon" style="margin-top: 30px"></div>
			</div>
			<!--지도-->
			<div class="col-md-12">
				<form>
					<div class="lcate" style="overflow: hidden; background-color: #47698c;"> 
						<div class="mapIllust" style="position:relative">
							<ul id="setHiddenButtons1" style="position:relative">
								<li class="icon1"><button value="2" name="areacode" type="button" class="go-button">인천</button></li>
								<li class="icon2"><button value="1" name="areacode" type="button" class="go-button">서울</button></li>
								<li class="icon3"><button value="31" name="areacode" type="button" class="go-button">경기</button></li>
								<li class="icon4"><button value="32" name="areacode" type="button" class="go-button">강원</button></li>
								<li class="icon5"><button value="34" name="areacode" type="button" class="go-button">충남</button></li>
								<li class="icon6"><button value="8" name="areacode" type="button" class="go-button">세종</button></li>
								<li class="icon17"><button value="33" name="areacode" type="button" class="go-button">충북</button></li>
								<li class="icon7"><button value="3" name="areacode" type="button" class="go-button">대전</button></li>
								<li class="icon8"><button value="35" name="areacode" type="button" class="go-button">경북</button></li>
								<li class="icon9"><button value="37" name="areacode" type="button" class="go-button">전북</button></li>
								<li class="icon10"><button value="4" name="areacode" type="button" class="go-button">대구</button></li>
								<li class="icon11"><button value="5" name="areacode" type="button" class="go-button">광주</button></li>
								<li class="icon12"><button value="38" name="areacode" type="button" class="go-button">전남</button></li>
								<li class="icon13"><button value="36" name="areacode" type="button" class="go-button">경남</button></li>
								<li class="icon14"><button value="7" name="areacode" type="button" class="go-button">울산</button></li>
								<li class="icon15"><button value="6" name="areacode" type="button" class="go-button">부산</button></li>
								<li class="icon16"><button value="39" name="areacode" type="button" class="go-button">제주</button></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
		</div>
		
<!--  관광지별 추천		-->
 <div class="container clearfix col-md-7"  style="background-color: #47698c;">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
<!-- title -->
			<div class="general-title text-center">
				<h3 style="color: white;">POPULAR ITEMS</h3>
				<p style="color: white; font-style: normal;">베스트 관광지</p>
				<a href="<c:url value=''/>" style="text-align: right;">더보기</a>
			</div>
				<!-- carousel start -->
				<div id="mycarousel" class="carousel slide" data-ride="carousel">
					<!-- wrapper for slides -->
					<div class="carousel-inner tourpickList">

						<!-- carousel slide 1 (총 3개의 이미지를 보여준다.) -->
						 <div class="item active">
							<div id="popularitems" class="best-first" >
								<c:forEach var="travel" items="${tourlist}" begin="0" end="2">
									<div class="col-lg-4">
										<a href="<c:url value='/'/>"><img src='${travel.firstimage}' alt="travelimg"><span>${travel.title}</span></a>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- end carousel slide 1   -->
						<div class="item ">
							<div id="popularitems" class="items_travel best-last">
								<c:forEach var="travel" items="${tourlist}" begin="3" end="5">
									<div class="col-lg-4">
										<a href="<c:url value='/'/>"><img src='${travel.firstimage}' alt="travelimg"><span>${travel.title}</span></a>
									</div>
							</c:forEach>
							</div>
						</div>
						
					</div>
					<!-- end wrapper for slides -->
					<a class="left carousel-control" href="#mycarousel" data-slide="prev"> 
						<span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#mycarousel" data-slide="next"> 
						<span class="icon-next"></span>
					</a>
				</div>
				<!-- end carousel container-->
				<!-- title -->
				<div class="general-title text-center">
					<p style="color: white; font-style: normal;">컨텐츠별 베스트</p>
				</div>
				<!-- carousel start -->
				<div id="mycarousel1" class="carousel slide" data-ride="carousel">
					<!-- wrapper for slides -->
					<div class="carousel-inner contentpickList">
					
					
						<!-- carousel slide 1 (총 3개의 이미지를 보여준다.) -->
						 <div class="item active">
							<div id="popularitems " class="content-first" >
								<c:forEach var="content" items="${contentlist}" begin="0" end="2">
									<div class="col-lg-4">
										<a href="<c:url value='/'/>"><img src='${content.firstimage}' alt="contentimg"><span>${content.title}</span></a>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- end carousel slide 1   -->
						<div class="item ">
							<div id="popularitems " class="items_travel content-last">
								<c:forEach var="content" items="${contentlist}" begin="3" end="5">
									<div class="col-lg-4">
										<a href="<c:url value='/'/>"><img src='${content.firstimage}' alt="contentimg"><span>${content.title}</span></a>
									</div>
							</c:forEach>
							</div>
						</div>
					</div>
					<!-- end wrapper for slides -->
					<a class="left carousel-control" href="#mycarousel1"
						data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#mycarousel1"
						data-slide="next"> <span class="icon-next"></span>
					</a>
				</div>
				<!-- end carousel container-->
				
			<!-- title -->
				<%-- <div class="general-title text-center">
					<p style="color: white; font-style: normal;">베스트 리뷰</p>
				</div>
				<!-- carousel start -->
				<div id="mycarousel2" class="carousel slide" data-ride="carousel">
					<!-- wrapper for slides -->
					<div class="carousel-inner">
						<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
						<div class="item active">
							<div id="popularitems" class="items_review">
								<div class="col-lg-4">
									<a><img class="" src="<c:url value='/images/MapPage/expic.jpg'/>" alt=""></a>
								</div>

								<div class="col-lg-4">
									<a><img class="" src="<c:url value='/images/MapPage/expic.jpg'/>" alt=""></a>
								</div>

								<div class="col-lg-4">
									<a><img class="" src="<c:url value='/images/MapPage/expic.jpg'/>" alt=""></a>
								</div>
							</div>
						</div>
						<!-- end carousel slide 1   -->
						<div class="item ">
							<div id="popularitems" class="items_review">
								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>" alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>" alt="">
								</div>

								<div class="col-lg-4">
									<img class="" src="<c:url value='/images/MapPage/expic.jpg'/>" alt="">
								</div>
							</div>
						</div>
					</div>
					<!-- end wrapper for slides -->
					<a class="left carousel-control" href="#mycarousel2" data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#mycarousel2" data-slide="next"> <span class="icon-next"></span>
					</a>
				</div> --%>
				<!-- end carousel container-->
		</div>
		<!-- end content -->
	</div>
	<!-- end carousel  -->
		
	</div>
</div>
 
