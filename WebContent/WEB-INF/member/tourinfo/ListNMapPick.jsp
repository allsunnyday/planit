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
	
	img:hover {
		opacity: 1.0;
		filter: alpha(opacity = 100);
	}
</style>

<div class="container-fluid">
	<div class="row" >
	<!-- list -->
		<div class="col-md-6">
			<div id="all">
				<a href="<c:url value='/tourinfo/listpick/list/listMain.it'/>">
				<img class="image-hover" alt="mapimage" src="<c:url value='/images/ListNMappick/listbackground.jpg'/>"></a>
				<div class="overlay">
					<h1 style="color: white; text-align: center;" >List</h1>
				</div>
			</div>
			
				
			
		</div>
	<!-- list -->
<!-- map -->		
	
		<div class="col-md-6">
			<div id="all" >
				<a href="<c:url value='/tourinfo/mappick/MapMain.it'/>">
				<img class="image-over" alt="mapimage" src="<c:url value='/images/ListNMappick/mapbackground.jpg'/>"></a>
			</div>
			
				<h1 style="color: white;">Map</h1>
			
		</div>
<!-- map -->		
	</div>

</div>