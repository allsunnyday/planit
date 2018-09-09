<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<!-- Top menu -->
<nav class="navbar navbar-inverse navbar-fixed-top navbar-no-bg"
	role="navigation">
	<div class="container">
		<div class="navbar-header">
			<!-- 
				※
				오류 해 결 문 제 (미해결) 해결시에는 주석 삭제 요망 
				화면이 작아지면 아래의 button이 보여야 하는데 
				BUTTON은 보이나 아래의 메뉴들이 보이지 않는다.  
				
				-->
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
				<!-- 지인, 길형 -->
				<li><a href="#">search</a></li>
				<!-- 선기 -->
				<li><a href="#">Planner</a></li>
				<!-- 현선 -->
				<li><a href="#">reviews</a></li>
				<!-- 예원 -->
				<li><a class="btn btn-link-3 img-circle" href="<c:url value='/member/login/login.it'/> ">LOGIN</a></li>
			</ul>
		</div>
	</div>
</nav>