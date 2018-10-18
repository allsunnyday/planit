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

   <jsp:include page="topMenu.jsp" flush="false" />
   
    <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>
          <c:choose>
            <c:when test="${food=='foodinfo'}">맛있게 식사를!</c:when>
            <c:when test="${food=='foodrank'}">음식점 순위를 알아보자!</c:when>
            <c:when test="${food=='foodstreet'}">맛집 파헤치기!</c:when>
            <c:otherwise>조건을 만족하지 않는 경우</c:otherwise>
	     </c:choose>
        
        </li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 식당들</h2>
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
            <li><a href="#" class="dmbutton2" data-filter=".korea">한식</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".china">중식</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".western">양식</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".japan">일식</a></li>
          </ul>
        </nav>


<!--*********************************** 
 		각 음식점 정보 (data-rel 지워줘야 넘어감)
 ***********************************-->
        <div class="portfolio-centered">
          <div class="recentitems portfolio">

<c:forEach  var="record" items="${food}">
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 western">
              <div class="he-wrap tpl6 market-item">
                <c:if test="${empty record.firstimage }">
                <img src="<c:url value='/Upload/Tour/tempimage.png'/>" alt="">
                </c:if>
                <c:if test="${not empty record.firstimage }">
                <img src='${record.firstimage}' alt="">
                </c:if>
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3>
                    <a data-rel="" href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/> " 
                    class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">${record.title}</h3>
              <p>${record.addr1}</br>
              	문의:${record.tel}
              </p>
            </div>
            </c:forEach>
            <!-- end col-4 -->


          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
  <!-- end section -->
  </div>
<!--*********************************** 
 		페이징 준비중
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
					<option value="title">식당명</option>
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
  