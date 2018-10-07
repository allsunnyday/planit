<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- *****************************map 관련 css 및 map api 호출  시작 *********************************-->
<link href="<c:url value='/BootStrap/planmap/css/planmaprute.css'/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437&libraries=services,clusterer,drawing"></script>
<!-- ****************************map 관련 css 및 map api 호출 종료 ***********************************-->
<%@ include file="routedetails.jsp" %>
<!-- ********************************* 상세 일정 페이지 달력 출력 종료 *************************************** -->
<!-- ******************************루트 페이지 바디 영역 시작****************************************-->
<section class="section1">
<!--**************************** 오른쪽 맵 과 상단 네비 게이션 바 구성 시작********************************-->
	<jsp:include page="plantop.jsp"></jsp:include>
<!--**************************** 오른쪽 맵과 상단 네비 게이션 바 구성 종료*********************************-->
	<div class="container-fluid" style="height: 100%"> 
		<!--********************************왼쪽 여행 상세정보 출력 정보 시작**********************************-->
		 <div class="col-md-3 col-sm-3 col-xs-12" id="leftrute" >
			<div id="planroutetop" style="background: #1abc9c; padding: 10px; text-align: center;">
				<div class="row ">						
					<div class="col-md-8 col-sm-8 col-xs-12" id="plandate" style="width: auto; display:block; margin: 0 auto;">
						<div style="display:block; margin-bottom: -10px; ">
							<span style="display: inline-block; margin-top: 8px; margin-left:5px; padding:5px; color: #5D5D5D; font-size: 10pt;
								background-color: white; ">
								<i class="fa fa-calendar"></i> 작성일</span>
								<input type="text" style="width: auto; padding: 4px;" disabled class="text-center" id="nowdate" name="nowdate">						
						</div>
						<div style="display:block;">
							<span style="display: inline-block; margin-top: 8px; margin-left:5px; padding:5px; color: #5D5D5D; font-size: 10pt;
								background-color: white;">
								<i class="fa fa-calendar"></i> 출발일</span>
							<input id="thedate" style="width: auto; padding: 4px;" type="text" readonly class="text-center">						
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 text-center">
						<div class="btn-group" style="margin-top: 8px;">
							<a class="dmbutton dropdown-toggle" data-toggle="dropdown" href="#" style="margin-top: 7px;"> 여행 타입 <span class="caret"></span></a>
							<ul class="dropdown-menu" id="peopletype">
								<!-- 드롭다운 메뉴 링크들 -->
								<li><a href="#"><img src="/Planit/images/member/Preference/Preference_alone.JPG" alt="혼자서"></a></li>
								<li><a href="#"><img src="/Planit/images/member/Preference/Preference_couple.JPG" alt="연인끼리"></a></li>
								<li><a href="#"><img src="/Planit/images/member/Preference/Preference_family.JPG" alt="가족끼리"></a></li>
								<li><a href="#"><img src="/Planit/images/plan/friend1.png" alt="친구끼리"></a></li>
								<li><a href="#"><img src="/Planit/images/plan/club1.png" alt="동호회"></a></li>
							</ul>
						</div>
					</div>
				</div>	
				
				<div style="clear: both"></div>
				</div>	
			<div id="cityroute" style="position: relative; text-align: center; width: 100%; margin-left: 0px; padding-left: 0px; 
				padding-top: 0px; overflow: auto; background: rgb(255, 255, 255); height: 100px;" class="ui-sortable">
					<br><br><br><font style="font-size:9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font>
			</div>
		</div>
		<!--******************************** 왼쪽 여행 상세정보 출력 종료 *************************************-->
		
		<!-- ******************************* daum map api 영역 *************************************** -->
		<div class="col-md-9 col-sm-9 col-xs-12" id="rightrute">		
			<div class="map_wrap">	
				<!-- *********************************지도 타입 및 확대 축소 시작 **************************************-->		
				<div id="map" style="width:100%; position:relative; overflow:hidden;"></div>		    
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
								<input type="text" class="form-control" placeholder="장소 검색" id="keyword" style="width: 60%;">             	
								<button type="submit">검색하기</button> 
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
<!-- ******************************루트 페이지 바디 영역 종료****************************************-->
<!-- ********************************** map script 호출 시작 *************************************** -->
<%@ include file="routemap.jsp" %>
<!-- ********************************** map script 호출 종료 *************************************** -->


