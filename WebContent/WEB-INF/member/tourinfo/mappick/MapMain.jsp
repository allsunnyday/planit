<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>

<div class="container-fluid" style="margin-top:60px">
	<div class="row">
	<!-- map -->
		<div id="map" class="col-md-6" style="height: 970px; width: 50%;"></div>
			<button style="margin-top: 100px" class=" btn btn-primary" onclick="panTo()">내위치</button>
		
		<!-- content -->
		<div class="col-md-6">
			<div class="col-md-6"
				style="background-color: white; height: 970px; width: 50%"></div>

			<div class="col-md-6" style="background-color: pink; height: 800px"></div>
		
		</div>
	</div>
</div>

<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 3// 지도의 확대 레벨
	};
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new daum.maps.Map(mapContainer, mapOption);
	
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new daum.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
	
	function panTo() {
		//현위치 경도 위도 생성]
		var moveLatLon = new daum.maps.LatLng(33.450701, 126.570667);
		
		//지도 현위치로 부드럽게 이동 (만약 이ㅏ동할 거리가 지도 화면보타 크면 효과 없음)
		map.panTo(moveLatLon);
	}
	
</script>

