<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<jsp:include page="topMenu.jsp" flush="false" />

<script>
	var likedThisContent=function(){
		//로그인한 유저인지 확인
		if('${sessionScope.id}'==''){
			alert('로그인이 필요해요!');
			return ;
		}
		console.log('즐겨찾기를 시작합니다.')
		// 로그인한 유저인 경우에는 ajax를 이용해서 mypage로 이동하던가. 아니면 그냥 보기 
		var contentid = ${content.contentid};
		$.ajax({
			url:"<c:url value='/planit/search/tourview/LikedContent.it'/> ",
			data:{contentid:contentid},
			type:'post',
			dataType:'text',
			success:function(data){
				console.log('성공');
				if(data=='success'){
					
					alert('저장 성공\r\n즐겨찾기에 추가한 이미지는 마이페이지에서 확인할 수 있어요!')					
				}
				else if (data=='already'){					
					alert('이미 좋아요를 눌렀어요\r\n즐겨찾기에 추가한 이미지는 마이페이지에서 확인할 수 있어요!')					
				}
			},
			error:function(request, error){
				console.log(request,error);
			}
			
		});	
	};

	console.log('확인 확인: ${content.firstimage}')
</script>
<!--*******************************************************
	관광 이미지 
***********************************************************  -->
<section class="marketplace-top">
	<div id="market-wrapper">
		<div class="item_image">
			<%-- <img data-effect="fade" class="aligncenter" width="90%" height="400"
				src="${content.firstimage}" alt=""> --%>
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
				<h3>${content.title}</h3>
				<p></p>
				<hr>
			</div>

			<div class="divider"></div>

			<div class="item_details">

				<div class="col-lg-8 col-md-8 col-sm-12">
					<div class="theme_details">
						<div class="details_section">							
							<ul>
								<c:if test="${not empty content.firstimage}" var="result">
									<li class="designer"><img data-effect="fade" class="aligncenter" src="${content.firstimage}" alt=""></li>
								</c:if>
								<c:if test="${empty content.firstimage}">
									<li class="designer"><img data-effect="fade" class="aligncenter" src="/Planit/images/plan/imageready.png" alt=""></li>
								</c:if>				
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
						
						<div class="buttons" data-target="#myModal">
							<ul>
								<li><h3>위치</h3>
								 ${content.addr1}<hr></li>
								 <!--문의 /안내  -->
								<c:choose>
									<c:when test="${not empty detailintro.infocenter}">
										<li><h3>문의/안내</h3> ${detailintro.infocenter}</li>
									</c:when>
									<c:when test="${not empty detailintro.infocenterculture}">
									<li><h3>문의/안내</h3> ${detailintro.infocenterculture}</li>
									</c:when>
									<c:when test="${not empty detailintro.infocenterleports}">
									<li><h3>문의/안내</h3> ${detailintro.infocenterleports}</li>
									</c:when>
									<c:when test="${not empty detailintro.infocentershopping}">
									<li><h3>문의/안내</h3> ${detailintro.infocentershopping}</li>
									</c:when>
									<c:when test="${not empty detailintro.infocenterfood}">
									<li><h3>문의/안내</h3> ${detailintro.infocenterfood}</li>
									</c:when>	
								</c:choose>								 
								<li>${content.tel}<hr></li>
								<!-- 쉬는날 -->
								<c:choose>
									<c:when test="${not empty detailintro.restdate}">
										<li><h3>쉬는날</h3> ${detailintro.restdate}</li>
									</c:when>
									<c:when test="${not empty detailintro.restdateculture}">
									<li><h3>쉬는날</h3> ${detailintro.restdateculture}</li>
									</c:when>
									<c:when test="${not empty detailintro.restdateleports}">
									<li><h3>쉬는날</h3> ${detailintro.restdateleports}</li>
									</c:when>
									<c:when test="${not empty detailintro.restdateshopping}">
									<li><h3>쉬는날</h3> ${detailintro.restdateshopping}</li>
									</c:when>
									<c:when test="${not empty detailintro.restdatefood}">
									<li><h3>쉬는날</h3> ${detailintro.restdatefood}</li>
									</c:when>
								</c:choose>	
								<hr>
								<!-- 이용시간 -->
								<c:choose>
									<c:when test="${not empty detailintro.usetime}">
										<li><h3>이용시간</h3> ${detailintro.usetime}</li>
									</c:when>
									<c:when test="${not empty detailintro.usetimeculture}">
									<li><h3>이용시간</h3> ${detailintro.usetimeculture}</li>
									</c:when>
									<c:when test="${not empty detailintro.usetimeleports}">
									<li><h3>이용시간</h3> ${detailintro.usetimeleports}</li>
									</c:when>
									<c:when test="${not empty detailintro.opentime}">
									<li><h3>영업시간</h3> ${detailintro.opentime}</li>
									</c:when>
									<c:when test="${not empty detailintro.opentimefood}">
									<li><h3>이용시간</h3> ${detailintro.opentimefood}</li>
									</c:when>
								</c:choose>	
								<hr>
								<li><h3>홈페이지</h3>
								${content.homepage}<hr></li>
							</ul>
						</div>
						<!-- buttons -->
						
							<input type="hidden" value="${content.title }" name="title">
							<input type="hidden" value="${content.contentid }" name="contentid">
						<div class="buttons">
						    <a style="margin-right: 7px;"class="dmbutton2" href="javascript:" onclick="likedThisContent();"> <i class="fa fa-star-o"></i> 즐겨찾기 추가</a>
						    <a style="margin-right: 7px;" class="dmbutton2" href="#target"><i class="fa fa-map"></i> 지도</a>
							
							
							<!--  -->
							<!-- 
							<a class="dmbutton2" href="#"> <i class="fa fa-pencil"></i>정보 수정</a>
							 -->
							
							
							
							<%-- 
							<c:if test="${content.contenttype eq 32}">
								<a class="button large btn-block" href="<c:url value='/tourinfo/tdview/sleepList/Reservation.it?contentid=${content.contentid}&contenttype=32'/>"> <i class="fa fa-pencil"></i>객실정보</a>
							</c:if>
							 --%>
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
							<h3>개요</h3>
							${content.overview}
							<c:forEach var="m" items="${mMap}" >
								<h3></h3>
								<c:out value="${m.key}"></c:out>
								<c:out value="${m.value}"></c:out><hr>
							</c:forEach>
							
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
	<%-- <section style="background:white;">
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
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 2">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 3">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 4">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 5">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 6">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 7">
				<img src="<c:url value='/images/list/222.jpg'/>" alt="Landscape 8">

			</div>
		</div>

	</div>
</section> --%>
<style>
 /* .a_1 {
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
		margin: 60px auto;
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
		input[value="8"]:checked ~ .a_1_1 .carousel img:nth-child(8) { -webkit-transform: rotateY(315deg) translateZ(540px) scale(1); opacity: 1; } */
</style>


<!-- *******************************************
 		지도
************************************************ -->

<section id="target" style="background-color: white; width: 100%">
   <div  class="general-title text-center" >
      <h3> 지도</h3>
      <p>지도보여줄 곳</p>
      <hr>
   </div>
   <div class="divider" style="width: 100%; height: 100%"></div>
   <div  class="theme_overviews clearfix" style="width: 100%; height: 100%">
         <div  id="one">
            <div class="text-center" style="width: 100%; height:570px;">
               <!-- <div class="container-fluid" style="margin-top: 60px; width: 100%; height: 40px; float: right;"> -->
               <div id="planmap"  style="background-color:cyan; width:100%; height:570px; float: inherit; text-align: center; display: inline-block;">
               <!-- 다음 map 시작 -->
                  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>
                  <script>
                     var container = document.getElementById('planmap'); //지도를 담을 영역의 DOM 레퍼런스
                     var options = { //지도를 생성할 때 필요한 기본 옵션
                        center: new daum.maps.LatLng(${mapy}, ${mapx}), //지도의 중심좌표.
                        level: 5 //지도의 레벨(확대, 축소 정도)
                     };            
                     var map = new daum.maps.Map(container, options);
                     
                     var imageSrc = '/Planit/images/plan/marker/pointmarker.png',//'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
                      imageSize = new daum.maps.Size(48, 67), // 마커이미지의 크기입니다
                      imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

                      // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                      var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
                          markerPosition = new daum.maps.LatLng(${mapy}, ${mapx}); // 마커가 표시될 위치입니다
                     
                     var marker = new daum.maps.Marker({ 
                        position: markerPosition,
                        image: markerImage // 마커이미지 설정 
                     }); 
                     marker.setMap(map);      //지도에 마커를 표시합니다
                     
                     var content = '<div class="text-left"style="height:80px; width:300px; padding:5px;">'+
                                   '지명: <span> ${content.title} </span><br/>'+
                                      '위치: <span> ${content.addr1} </span><br/>' +
                                   '</div>';
                     
                        var iwPosition = new daum.maps.LatLng(${mapy}, ${mapx}); //인포윈도우 표시 위치입니다
                     // 인포윈도우를 생성합니다
                        var infowindow = new daum.maps.InfoWindow({
                            position : iwPosition, 
                            content : content 
                        });
                        infowindow.open(map, marker);
                   		// 마우스 휠로 지도 확대,축소 가능여부를 설정합니다
                        map.setZoomable(false); 
                  </script>
               <!-- 다음 map 종료 -->
               </div> <!-- </div> -->
            </div>
         </div>
      <div class="wrapper" style="height: 100%; width: 100%; display: inline-block;">
      </div>
   </div> <!-- theme / Products overview -->
</section>

<style>
html, body {width:100%; height:100%;margin:0;padding:0;}
#one{
float:left;
margin-left:5px;
width: 100%;
height: 100%;
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
