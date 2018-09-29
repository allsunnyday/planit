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
        <li>재밌게 여행을!</li>
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

 <nav class="portfolio-filter clearfix">
          <ul>
            <li><a href="#" class="dmbutton2" data-filter="*">모두보기(몇개인지 뿌려주기)</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".s">서울</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".i">인천/경기도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".g">강원도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".k">경상도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".c">충청도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".j">전라도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".je">제주도</a></li>
            <button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary" >최신순</button>
            <button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-danger" >인기순</button>
          </ul>
        

</nav>
			<div class="portfolio-centered">
				<div class="recentitems portfolio">
					<div
						class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 korea">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/main_theme/img/portfolio_01.jpg'/> " alt="">
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
						<h3 class="title">국립대운산치유의숲</h3>
						<p>울산광역시 울주군 온양읍 대운상대길 22<br>
						문의: 052-555-4125</p>
					</div>
					<!-- end col-4 -->

					<div
						class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 web-design graphic-design">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/main_theme/img/portfolio_02.jpg'/> " alt="" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">Project Name
										Here</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_02.jpg"
										class="dmbutton a2" data-animate="bounceInLeft"><i
										class="fa fa-search"></i></a> <a href="#" class="dmbutton a2"
										data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">국립대운산치유의숲</h3>
						<p>울산광역시 울주군 온양읍 대운상대길 22<br>
						문의: 052-555-4125</p>
					</div>
					<!-- end col-4 -->

					<div
						class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 graphic-design">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/main_theme/img/portfolio_03.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">Project Name
										Here</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_03.jpg"
										class="dmbutton a2" data-animate="bounceInLeft"><i
										class="fa fa-search"></i></a> <a href="#" class="dmbutton a2"
										data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">국립대운산치유의숲</h3>
						<p>울산광역시 울주군 온양읍 대운상대길 22<br>
						문의: 052-555-4125</p>
					</div>
					<!-- end col-4 -->

					<div
						class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 mockups">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/main_theme/img/portfolio_04.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">Project Name
										Here</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_04.jpg"
										class="dmbutton a2" data-animate="bounceInLeft"><i
										class="fa fa-search"></i></a> <a href="#" class="dmbutton a2"
										data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">국립대운산치유의숲</h3>
						<p>울산광역시 울주군 온양읍 대운상대길 22<br>
						문의: 052-555-4125</p>
					</div>
					<!-- end col-12 -->

					<div
						class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 web-design">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/main_theme/img/portfolio_05.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">Project Name
										Here</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_05.jpg"
										class="dmbutton a2" data-animate="bounceInLeft"><i
										class="fa fa-search"></i></a> <a href="#" class="dmbutton a2"
										data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">국립대운산치유의숲</h3>
						<p>울산광역시 울주군 온양읍 대운상대길 22<br>
						문의: 052-555-4125</p>
					</div>
					<!-- end col-12 -->

					<div
						class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 web-design">
						<div class="he-wrap tpl6 market-item">
							<img src="<c:url value='/main_theme/img/portfolio_06.jpg'/> " alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">Project Name
										Here</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_06.jpg"
										class="dmbutton a2" data-animate="bounceInLeft"><i
										class="fa fa-search"></i></a> <a href="#" class="dmbutton a2"
										data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">국립대운산치유의숲</h3>
						<p>울산광역시 울주군 온양읍 대운상대길 22<br>
						문의: 052-555-4125</p>
					</div>
					<!-- end col-12 -->

				</div>
				<!-- portfolio -->
			</div>
			<!-- portfolio container -->
			<div class="divider"></div>
		</div>
		<!-- end container -->
	</div>
<!-- end section -->
