<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="header" style="background-color: #1abc9c; margin-top: -10px;" >
	<div class="container">
		<div class="site-header clearfix">
			<!-- title area -->
			<div class="col-md-12 col-sm-12 col-xs-12" >
				<div class="right">
					<div class="container clearfix">
						<ul id="jetmenu" class="jetmenu blue" >
							<li style="width: 15%;"><a href="#"> 저 장 </a></li>
							<li style="width: 15%;"><a href="<c:url value='/planner/plan/route.it'/>"> 루 트 </a></li>
							<li style="width: 15%;"><a href="<c:url value='/planner/plan/schedule.it'/>"> 일 정 </a></li>
							<li class="active" style="width: 15%;"><a href="<c:url value='/planner/plan/reservation.it'/>"> 예 약 </a></li>
							<li style="width: 15%;"><a href="#"> 즐겨 찾기 </a></li>
						</ul>
					</div>
				</div><!-- nav -->
			</div><!-- title area -->
		</div><!-- site header -->
	</div><!-- end container -->
</header><!-- end header -->
