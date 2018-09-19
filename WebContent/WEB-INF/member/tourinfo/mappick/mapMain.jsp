<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>


<div class="container">
	<div class="row">
		<div id="map" class="col-md-6" style="height: 800px;"></div>

		<div class="col-md-6">

			<div class="col-md-6" style="background-color: white; height: 800px">


			</div>

			<div class="col-md-6" style="background-color: pink; height: 800px"></div>

		</div>
	</div>
</div>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new daum.maps.Map(mapContainer, mapOption); 
</script>

