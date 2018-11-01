<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<script>
	
</script>

<!--**********************************************************
포토북 디자인을 고르는 페이지   
************************************************************** -->
<div style="padding-top: 60px"></div>
<section class="section1">
	<div class="container clearfix">
	    <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
		
			<h3>포토북만들기 3 step </h3>
			
			<div class="f1-steps text-center">
				<div class="f1-progress">
					<div class="f1-progress-line" data-now-value="16.66"
						data-number-of-steps="3" style="width: 16.66%;"></div>
				</div>
				<div class="f1-step activated">
					<div class="services_lists_boxes_icon_none text-center">
						<i class="fa fa-book fa-2x"></i>
					</div>
					<h4>디자인 고르기</h4>
				</div>
				<div class="f1-step activated">
					<div class="services_lists_boxes_icon_none text-center">
						<i class="fa fa-film fa-2x"></i>
					</div>
					<h4>미리보기</h4>
				</div>
				<div class="f1-step activated">
					<div class="services_lists_boxes_icon_none text-center">
						<i class="fa fa-download fa-2x"></i>
					</div>
					<h4>내보내기</h4>
				</div>
			</div>
	</div>
</div>
</section>

<section class="section1">
    <div class="container clearfix">
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="portfolio-centered">
          <div class="recentitems portfolio">
            <div class="modalforsample"></div><!-- 모달을 동적으로 추가하기 위한 다이브 -->
            <a href="<c:url value='/download/book.it?filename=${filename}'/> ">download</a>
            <a href="javascript: history.back(3);">나의 리뷰로 돌아가기 </a>
          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
      </div>
  </section>
  <!-- end section -->

