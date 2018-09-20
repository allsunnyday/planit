<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function() {
		// run the currently selected effect
		function runEffect() {

			var options = {};
		
			$("#moving").toggle("slide", options, 500);
		};

		// Set effect from select menu value
		$("#button").on("click", function() {
			runEffect();
		});
	});
</script>
 <style>
.row {
	margin-left: 0px;
	margin-right: 0px;
}

#wrapper {
	padding-left: 70px;
	transition: all .4s ease 0s;
	height: 100%
}

#sidebar-wrapper {
	margin-left: -150px;
	left: 70px;
	width: 150px;
	background: #222;
	position: fixed;
	height: 100%;
	z-index: 10000;
	transition: all .4s ease 0s;
}

.sidebar-nav {
	display: block;
	float: left;
	width: 150px;
	list-style: none;
	margin: 0;
	padding: 0;
}

#page-content-wrapper {
	padding-left: 0;
	margin-left: 0;
	width: 100%;
	height: auto;
}

#wrapper.active {
	padding-left: 150px;
}

#wrapper.active #sidebar-wrapper {
	left: 150px;
}

#page-content-wrapper {
	width: 100%;
}

#sidebar_menu li a, .sidebar-nav li a {
	color: #999;
	display: block;
	float: left;
	text-decoration: none;
	width: 150px;
	background: #252525;
	border-top: 1px solid #373737;
	border-bottom: 1px solid #1A1A1A;
	-webkit-transition: background .5s;
	-moz-transition: background .5s;
	-o-transition: background .5s;
	-ms-transition: background .5s;
	transition: background .5s;
}

.sidebar_name {
	padding-top: 25px;
	color: #fff;
	opacity: .7;
}

.sidebar-nav li {
	line-height: 40px;
	text-indent: 20px;
}

.sidebar-nav li a {
	color: #999999;
	display: block;
	text-decoration: none;
}

.sidebar-nav li a:hover {
	color: #fff;
	background: rgba(255, 255, 255, 0.2);
	text-decoration: none;
}

.sidebar-nav li a:active, .sidebar-nav li a:focus {
	text-decoration: none;
}

.sidebar-nav>.sidebar-brand {
	height: 65px;
	line-height: 60px;
	font-size: 18px;
}

.sidebar-nav>.sidebar-brand a {
	color: #999999;
}

.sidebar-nav>.sidebar-brand a:hover {
	color: #fff;
	background: none;
}

#main_icon {
	float: right;
	padding-right: 65px;
	padding-top: 20px;
}

.sub_icon {
	float: right;
	padding-right: 65px;
	padding-top: 10px;
}

.content-header {
	height: 65px;
	line-height: 65px;
}

.content-header h1 {
	margin: 0;
	margin-left: 20px;
	line-height: 65px;
	display: inline-block;
}

@media ( max-width :767px) {
	#wrapper {
		padding-left: 70px;
		transition: all .4s ease 0s;
	}
	#sidebar-wrapper {
		left: 70px;
	}
	#wrapper.active {
		padding-left: 150px;
	}
	#wrapper.active #sidebar-wrapper {
		left: 150px;
		width: 150px;
		transition: all .4s ease 0s;
	}
}
</style> 
<div class="container">
	<div id="wrapper" class="active">

		<!-- Sidebar -->
		<!-- Sidebar -->
		<div id="moving">
		<div id="sidebar-wrapper">
			<!-- <ul id="sidebar_menu" class="sidebar-nav">
				<li class="sidebar-brand"><a id="menu-toggle" href="#">Menu</a></li>
			</ul> -->
			<ul class="sidebar-nav" id="sidebar">
				<li><a>Link1</a></li>
				<li><a>link2</a></li>
			</ul>
			<!-- <ul class="sidebar-nav" id="sidebar">
				<li><a>Link1<span class="sub_icon glyphicon glyphicon-link"></span></a></li>
				<li><a>link2<span class="sub_icon glyphicon glyphicon-link"></span></a></li>
			</ul> -->
		</div>
</div>
		<!-- Page content -->
		<div id="page-content-wrapper">
			<!-- Keep all page content within the page-content inset div! -->
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<button type="button" id="button" class="btn btn-default"
		aria-label="Left Align">
		<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
	</button>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>
			<h1>마이페이지</h1>

		</div>
	</div>
</div>