<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>

<!--*****************************************
	
*********************************************  -->
<section class="section1">
<div class="container">

<div style="padding-top: 70px"></div>
<section class="section4 text-center">
	<div class="general-title">
		<h3>회원가입을 하면 더 많은 PLANIT을 누릴 잇습니다</h3>
		<hr>
	</div>
	<!-- end portfolio-wrapper -->
</section>
<!-- end section1 -->
<!--*****************************************
	
*********************************************  -->
<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-offset-1">
				<div class="dmbox">
					<div class="service-icon">
						<div class="dm-icon-effect-1" data-effect="slide-bottom">
							<!-- <a class="" href="#"><i class="dm-icon fa fa-question fa-3x"></i></a> -->
							<a class="" href="<c:url value='/member/login/UserJoin.it'/> ">
							<img src="<c:url value='/images/member/001-space-3.png'/>" alt="" /></a> 
						</div>
					</div>
					<h4>일반 사용자</h4>
					<p>수 많은 여행지 정보와 나만의 플해너&리뷰를 쉽고 간편한 회원가입으로 즐겨보세요!</p>
				</div>
			</div>
			<!-- end dmbox -->

			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-offset-1">
				<div class="dmbox">
					<div class="service-icon">
						<div class="dm-icon-effect-1" data-effect="slide-bottom">
							<a class="" href="<c:url value='/member/login/CompanyJoin.it'/>">
							<img src="<c:url value='/images/member/010-astronaut-2.png'/>" alt=""/></a>
						</div>
					</div>
					<h4>기업 사용자</h4>
					<p>사업자 등록증이 있어야합니다</p>
				</div>
			</div>
			<!-- end dmbox -->
		</div>
	</div>
</section>
	</div>
</section>
 <style>
    .footer {position:fixed; bottom:0; width:100%;}
 </style>

