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
	background: #47a3da;
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

.profile {
	margin: 0 auto;
	width: 140px;
	height: 140px;
	border-radius: 50%;
	background: #47a3da;
}

.profile img {
	max-width: 100%;
	border-radius: 50%;
	opacity: 0.6;
}
</style>

<div id="container1" class="container" >
	<div id="splitlayout" class="splitlayout">
		<div class="intro">
			<div class="side side-left">
				<div class="intro-content">
					<div class="profile">
						<img src="<c:url value='/images/list.png'/>">
					</div>
					<h1>
						<span><a href="#">List</a></span>
					</h1>
				</div>
				<div class="overlay"></div>
			</div>
			<div class="side side-right">
				<div class="intro-content">
					<div class="profile">
						<a href="<c:url value='/member/tourinfo/mappick/mapMain.it'/>"><img src="<c:url value='/images/map.png'/>"></a>
					</div>
					<h1>
						<span><a href="<c:url value='/member/tourinfo/mappick/mapMain.it'/>">Map</a></span>
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