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
   <jsp:include page="topMenu.jsp" flush="false" />
   
    <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>맛있게 식사를!</li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 식당들</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->

  <section class="section1">
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

        <div class="portfolio-centered">
          <div class="recentitems portfolio">

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/hotel.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">서울 호텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_01.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">서울 ㅇㅇ호텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-4 -->

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 web-design motel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/motel.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">부산 ㅇㅇ모텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_02.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">부산 ㅇㅇ모텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-4 -->

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/pen.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">인천 ㅇㅇ펜션</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_03.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">인천 ㅇㅇ펜션</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-4 -->

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/hotel.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">광주 ㅇㅇ호텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_04.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">광주 ㅇㅇ호텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 motel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/motel.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">대구 ㅇㅇ모텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_05.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">대구 ㅇㅇ모텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 hotel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/hotel.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">제주도 ㅇㅇ모텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">제주도 ㅇㅇ모텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->


			<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 motel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/motel2.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">강릉 ㅇㅇ모텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">강릉 ㅇㅇ모텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->
            
            
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/pen.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">속초 ㅇㅇ펜션</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">속초 ㅇㅇ펜션</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->
            
            
            
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/pen.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">목포 ㅇㅇ펜션</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">목포 ㅇㅇ펜션</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->
            
            
            
            
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 web-design">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/hotel.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">Project Name Here</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">Project Name - 6</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->
            
            
             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 pension">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/pen.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">인천 ㅇㅇ펜션</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_03.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">인천 ㅇㅇ펜션</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-4 -->
            
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 motel">
              <div class="he-wrap tpl6 market-item">
                <img src="<c:url value='/images/motel2.PNG'/>" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">제주도 ㅇㅇ모텔</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">제주도 ㅇㅇ모텔</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            <!-- end col-12 -->


          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
  </section>
  <!-- end section -->
  <div>
  페이징
  </div>
  <div class="dmtop">Scroll to Top</div>
</body>
  