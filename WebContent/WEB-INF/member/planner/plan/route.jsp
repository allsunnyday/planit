<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="mapControllerLeft" style="width: 25%; float: left; margin-top: 60px; margin-left: 0px; background: #fff; border-radius: 9px;">
	<div style="background: #3ad195; padding-top: 5px;">
		<div id="topControllerLeft" style="padding-top: 5px; width: 75%; float: left;">
			<div style="padding-left: 10px;">
				<a href="javascript:gotoHome()"><img src="#" height="35px"></a>
			</div>
			<div style="height: 45px; padding-top: 2px; padding-left: 4px; padding-bottom: 5px;">
				<div style="text-align: left; padding-top: 5px; padding-left: 5px;">
					<div style="padding-right: 20px; padding-left: 5px; padding-top: 1px;">
						<div style="border-radius: 2; border: 1px solid #efefef; padding-left: 10px; background: #fff">
							<span style="padding-left: 0px; padding-right: 0px; color: #696969; font-size: 9pt;">
								<i class="fa fa-calendar"></i>출발일</span> 
							<input style="width: 95px; font-size: 11pt; background: #fff; margin-left: 0px; padding-left: 5px; padding-top: 2px; padding-bottom: 2px; color: #c0c0c0; border: 0px solid #c0c0c0" id="thedate" type="text" onchange="updateDate()">								
						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			style="float: left; width: 25%; text-align: right; padding-right: 10px; padding-top: 5px; padding-bottom: 0px;">
			<div onclick="toggleSelectTripWith();"
				style="cursor: pointer; border: 1px solid #efefef; background: #fff; border-radius: 2px;; text-align: center; padding-top: 5px; padding-bottom: 5px;">

				<div style="display: block">
					<img id="tripwith_img"
						src="#"
						height="43px">
				</div>
				<div style="font-size: 8pt;">
					<span id="tripwith_txt">일행 선택</span> <i class="fa fa-angle-down"></i>
				</div>
			</div>
		</div>
		<div style="clear: both"></div>

		<div id="div_tripwith_selector"
			style="border-radius: 5px; z-index: 999; display: none; position: absolute; top: 73px; width: 270px; left: 13px; background: #696969"></div>

	</div>

	<div id="cityroute" style="position: relative; text-align: center; width: 100%; margin-left: 0px; padding-left: 0px; padding-top: 0px; overflow-x: hidden; overflow-y: auto; height: 530px; background: #ffffff">
		<br />
		<br />
		<br />
		<font style="font-size: 9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font>
	</div>

</div>

<div class="nav nav--center" style="margin-top: 60px; width: 75%; height: 40px; float: right;">
	<nav class="nav nav--green lab-nav--light">
		<ul class="menu-plan text-center">
			<li class="menu-plan-item" style="width: 15%;"><a href="#">저 장</a></li>
			<li class="menu-plan-item" style="width: 15%;"><a href="<c:url value='/planner/plan/route.it'/>">루 트</a></li>			
			<li class="menu-plan-item" style="width: 15%;"><a href="<c:url value='/planner/plan/schedule.it'/>">일 정</a></li>
			<li class="menu-plan-item" style="width: 15%;"><a href="<c:url value='/planner/plan/reservation.it'/>">예 약</a></li>
			<li class="menu-plan-item" style="width: 15%;"><a href="#">즐겨찾기</a></li>			
		</ul><!-- .menu-plan -->
	</nav><!-- .nav -->
	<div id="planmap"  style="background-color:cyan; width:100%; height:580px; float: inherit; text-align: center;">
		<!-- map -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>
		<script>
			var container = document.getElementById('planmap'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
				level: 3 //지도의 레벨(확대, 축소 정도)
			};
			
			var map = new daum.maps.Map(container, options);
		</script>
		<!-- map -->
	</div>
</div>



