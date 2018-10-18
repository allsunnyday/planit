<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- *****************************map 관련 css 및 map api 호출  시작 *********************************-->
<link href="<c:url value='/BootStrap/planmap/css/planmaprute.css'/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437&libraries=services,clusterer,drawing"></script>
<!-- ****************************map 관련 css 및 map api 호출 종료 ***********************************-->
<!-- ******************************루트 페이지 바디 영역 시작****************************************-->
<div class="container-fluid" style="height: 100%">
	<section class="section1" style="margin-top: -30px; height: 100%">
	<!--**************************** 오른쪽 맵 과 상단 네비 게이션 바 구성 시작********************************-->
		<header class="header" style="background-color: #1abc9c; margin-top: 20px;" >
			<div class="container-fluid">
				<div class="site-header" >
					<!-- title area -->
					<div class="col-md-12 col-sm-12 col-xs-12" >
						<div id="nav" class="right" style=" float: right;">
							<!-- <div class="text-right" > -->
								<ul id="jetmenu" class="jetmenu blue" style="text-align: right;">
									<li style="display: block;"><a href="#"> 저 장 </a></li>
									<li style="display: block;"><a href="<c:url value='/Planit/Before/Location.it'/>"> 지역 선택 </a></li>
									<li class="active" style="display: block;"><a href="<c:url value='/planner/plan/route.it'/>"> 루 트 </a></li>
									<li style="display: block;"><a href="<c:url value='/planner/plan/schedule.it'/>"> 일 정 </a></li>
									<li style="display: block;"><a href="<c:url value='/planner/plan/reservation.it'/>"> 예 약 </a></li>
									<li style="display: block;"><a href="#"> 즐겨 찾기 </a></li>
								</ul>
							<!-- </div> -->
						</div><!-- nav -->
					</div><!-- title area -->
				</div><!-- site header -->
			</div><!-- end container -->
		</header><!-- end header -->						
		<%-- <jsp:include page="plantop.jsp"></jsp:include> --%>
	<!--**************************** 오른쪽 맵과 상단 네비 게이션 바 구성 종료*********************************-->
		<div class="container-fluid" style="height: 100%; overflow: scroll;"> 
			<!--********************************왼쪽 여행 상세정보 출력 정보 시작**********************************-->
			 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="leftrute" >
				<div id="planroutetop" style="background: #1abc9c; text-align: center; height: auto" >
					<div class="row" style="display: inline; margin-top: -40px;">						
						<div class="col-md-8 col-sm-8 col-xs-12" id="plandate" style="width: auto; display:block; margin: 0 auto;">
							<!-- *************  루트 작성 당일 일자 출력 시작 ************ -->
							<div style="display:block; margin-bottom: -10px; height: auto; width: auto">
								<span style="display: inline-block; margin-top: 8px; margin-left:5px; padding:5px; color: #5D5D5D; font-size: 10pt;
									background-color: white; ">
									<i class="fa fa-calendar"></i> 작성일</span>
									<input type="text" style="width: auto; padding: 4px;" disabled class="text-center" id="nowdate" name="nowdate">						
							</div>
							<!-- *************  루트 작성 당일 일자 출력 종료 ************ -->
							<!-- *************  루트 시작 일자 선택 시작  ************ -->
							<div style="display:block; height: auto; width: auto">
								<span style="display: inline-block; margin-top: 8px; margin-left:5px; padding:5px; color: #5D5D5D; font-size: 10pt;
									background-color: white;">
									<i class="fa fa-calendar"></i> 출발일</span>
								<input id="thedate" style="width: auto; padding: 4px;" type="text" readonly class="text-center">						
							</div>
							<!-- *************  루트 시작 일자 선택 시작  ************ -->							
						</div>
						<!-- **********************  여행 타입 선택 이미지 박스 시작  ********************* -->
						<div class="col-md-4 col-sm-4 col-xs-12 text-center" style="width: 120px; height: 80px;">
							<div class="btn-group" style="margin-top: 8px;">
								<a class="dmbutton dropdown-toggle" data-toggle="dropdown" href="#" id="tourtype">
									<img id="tourtypeimage" alt="타입" src="" style=""><span id="caret" class="caret"></span></a>
								<ul class="dropdown-menu" id="peopletype">
									<li id="single"><a href="#"><img src="/Planit/images/member/Preference/Preference_alone.JPG" alt="혼자서"></a></li>
									<li id="couple"><a href="#"><img src="/Planit/images/member/Preference/Preference_couple.JPG" alt="연인끼리"></a></li>
									<li id="friend"><a href="#"><img src="/Planit/images/plan/friend1.png" alt="친구끼리"></a></li>
									<li id="family"><a href="#"><img src="/Planit/images/member/Preference/Preference_family.JPG" alt="가족끼리"></a></li>
									<li id="club"><a href="#" ><img src="/Planit/images/plan/club1.png" alt="동호회" ></a></li>
								</ul>
							</div>												
						</div>
						<!-- **********************  여행 타입 선택 이미지 박스 종료  ********************* -->
					</div>	
					
					<div style="clear: both"></div>
				</div>	
				<div id="cityroute">
					
						<!-- 사용자가 추가한 여행정보가 없을때 -->
						<div id="nocityrute">
							<br><br><font style="font-size:9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font><br><br><br>
						</div>
						<!-- 사용자가 추가한 여행정보가 없을때 -->		
						
				</div>
			</div>
			<!--******************************** 왼쪽 여행 상세정보 출력 종료 *************************************-->
			
			<!-- ******************************* daum map api 영역 *************************************** -->
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="rightrute" >		
				<div class="map_wrap" style="height: 100%">
					<!-- *********************************지도 타입 및 확대 축소 시작 **************************************-->		
					<div id="map"></div>		    
				    <div class="custom_typecontrol radius_border"><!-- 지도타입 컨트롤 div 입니다 -->
				        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
				        <span id="btnSkyview" class="sky_btn" onclick="setMapType('skyview')">스카이뷰</span> 	        			        
				    </div>			    
				    <div class="custom_zoomcontrol radius_border"><!-- 지도 확대, 축소 컨트롤 div 입니다 --> 
				        <span onclick="zoomIn()"><img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
				        <span onclick="zoomOut()"><img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
				    </div>
				    <!-- *********************************지도 타입 및 확대 축소 종료 **************************************-->
				    <!-- *********************************지도 검색창 출력 및 검색정보 출력 시작 **************************************-->
				    <div id="menu_wrap" class="bg_white">
				        <div class="option">
				        	<div>
				                <form onsubmit="searchPlaces(); return false;" style="display: inline-flex;">
				                	<%-- <input type="hidden" value="${areacodename } ${areacodesubname}" id="localkeyword"> --%>
									<input type="text" class="form-control" placeholder="장소 검색" id="keyword" style="width: 60%;"
									value='${areacodename} ${areacodesubname}'> 
									<input type="hidden" value="${days }" id="days">        	
									<button type="submit" id="mapsearch">검색하기</button> 
				                </form>			                
				        	</div>
				        </div>
				    </div>
				    <!-- *********************************지도 검색창 출력 및 검색정보 출력 시작 **************************************-->
				    <!-- ********************************** 카테고리 버튼  시작 ****************************************** -->	    
				    <ul id="category">
				        <li id="CT1" data-order="1"><span class="category_bg culture"></span>문화 </li>       
				        <li id="AT4" data-order="3"><span class="category_bg tourist"></span>관광</li>  
				        <li id="AD5" data-order="2"><span class="category_bg lodge"></span>숙박</li>  
				        <li id="FD6" data-order="0"><span class="category_bg eatery"></span>음식점</li>			    
				    </ul>	
				    <!-- ********************************** 카테고리 버튼  시작 ****************************************** -->
				</div>
			</div>	
		</div>
	</section>
</div>

<!-- ******************************루트 페이지 바디 영역 종료****************************************-->
<!-- ********************************** map script 호출 시작 *************************************** -->
<%@ include file="routemap.jsp" %>
<!-- ********************************** map script 호출 종료 *************************************** -->



