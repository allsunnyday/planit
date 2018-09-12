<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--지도 API용  -->
<script
	src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=e472b24c-18c7-48ba-b2a1-72150ba75229"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../assets/css/animate1.css">
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="../assets/css/theme.css">
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">

<script>
	$(document).ready(function() {
		initTmap();
	});

	function initTmap() {
		var map = new Tmap.Map({
			div : 'map_div',
			width : "840px",
			height : "700px",
		});
		map.setCenter(new Tmap.LonLat("126.986072", "37.570028").transform(
				"EPSG:4326", "EPSG:3857"), 15);
	}
</script>

<div class="container" style="padding-top: 100px;">
	<!--지도  -->
	<div class="content_middle">
		<div class="col-lg-6 col-md-6 col-sm-6" id="map_div"></div>
		<!-- 추천 창 -->
		<div class="col-lg-6 col-md-6 col-sm-6" style="background-color: lightblue">
			<div class="content_middle_rightbar">
				
			</div>
		</div>
	</div>
</div>
