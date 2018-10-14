<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--************************************
네비게이터가 필요
*************************************** -->
<jsp:include page="topMenu.jsp" flush="false" />
<!--************************************
 아래 리스트 
*************************************** -->

    <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>
		<c:choose>
            <c:when test="${cat1 == 'total'}">관광지정보</c:when>
            <c:when test="${cat1 == 'event'}">축제/행사</c:when>
            <c:when test="${cat1 == 'well'}">웰니스관광 25선</c:when>
            <c:when test="${cat1 == 'best'}">한국관광100선</c:when>
            <c:when test="${cat1 == 'citytour'}">방방곡곡 시티투어</c:when>
            <c:otherwise>error!</c:otherwise>
		</c:choose>
		</li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 관광지</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="잘 찾아보세요..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->
	<div class="container clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="divider"></div>
			
<!-- ****************************************
 		지역별 버튼
**************************************** -->

<div>
 	<nav class="portfolio-filter clearfix">
 	
          <ul>
           
            <li class="dropdown">
					<a class="dmbutton2"  data-toggle="dropdown" role="menu">
							도시별 보기&nbsp
					<span class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu" >
						<li><a href="#">서울</a></li>
						<li><a href="#">인천</a></li>
						<li><a href="#">수원</a></li>
						<li><a href="#">안산</a></li>
						<li><a href="#">일산</a></li>
						<li><a href="#">부산</a></li>
						<li><a href="#">강릉</a></li>
						<li><a href="#">춘천</a></li>
						<li><a href="#">대구</a></li>
						<li><a href="#">광주</a></li>
						<li><a href="#">목포</a></li>	
						<li><a href="#">제주도</a></li>
						<li><a href="#">...</a></li>					
					</ul>
				</li>

 			
 				 
            <li><a href="#" class="dmbutton2" data-filter="*">모두보기(몇개인지 뿌려주기)</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".s">서울</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".i">인천/경기도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".g">강원도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".k">경상도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".c">충청도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".j">전라도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".je">제주도</a></li>
            <button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-danger" >인기순</button>
          </ul>
          
	</nav>
</div>
<!-- ****************************************
 	관광지 정보 간단한 사진과 마우스 올리면 디테일로 넘어가게
**************************************** -->	
			<div class="portfolio-centered">
				<div class="recentitems portfolio">
				
				<c:forEach var="record" items="${tour}" >
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 s">
						<div class="he-wrap tpl6 market-item">
							<img src="${record.firstimage}" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/TourView.it'/> "
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
						<h3 class="title">${record.title }</h3>
						<p>${record.addr1 }<br>
						문의: ${record.tel }</p>
					</div>
					</c:forEach>
					<!-- end col-4 -->
			
					
<!-- 					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 je"> -->
<!-- 						<div class="he-wrap tpl6 market-item"> -->
<%-- 							<img src="<c:url value='/main_theme/img/portfolio_01.jpg'/> " alt=""> --%>
<!-- 							<div class="he-view"> -->
<!-- 								<div class="bg a0" data-animate="fadeIn"> -->
<!-- 									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3> -->
<!-- 									<a data-rel=""  -->
<%-- 									href="<c:url value='/planit/search/list/TourView.it'/> " --%>
<!-- 										class="dmbutton a2" data-animate="bounceInLeft"> -->
										
<!-- 										<i class="fa fa-search"></i></a> -->
<!-- 									<div class="portfolio_category text-center a2" -->
<!-- 										data-animate="fadeIn"></div> -->
<!-- 									portfolio_category -->
<!-- 								</div> -->
<!-- 								he bg -->
<!-- 							</div> -->
<!-- 							he view -->
<!-- 						</div> -->
<!-- 						he wrap -->
<!-- 						<h3 class="title">국립대운산치유의숲</h3> -->
<!-- 						<p>울산광역시 울주군 온양읍 대운상대길 22<br> -->
<!-- 						문의: 052-555-4125</p> -->
<!-- 					</div> -->
<!-- 					end col-4 -->
<!-- 					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 k"> -->
<!-- 						<div class="he-wrap tpl6 market-item"> -->
<%-- 							<img src="<c:url value='/main_theme/img/portfolio_01.jpg'/> " alt=""> --%>
<!-- 							<div class="he-view"> -->
<!-- 								<div class="bg a0" data-animate="fadeIn"> -->
<!-- 									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3> -->
<!-- 									<a data-rel=""  -->
<%-- 									href="<c:url value='/planit/search/list/TourView.it'/> " --%>
<!-- 										class="dmbutton a2" data-animate="bounceInLeft"> -->
										
<!-- 										<i class="fa fa-search"></i></a> -->
<!-- 									<div class="portfolio_category text-center a2" -->
<!-- 										data-animate="fadeIn"></div> -->
<!-- 									portfolio_category -->
<!-- 								</div> -->
<!-- 								he bg -->
<!-- 							</div> -->
<!-- 							he view -->
<!-- 						</div> -->
<!-- 						he wrap -->
<!-- 						<h3 class="title">국립대운산치유의숲</h3> -->
<!-- 						<p>울산광역시 울주군 온양읍 대운상대길 22<br> -->
<!-- 						문의: 052-555-4125</p> -->
<!-- 					</div> -->
<!-- 					end col-4 -->
<!-- 					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 i"> -->
<!-- 						<div class="he-wrap tpl6 market-item"> -->
<%-- 							<img src="<c:url value='/main_theme/img/portfolio_01.jpg'/> " alt=""> --%>
<!-- 							<div class="he-view"> -->
<!-- 								<div class="bg a0" data-animate="fadeIn"> -->
<!-- 									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3> -->
<!-- 									<a data-rel=""  -->
<%-- 									href="<c:url value='/planit/search/list/TourView.it'/> " --%>
<!-- 										class="dmbutton a2" data-animate="bounceInLeft"> -->
										
<!-- 										<i class="fa fa-search"></i></a> -->
<!-- 									<div class="portfolio_category text-center a2" -->
<!-- 										data-animate="fadeIn"></div> -->
<!-- 									portfolio_category -->
<!-- 								</div> -->
<!-- 								he bg -->
<!-- 							</div> -->
<!-- 							he view -->
<!-- 						</div> -->
<!-- 						he wrap -->
<!-- 						<h3 class="title">국립대운산치유의숲</h3> -->
<!-- 						<p>울산광역시 울주군 온양읍 대운상대길 22<br> -->
<!-- 						문의: 052-555-4125</p> -->
<!-- 					</div> -->
<!-- 					end col-4 -->
<!-- 					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 g"> -->
<!-- 						<div class="he-wrap tpl6 market-item"> -->
<%-- 							<img src="<c:url value='/main_theme/img/portfolio_01.jpg'/> " alt=""> --%>
<!-- 							<div class="he-view"> -->
<!-- 								<div class="bg a0" data-animate="fadeIn"> -->
<!-- 									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3> -->
<!-- 									<a data-rel=""  -->
<%-- 									href="<c:url value='/planit/search/list/TourView.it'/> " --%>
<!-- 										class="dmbutton a2" data-animate="bounceInLeft"> -->
										
<!-- 										<i class="fa fa-search"></i></a> -->
<!-- 									<div class="portfolio_category text-center a2" -->
<!-- 										data-animate="fadeIn"></div> -->
<!-- 									portfolio_category -->
<!-- 								</div> -->
<!-- 								he bg -->
<!-- 							</div> -->
<!-- 							he view -->
<!-- 						</div> -->
<!-- 						he wrap -->
<!-- 						<h3 class="title">국립대운산치유의숲</h3> -->
<!-- 						<p>울산광역시 울주군 온양읍 대운상대길 22<br> -->
<!-- 						문의: 052-555-4125</p> -->
<!-- 					</div> -->
<!-- 					end col-4 -->
<!-- 					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 s"> -->
<!-- 						<div class="he-wrap tpl6 market-item"> -->
<%-- 							<img src="<c:url value='/main_theme/img/portfolio_01.jpg'/> " alt=""> --%>
<!-- 							<div class="he-view"> -->
<!-- 								<div class="bg a0" data-animate="fadeIn"> -->
<!-- 									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3> -->
<!-- 									<a data-rel=""  -->
<%-- 									href="<c:url value='/planit/search/list/TourView.it'/> " --%>
<!-- 										class="dmbutton a2" data-animate="bounceInLeft"> -->
										
<!-- 										<i class="fa fa-search"></i></a> -->
<!-- 									<div class="portfolio_category text-center a2" -->
<!-- 										data-animate="fadeIn"></div> -->
<!-- 									portfolio_category -->
<!-- 								</div> -->
<!-- 								he bg -->
<!-- 							</div> -->
<!-- 							he view -->
<!-- 						</div> -->
<!-- 						he wrap -->
<!-- 						<h3 class="title">국립대운산치유의숲</h3> -->
<!-- 						<p>울산광역시 울주군 온양읍 대운상대길 22<br> -->
<!-- 						문의: 052-555-4125</p> -->
<!-- 					</div> -->
<!-- 					end col-4 -->
<!-- 				portfolio -->
			</div>
			<!-- portfolio container -->
			<div class="divider"></div>
					<form class="form-inline" role="form"  action="<c:url value='/Planit/admin/Employee.do'/> " id="frm" >
						<div class="form-group">
							<label class="sr-only" for="searchColumn">목록</label> 
							<select class="form-control" id="searchColumn" name="searchColumn">
								<option value="">전체</option>
								<option value="tourname">이름</option>
								<option value="addr">주소</option>
								<option value="tel">전화번호</option>
							</select>
						</div>
						<div class="form-group">
							<label class="sr-only" for="searchWord"></label>
							<input type="text" name="searchWord" class="form-control"	id="searchWord" placeholder="키워드 입력">
						</div>
						<a href="javascript:search()" class="btn btn-success" style="margin-bottom: 10px">검색</a>
					</form>
		</div>
		
		<!-- end container -->
	</div>
<!-- end section -->
</div>
