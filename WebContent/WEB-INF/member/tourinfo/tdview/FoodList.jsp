<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
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
        <h2>PLAN-IT에 등록되어 있는 식당들(총 ${totalRecordCount}개)</h2>
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
<div class="wrapper text-center">
			<form id="justAction" action="<c:url value='/tourinfo/tdview/FoodList.it?'/>" method="GET" name="searchForm" class="form-inline">
			<input type="hidden" name="contenttype" value="39">
			<div class="form-group" >
				<select name="areacode" id="areacode" class="dmbutton2" title="조회지역" style="display: inline-block;">
						<option value="">지역선택</option>
						<option value="">전체</option>
						<option value="1" >서울</option>
						<option value="2" >인천</option>
						<option value="3" >대전</option>
						<option value="4" >대구</option>
						<option value="5" >광주</option>
						<option value="6" >부산</option>
						<option value="7" >울산</option>
						<option value="8" >세종특별자치시</option>
						<option value="31" >경기도</option>
						<option value="32" >강원도</option>
						<option value="33" >충청북도</option>
						<option value="34" >충청남도</option>
						<option value="35" >경상북도</option>
						<option value="36" >경상남도</option>
						<option value="37" >전라북도</option>
						<option value="38" >전라남도</option>
						<option value="39" >제주도</option>
				</select>
				</div>
<!-- *************************************** cat2 선택  **************************************** -->
				<div data-type="multiple" class="form-group" style="display: inline-block;" >
					<ul class="jetmenu ">
						<li><button name="all" value="" class="button ov" type="button">전체</button></li>
						<li>
						<button name="category" value="F0101" class="button " type="button">한식</button>
						</li>
						<li>
						<button name="category" value="F0102" class="button " type="button">양식</button>
						</li>
						<li>
						<button name="category" value="F0104" class="button " type="button">중식</button>
						</li>
						<li>
						<button name="category" value="F0103" class="button " type="button">일식</button>
						</li>
						<li>
						<button name="category" value="F0105" class="button " type="button">아시아식</button>
						</li>
						<li>
						<button name="category" value="F0108" class="button " type="button">채식</button>
						</li>
						<li>
						<button name="category" value="F0109" class="button " type="button">카페&전통찻집</button>
						</li>
					</ul>
					
				</div>
				<div class="form-group" >
					<button type="submit" class="dmbutton2" value="조회">조회</button>
					<a class="dmbutton2 ov" href="<c:url value='/tourinfo/tdview/FoodList.it?contenttype=39'/>" >조회순</a>
					<c:if test="${not empty areacode}">
	               <a class="dmbutton2" href="<c:url value='/tourinfo/tdview/FoodList.it?contenttype=39&areacode=${areacode}&orderColumn=title'/>" >제목순</a>
	               </c:if>
	               <c:if test="${empty areacode }">
	               <a class="dmbutton2" href="<c:url value='/tourinfo/tdview/FoodList.it?contenttype=39&orderColumn=title'/>" >제목순</a>
	               </c:if>
				</div>
				
			
				
				
				
				<!-- <input type="hidden" name="gotoPage" value=""/>
				<input type="hidden" name="listType" value="cdesc"/>
				<input type="hidden" name="cid" value=""/>
				<input type="hidden" name="out_service" value=""/> -->
			</form>
		</div>
<!--         <nav class="portfolio-filter clearfix"> -->
<!--           <ul> -->
<!--             <li><a href="#" class="dmbutton2" data-filter="*">모두보기</a></li> -->
<!--             <li><a href="#" class="dmbutton2" data-filter=".A05020100">한식</a></li> -->
<!--             <li><a href="#" class="dmbutton2" data-filter=".A05020400">중식</a></li> -->
<!--             <li><a href="#" class="dmbutton2" data-filter=".A05020200">서양식</a></li> -->
<!--             <li><a href="#" class="dmbutton2" data-filter=".A05020300">일식</a></li> -->
<!--           </ul> -->
<!--         </nav> -->
<div class="divider"></div>

<!--*********************************** 각 음식점 정보 (data-rel 지워줘야 넘어감) ***********************************-->
        <div class="portfolio-centered">
          <div class="recentitems portfolio">

<c:forEach  var="record" items="${food}">
     <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 ${record.cat3}">
              <div class="he-wrap tpl6 market-item">
                <!-- empty image일 경우에는 서버의 임시 이미지와 연결한다.  -->
                <c:if test="${empty record.firstimage }">
                <img src="<c:url value='/Upload/Tour/tempimage.png'/>" alt="">
                </c:if>
                <c:if test="${not empty record.firstimage }">
                <img src='${record.firstimage}' alt="">
                </c:if>
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
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
         action="<c:url value='/tourinfo/tdview/FoodList.it?contenttype=39&searchColumn=title&searchColumn=tel'/>">
         <input type="hidden" name="title">
         <input type="hidden" name="tel">
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
  