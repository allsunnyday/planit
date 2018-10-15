<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

<style>
img{
max-width: 100%;
	width: 600px;
	max-height: 100%;
	height : 280px;
}

</style>

 <!--************************************** 
 	삽입
 **************************************-->
<jsp:include page="topMenu.jsp" flush="false" />
<!--************************************** 
 	삽입
 **************************************-->
  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>
         <c:choose>
            <c:when test="${sleep=='sleepinfo'}">한번자는곳 좋은곳에서!</c:when>
            <c:when test="${sleep=='sleeprank'}">인기 많은 숙소 확인</c:when>
            <c:otherwise>조건을 만족하지 않는 경우</c:otherwise>
		</c:choose>
        </li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 숙소들</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->
<!--*********************************** 
 		 분류별로 표시하는 목록바
 ***********************************-->
    <div class="container clearfix">
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="divider"></div>

        <nav class="portfolio-filter clearfix">
          <ul>
            <li><a href="#" class="dmbutton2" data-filter="*">모두보기(몇개인지 뿌려주기)</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".hotel">호텔</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".motel">여관/모텔</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".pension">펜션</a></li>
          </ul>
        </nav>

        <div class="portfolio-centered">
          <div class="recentitems portfolio">
<!--*********************************** 
 		각 숙박 업소 정보
 ***********************************-->
 <c:forEach var="record" items="${sleep}">
            <div id="tourimage" class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
						<div class="he-wrap tpl6 market-item">
							<img src='${record.firstimage}' alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}&contenttype=32'/> "
										class="dmbutton a2" data-animate="bounceInLeft">
										
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">${record.title}</h3>
						문의: {record.tel}</p>
					</div>

</c:forEach>

          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
  <!-- end section -->
  </div></div>
<!--*********************************** 
 		뻬이징
 ***********************************-->
	<div class="row">
		<div class="col-md-12">${pagingString}</div>
	</div>

<div class="row">
	<div class="text-center">
		<form class="form-inline" method="post"
			action="<c:url value='#'/>">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="all">전체검색</option>
					<option value="title">업소명</option>
					<option value="tel">전화번호</option>
				</select>
			</div>
			<div class="form-group" >
				<input type="text" name="searchWord" class="form-control" />
			</div>
			<button style="margin-bottom: 10px"type="submit" class="btn btn-primary">검색</button>

		</form>
	</div>
</div>
