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

  <section class="marketplace-top">
	<div class="row">
				<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
				
					<div class="carousel-inner">
						<!--슬라이드1-->
						<div class="item active"> 
							<img src="<c:url value='/images/par03.jpg'/> " style="width:100%;height: 550px" height="300px" alt="First slide">
							<div class="container">
								<div class="carousel-caption">
								</div>
							</div>
						</div>
						<!--슬라이드1-->
				
						<!--슬라이드2-->
						<div class="item"> 
							<img src="<c:url value='/images/par02.jpg'/>" style="width:100%;height: 550px" data-src="" alt="Second slide">
							<div class="container">
								<div class="carousel-caption">
								</div>
							</div>
						</div>
						<!--슬라이드2-->
						
						<!--슬라이드3-->
						<div class="item"> 
							<img src="<c:url value='/images/par01.jpg'/>" style="width:100%;height: 550px" data-src="sssss"  alt="Third slide">
							<div class="container">
								<div class="carousel-caption">
								</div>
							</div>
						</div>
						<!--슬라이드3-->
					</div>
					
					<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
					<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
				</div>
			</div>
  </section>


  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="general-title text-center">
          <h3>인기 여행지를 한눈에!</h3>
          <p>best</p>
          <hr>
        </div>

        <div class="divider"></div>
        <div id="popularitems" class="owl-carousel">
          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/par02.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름</h3>
                  <a href="single-product.html" class="dmbutton a2" data-animate="fadeIn">Details</a>
                  <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
                  <div class="rating text-center a2" data-animate="fadeIn">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </div>
                  <!-- rating -->
                </div>
                <!-- he bg -->
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          <!-- end col-12 -->

          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/par09.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="single-product.html" class="dmbutton a2" data-animate="fadeIn">Details</a>
                  <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
                  <div class="rating text-center a2" data-animate="fadeIn">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                  <!-- rating -->
                </div>
                <!-- he bg -->
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          <!-- end col-12 -->

          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/par08.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="single-product.html" class="dmbutton a2" data-animate="fadeIn">Details</a>
                  <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
                  <div class="rating text-center a2" data-animate="fadeIn">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                  <!-- rating -->
                </div>
                <!-- he bg -->
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          <!-- end col-12 -->

          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/par07.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="single-product.html" class="dmbutton a2" data-animate="fadeIn">Details</a>
                  <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
                  <div class="rating text-center a2" data-animate="fadeIn">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                  <!-- rating -->
                </div>
                <!-- he bg -->
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          <!-- end col-12 -->

          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/par06.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="single-product.html" class="dmbutton a2" data-animate="fadeIn">Details</a>
                  <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
                  <div class="rating text-center a2" data-animate="fadeIn">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                  </div>
                  <!-- rating -->
                </div>
                <!-- he bg -->
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          <!-- end col-12 -->

          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/par05.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="single-product.html" class="dmbutton a2" data-animate="fadeIn">Details</a>
                  <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
                  <div class="rating text-center a2" data-animate="fadeIn">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </div>
                  <!-- rating -->
                </div>
                <!-- he bg -->
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          <!-- end col-12 -->

        </div>
        <!-- popular items -->
      </div>
      <!-- end content -->

      <div class="general-title text-center">
        <h3>제일 궁금한게~?</h3>
        <p>원하는대로 골라보기</p>
        <hr>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-left">
              <a href="<c:url value='/tourinfo/tdview/tourDetail.it'/>" class=""> <i class="dm-icon fa fa-money fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>관광지</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-bottom">
              <a href="<c:url value='/tourinfo/tdview/foodDetail.it'/>" class=""> <i class="dm-icon fa fa-trophy fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>음식점 정보</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-bottom">
              <a href="<c:url value='/tourinfo/tdview/sleepDetail.it'/>" class=""> <i class="dm-icon fa fa-heart-o fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>숙박 정보</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-right">
              <a href="#" class=""> <i class="dm-icon fa fa-book fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>리뷰</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="divider"></div>
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->


    <div class="container">
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">About us</h4>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s..</p>
        <a class="button small" href="#">read more</a>
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Recent Posts</h4>
        <ul class="recent_posts">
          <li>
            <a href="home1.html#">
						<img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here</a>
            <a class="readmore" href="#">read more</a>
          </li>
          <li>
            <a href="home1.html#">
						<img src="img/recent_post_02.png" alt="" />Design Is In The Air</a>
            <a class="readmore" href="#">read more</a>
          </li>
        </ul>
        <!-- recent posts -->
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Get In Touch</h4>
        <ul class="contact_details">
          <li><i class="fa fa-envelope-o"></i> info@yoursite.com</li>
          <li><i class="fa fa-phone-square"></i> +34 5565 6555</li>
          <li><i class="fa fa-home"></i> Some Fine Address, 887, Madrid, Spain.</li>
          <li><a href="#"><i class="fa fa-map-marker"></i> View large map</a></li>
        </ul>
        <!-- contact_details -->
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Flickr Stream</h4>
        <ul class="flickr">
          <li><a href="#"><img alt="" src="img/flickr_01.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_02.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_03.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_04.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_05.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_06.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_07.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_08.jpg"></a></li>
        </ul>
      </div>
      <!-- end widget -->
    </div>

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

