<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<!-- ************************************** style 시작 ***************************************** -->
<style>
	/* .footer {position:fixed; bottom:0; width:100%;} */
	.footer {position:none; bottom:0; width:100%;}
</style>
<!-- ************************************** style 종료 ***************************************** -->



<!-- ********************************************** 플래너 계획 이미지 설명 시작  ****************************************** -->
<!-- <div style="padding-top: 60px"></div> -->
<div class="container-fluid" style="height: auto; overflow: visible;">
<!-- ********************************************** 플래너 상단 부분 시작 ****************************************** -->
	<section class="post-wrapper-top" style="margin-top: 70px; ">
		<div class="container">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<ul class="breadcrumb">
					<li>여행 플래너</li>
				</ul>
				<h2>나만의 즐거운 여행 계획 작성하기</h2>
			</div>
		</div>
	</section><!-- end post-wrapper-top -->
<!-- ********************************************** 플래너 상단 부분 종료 ****************************************** -->
	<section class="section1">
		<div class="container clearfix">
		    <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">		
				<!-- <h3> 나만의 여행 계획 작성하기 </h3> -->			
				<div class="f1-steps text-center">
					<div class="f1-progress">
						<div class="f1-progress-line" data-now-value="16.66"
							data-number-of-steps="3" style="width: 16.66%;"></div>
					</div>
					<div class="f1-step active">
						<div class="services_lists_boxes_icon_none text-center">
							<i class="fa fa-search fa-2x"></i>
						</div>
						<h4>여행지역 및 일정 선택하기</h4>
					</div>
					<div class="f1-step">
						<div class="services_lists_boxes_icon_none text-center">
							<i class="fa fa-road fa-2x"></i>
						</div>
						<h4>여행 루트 작성하기</h4>
					</div>
					<div class="f1-step">
						<div class="services_lists_boxes_icon_none text-center">
							<i class="fa fa-send fa-2x"></i>
						</div>
						<h4> 여행 상세 일정 작성하기 </h4>
					</div>
				</div>
		</div>
	</div>
	</section>
	<!-- ********************************************** 플래너 계획 이미지 설명 종료  ****************************************** -->
	<section class="section1" style="margin-bottom: 120px;">
		<div class="container" style="display: block; overflow: visible;">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 clearfix">
					<div class="text-center">
						<img src="/Planit/images/plan/plan.jpeg" alt="plan메인 이미지">
					</div>
				</div>
			</div>
			<div class="row" style="display:block; margin-top: 50px;">
				<div class="col-lg-12 col-md-12 col-sm-12 clearfix text-center">					
					<form class="locationmove"action="">
						<button class="locationcheck" type="submit" class="btn btn-large btn-primary"> 나만의 여행 계획 작성하러 가기 </button>
					</form>											
				</div>
			</div>
		</div>
	</section>	
</div>

<script>
	console.log('${sessionScope.id}');
	$('.locationcheck').click(function(){
		if('${sessionScope.id}' == null || '${sessionScope.id}' =="" ){ // 로그인 안햇을떄
			alert('로그인 후에 사용할수 있습니다.');
			console.log('${sessionScope.id}');
			$('.locationmove').attr('action', "<c:url value='/Planit/Before/login.it'/>");			
		}
		else{ // 로그인 시
			console.log('${sessionScope.id}');
			$('.locationmove').attr('action', "<c:url value='/Planit/Before/Location.it'/>");
		}
	});
</script>
