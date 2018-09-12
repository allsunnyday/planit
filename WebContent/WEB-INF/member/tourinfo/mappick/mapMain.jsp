<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--지도 API용  -->
<script
	src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=e472b24c-18c7-48ba-b2a1-72150ba75229"></script>

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
		<div class="" id="map_div">
			
		</div>
		<!-- 추천 창 -->
		<div class="" style="background-color: lightblue">
			<div class="yui-b" style="background-color: black">
				<div id="secondary" style="background-color: yellow"></div>
			</div>
		
		</div>
	</div>
</div>
