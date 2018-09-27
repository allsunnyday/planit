<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
  <link href="lib/hover/hoverex-all.css" rel="stylesheet">
  <link href="lib/jetmenu/jetmenu.css" rel="stylesheet">
  <link href="lib/owl-carousel/owl-carousel.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/colors/blue.css">

  <!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

<body>
  <div class="topbar clearfix">
    <div class="container">
      <div class="col-lg-12 text-right">
        <div class="social_buttons">
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+"><i class="fa fa-google-plus"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS"><i class="fa fa-rss"></i></a>
        </div>
      </div>
    </div>
    <!-- end container -->
  </div>
  <!-- end topbar -->

  <header class="header">
    <div class="container">
      <div class="site-header clearfix">
        <div class="col-lg-3 col-md-3 col-sm-12 title-area">
          <div class="site-title" id="title">
            <a href="#" title="">
              <h4>PLAN-<span>IT</span></h4>
            </a>
          </div>
        </div>
        <!-- title area -->
        <div class="col-lg-9 col-md-12 col-sm-12">
          <div id="nav" class="right">
            <div class="container clearfix">
              <ul id="jetmenu" class="jetmenu blue">
                <li ><a href="<c:url value='/member/tourinfo/listpick/list/listMain.it'/>">Home</a>
                </li>
                <li><a href="#">구석구석 떠나볼까</a>
                  <ul class="dropdown">
                    <li><a href="#">서울</a></li>
                    <li><a href="#">인천/경기도</a></li>
                    <li><a href="#">강원도</a></li>
                    <li><a href="#">경상도</a></li>
                    <li><a href="#">전라도</a></li>
                    <li><a href="#">충청도</a></li>
                    <li><a href="#">제주도</a></li>
                  </ul>
                </li>
                <li><a href="#">어디로 갈까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/tourDetail.it'/>">관광지 정보</a></li>
                    <li><a href="#">축제ο행사</a></li>
                    <li><a href="#">한국관광 100선</a></li>
                    <li><a href="#">웰니스 관광 25선</a></li>
                    <li><a href="#">방방곡곡 시티투어</a></li>
                  </ul>
                </li>
                <li><a href="#">무엇을 먹을까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/foodDetail.it'/>">음식점 정보</a></li>
                    <li><a href="#">맛집 랭킹!</a></li>
                    <li><a href="#">구석구석 맛골목</a></li>
                  </ul>
                </li>
                <li><a href="#">어디서 잘까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/sleepDetail.it'/>">숙박업소 정보</a></li>
                    <li><a href="#">숙박업소 랭킹!</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
          <!-- nav -->
        </div>
        <!-- title area -->
      </div>
      <!-- site header -->
    </div>
    <!-- end container -->
  </header>
  <!-- end header -->

  
  
  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>한번자는곳 좋은곳에서!</li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 숙소들</h2>
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
            <li><a href="#" class="dmbutton2" data-filter=".hotel">호텔</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".motel">여관/모텔</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".pension">펜션</a></li>
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

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/prettyphoto/js/prettyphoto.js"></script>
  <script src="lib/isotope/isotope.min.js"></script>
  <script src="lib/hover/hoverdir.js"></script>
  <script src="lib/hover/hoverex.min.js"></script>
  <script src="lib/unveil-effects/unveil-effects.js"></script>
  <script src="lib/owl-carousel/owl-carousel.js"></script>
  <script src="lib/jetmenu/jetmenu.js"></script>
  <script src="lib/animate-enhanced/animate-enhanced.min.js"></script>
  <script src="lib/jigowatt/jigowatt.js"></script>
  <script src="lib/easypiechart/easypiechart.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
  