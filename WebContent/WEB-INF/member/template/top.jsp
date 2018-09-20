<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  
	dropdown이 안되어서 이곳에 script cdn 추가 
 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<!-- Top menu -->
		<!--  navbar에 있는 border속성이 다른 곳이랑 겹쳐서 반드시 이곳에서 border속성을 줘야 한다 -->
<nav class="navbar navbar-inverse navbar-fixed-top navbar-no-bg" style="border: none;"
	role="navigation">
	<div class="container" >
		<div class="navbar-header">
			<!-- 
				※
				오류 해 결 문 제 (미해결) 해결시에는 주석 삭제 요망 
				화면이 작아지면 아래의 button이 보여야 하는데 
				BUTTON은 보이나 아래의 메뉴들이 보이지 않는다.  
				
				-->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#collapseMenu">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/'/>">PLAN:IT</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="collapseMenu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/'/> ">Home</a></li>
				<!-- 지인, 길형 -->
				<li><a href="<c:url value='/tourinfo/ListNMapPick.it'/>">search</a></li>
				<!-- 선기 -->
				<li><a href="<c:url value='/Planit/Before/Location.it'/>">Planner</a></li>
				<!-- 현선 -->
				<li><a href="<c:url value='/Review/MyReview/write.it'/> ">reviews</a></li>
				<!-- 예원 -->
				<li class="dropdown">
					<a class="btn btn-link-3 dropdown-toggle"  data-toggle="dropdown" role="button" href="#">USER<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<c:url value='/member/login/login.it'/> ">LOGIN</a></li>
						<li><a href="<c:url value='/member/login/Join.it'/> " >JOIN</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>