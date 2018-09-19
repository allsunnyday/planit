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
	/* background-image: url("../images/ListNMappick/background.jpg");  */
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

body{
	display:flex;
	justify-content:center;
	align-items:center;
	height:500vh;
	background:#26305b;
	overflow:hidden;
}
.rocket{
	position:center;
	width:700px;
	height:700px;
	animation-name: spin;
	animation:spin 5s linear infinite;
}
@keyframes spin{ 
	0% { -webkit-transform: rotate(0deg);transform:rotate(0deg);}
	25% { -webkit-transform: rotate(90deg);transform:rotate(90deg);}
	50% { -webkit-transform: rotate(180deg);transform:rotate(180deg);}
	75% { -webkit-transform: rotate(270deg);transform:rotate(270deg);}
	100% { -webkit-transform: rotate(360deg);transform:rotate(360deg);} 
}
@media screen and (max-width: 700px){
	.rocket{
		width:250px;
		height:250px;
	}
	#moon{
		width:40%;
	}
}

</style>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

<div id="container1" class="container" >
	<div id="splitlayout" class="splitlayout">
		<div class="intro">
			<div class="side side-left">
				<div class="intro-content">
					<div class="profile">
						<img id="moon" src="http://www.clker.com/cliparts/8/4/7/a/12279737022024966533rg1024_Moon_in_comic_style.svg" alt="moon">
						<div class="rocket">
							<img
								src="https://maxcdn.icons8.com/Share/icon/Transport//rocket1600.png"
								alt="rocket" width="20%">
						</div>
					</div>
						<h1>
							<span><a href="<c:url value='/mypage/Partner/Reservation_P.it'/>">List</a></span>
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