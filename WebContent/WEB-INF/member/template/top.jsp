<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<!-- Top menu -->
<nav class="navbar navbar-inverse navbar-fixed-top navbar-no-bg"
	role="navigation">
	<div class="container">
		<div class="navbar-header">
			<!-- 화면이 작아지면 아래의 button이 보인다.  -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#collapseMenu">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/'/>"></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="collapseMenu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/'/> ">Home</a></li>
				<li><a href="<c:url value='/member/login/login.it'/> ">Clients</a></li>
				<li><a href="#">Planner</a></li>
				<li><a href="#">search</a></li>
				<li><a href="#">reviews</a></li>
				<li><a class="btn btn-link-3" href="#">Button</a></li>
			</ul>
		</div>
	</div>
</nav>