<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 왼쪽 여행 상세정보 출력 정보 시작 -->
<div id="planroute" style="width: 25%; float: left; margin-top: 60px; margin-left: 0px; background: rgb(255, 255, 255); 
	border-radius: 9px; height: 560px;">

	<div style="background: #1abc9c; padding-top: 5px;">
		<div id="planroutetop" style="padding-top: 0px; width: 75%; float: left;">			
			<div style="height: 60px; padding-top: 2px; padding-left: 4px; padding-bottom: 5px;">
				<div style="text-align: left; padding-top: 5px; padding-left: 5px;">
					<div style="padding-right: 20px; padding-left: 5px; padding-top: 1px;">
						<div style="border-radius: 2; border: 1px solid #efefef; padding-left: 10px; background: #fff; padding-top: 5px;">
							<span style="padding-left: 0px; padding-right: 0px; color: #696969; font-size: 10pt;">
									<i class="fa fa-calendar"></i> 출발일</span> 
							<input style="width: 120px; font-size: 11pt; background: #fff; margin-left: 0px; padding-left: 5px; padding-top: 2px; 
								padding-bottom: 2px; color: #c0c0c0; border: 1px solid #c0c0c0" id="thedate" type="text" onchange="updateDate()"
								class="hasDatepicker">
						</div>
					</div>
				</div>
			</div>
		</div>

		<div style="float: left; width: 25%; text-align: right; padding-right: 10px; padding-top: 8px; padding-bottom: 0px;">
			<div onclick="함수 입력" style="cursor: pointer; border: 1px solid #efefef; background: #fff; height: 42px; 
				border-radius: 2px;; text-align: center; padding-top: 12px; padding-bottom: 5px;">
				<!-- onclick="toggleSelectTripWith();" -->
				<div style="display: block"> </div>
				<div style="font-size: 10pt;">
					<span id="tripwith_txt">타입선택</span> <i class="fa fa-angle-down"></i>
				</div>
			</div>
		</div>
		<div style="clear: both"></div>
		</div>

	<div id="cityroute" style="position: relative; text-align: center; width: 100%; margin-left: 0px; padding-left: 0px; 
		padding-top: 0px; overflow: hidden auto; background: rgb(255, 255, 255); height: auto;" class="ui-sortable">
			<br><br><br><font style="font-size:9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font>
	</div>

</div>
<!-- 왼쪽 여행 상세정보 출력 종료 -->





<!-- 오른쪽 맵 과 상단 네비 게이션 바 구성 시작 -->
<header class="header" style="margin-top: 20px; background-color: #1abc9c; width: 75%; float: right;">
	<div class="container">
		<div class="site-header clearfix">
			<!-- title area -->
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="right">
					<div class="container clearfix">
						<ul id="jetmenu" class="jetmenu blue">
							<li style="width: 15%;"><a href="#"> 저 장 </a></li>
							<li class="active" style="width: 15%;"><a href="<c:url value='/planner/plan/route.it'/>"> 루 트 </a></li>
							<li style="width: 15%;"><a href="<c:url value='/planner/plan/schedule.it'/>"> 일 정 </a></li>
							<li style="width: 15%;"><a href="<c:url value='/planner/plan/reservation.it'/>"> 예 약 </a></li>
							<li style="width: 15%;"><a href="#"> 즐겨 찾기 </a></li>
						</ul>
					</div>
				</div><!-- nav -->
			</div><!-- title area -->
		</div><!-- site header -->
	</div><!-- end container -->
</header><!-- end header -->


<div style="width: 75%; float: right;">
	<!-- <div class="container-fluid" style="margin-top: 60px; width: 75%; height: 40px; float: right;"> -->
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
<!-- 오른쪽 맵과 상단 네비게이션 바 구성 종료 -->

<!-- 네비게이션 바가 2개가 삽입 되므로 "헤더-바디-푸터-헤더-바디-푸터" 순으로 적용되는것을 하단으로 강제 고정 -->
<!-- footer 하단에 위치 시작-->
<style>
	footer {
    position:absolute;
    bottom:0;
    width:100%;
}
</style>
<!-- footer 하단에 위치 종료 -->


