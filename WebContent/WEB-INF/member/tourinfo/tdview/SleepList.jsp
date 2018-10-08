<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">
  <!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

<body>
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
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->
<!--*********************************** 
 		 분류별로 표시하는 목록바
 ***********************************-->
  <section class="section1">
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
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>

           <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
           <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
           <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 motel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
           <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 motel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 motel">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/images/list/hotel.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/SleepView.it'/> "
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
						<h3 class="title">롯데호텔서울 이그제큐티브 타워</h3>
						<p>서울특별시 중구 을지로 30<br>
						문의: 02-771-1000</p>
					</div>
            <!-- end col-4 -->
            
            

          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
  </section>
  <!-- end section -->
<!--*********************************** 
 		뻬이징
 ***********************************-->
  <div>
  페이징
  </div>
  <div class="dmtop">Scroll to Top</div>
</body>
