<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#container1 {
	position: relative;
	width: 100%;
	height: 100%;
	padding-top: 100px;
}

.splitlayout {
	position: relative;
	overflow-x: hidden;
	min-height: 100%;
	width: 100%;
}

.side {
	position: fixed;
	top: 0;
	z-index: 100;
	width: 50%;
	height: 100%;
	text-align: center;
	-webkit-backface-visibility: hidden;
}

.side-left {
	left: 0;
	background-image: url("../images/ListNMappick/background.jpg");
	color: #fff;
	outline: 1px solid #47a3da; /* avoid gap */
}

.side-right {
	right: 0;
	background: #fff;
	color: #47a3da;
	outline: 1px solid #fff; /* avoid gap */
}

.intro-content {
	position: absolute;
	top: 50%;
	left: 50%;
	padding: 0 1em;
	width: 50%;
	cursor: pointer;
	-webkit-transform: translateY(-50%) translateX(-50%);
	transform: translateY(-50%) translateX(-50%);
	margin-top: 50px;
}

.profile {/* 행성 크기 */
	margin: 0 auto;
	width: 200px;
	height: 200px;
	border-radius: 50%;
/* 	background: #47a3da; */
}

.profile img {
	max-width: 100%;
	border-radius: 50%;
	opacity: 0.6;
}

#firefly {
	height: 100%;
	width: 100%;
}

</style>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script type="text/javascript" src="jquery.firefly-0.7.js"></script>
<script>
	$.firefly({
		color : '#fafafa',
		minPixel : 3,
		on: 'document.body',
		maxPixel : 10,
		total : 100,
		on : '#firefly'
	});
</script>
<div id="container1" class="container" >
	<div id="splitlayout" class="splitlayout">
		<div class="intro">
			<div class="side side-left">
				<div class="intro-content" class="tooltip tooltip-west">
					<div class="profile">
						<img src="<c:url value='/images/ListNMappick/list.png'/>">
					</div>
						<h1>
							<span class="tooltip-item"><a href="<c:url value='/mypage/Partner/Reservation_P.it'/>">List</a></span>
							<!-- <span class="tooltip-content">관광정보를 목록형으로 볼수있어요!</span> -->
						</h1>
				</div>
				<div class="overlay"></div>
			</div>
			<div class="side side-right">
				<div class="intro-content">
					<div class="profile">
						<a href="<c:url value='/tourinfo/mappick/mapMain.it'/>"><img src="<c:url value='/images/ListNMappick/map.png'/>"></a>
					</div>
					<h1>
						<span><a href="<c:url value='/tourinfo/reviewpick/reviewpick.it'/>">Map</a></span>
					</h1>
				</div>
				<div class="overlay"></div>
			</div>
		</div>
		<!-- /intro -->
	</div>
	<!-- /splitlayout -->
</div>
<!-- /container -->