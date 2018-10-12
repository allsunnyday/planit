<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- nav -->
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
				<%-- <li><a href="<c:url value='/'/> ">Home</a></li> --%>
				<!-- 지인, 길형 -->
				<li><a href="<c:url value='/tourinfo/ListNMapPick.it'/>">search</a></li>
				<!-- 선기 -->
				<li><a href="<c:url value='/Planit/Before/LocationMain.it'/>">Planner</a></li>
				<!-- 현선 -->
				<li><a href="<c:url value='/planit/review/ReviewList.it'/> ">reviews</a></li>
				<!-- 예원 -->
				<li class="dropdown">
				<c:if test="${empty sessionScope.userid and empty sessionScope.p_id}" var="isNotLogin">
					<a class="btn btn-link-3 dropdown-toggle"  data-toggle="dropdown" role="button" href="#">시작하기<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu" >
						<li><a href="<c:url value='/planit/login/Login.it'/> " style="color:#888;">LOGIN</a></li>
						<li><a href="<c:url value='/member/login/Join.it'/> " style="color:#888;">JOIN</a></li>
					</ul>
					</c:if>
					<c:if test="${not isNotLogin and not empty sessionScope.userid}" var="isNotMemberLogin">
					<a class="btn btn-link-3 dropdown-toggle"  data-toggle="dropdown" role="button" href="#">${userid} 님<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu" >
						<li><a href="<c:url value='/planit/mypage/MyPageHome.it'/> " style="color:#888;">마이페이지</a></li>
						 <li><a href="<c:url value='#'/> " style="color:#888;">문의</a></li> 
						<li><a href="<c:url value='/member/login/Logout.it'/> " style="color:#888;">로그아웃</a></li>
					</ul>
					</c:if>
					<c:if test="${not isNotMemberLogin and not empty sessionScope.p_id}">
					<a class="btn btn-link-3 dropdown-toggle"  data-toggle="dropdown" role="button" href="#">${p_id}님<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu" >
						<li>사업자번호</li>
						<li><a href="<c:url value='/planit/mypage/partner/PartnerMyPageHome.it'/> " style="color:#888;">마이페이지</a></li>
						 <li><a href="<c:url value='/member/login/Join.it'/> " style="color:#888;">문의</a></li> 
						<li><a href="<c:url value='/member/login/Logout.it'/> " style="color:#888;">로그아웃</a></li>
						<%-- <li><a href="<c:url value='#'/> " style="color:#888;">문의</a></li> --%>
					</ul>
					</c:if>
				</li>
			</ul>
		</div>
	</div>
</nav>