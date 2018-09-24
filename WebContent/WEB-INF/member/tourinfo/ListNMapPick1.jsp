<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
img {
	opacity: 0.5;
	height: 1000px;
	width: 100%;
	filter: alpha(opacity = 50);
	color: black;
}

img:hover .hover_description {
	visibility: visible;
	opacity: 1;
	filter: alpha(opacity = 100);
	color: white;
	text-align: center;
}

.hover_description {
	visibility: hidden;
}
</style>

<div class="container-fluid">
	<div class="row" >
	<!-- list -->
		<div class="col-md-6">
				<a href="<c:url value='/tourinfo/listpick/list/ListMain.it'/>" class="hvrbox">
				<img class="image-hover" alt="listimage" src="<c:url value='/images/ListNMappick/listbackground.jpg'/>">
						<span class="hover_description">List</span>
					
				</a>
		</div>
	<!-- list -->
<!-- map -->		
	
		<div class="col-md-6">
				<a href="<c:url value='/tourinfo/mappick/MapMain.it'/>" class="hvrbox">
				<img class="image-hover" alt="mapimage" src="<c:url value='/images/ListNMappick/mapbackground.jpg'/>">
						<span class="hover_description">Map</span>
				</a>
		</div>
<!-- map -->		
	</div>

</div>