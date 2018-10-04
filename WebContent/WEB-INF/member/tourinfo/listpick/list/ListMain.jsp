<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <style>
 	.item{
 	position:relative;
 	}
 	.item .text{
 	position:absolute;
 	top:50px;
 	margin-left:50px;
 	color:#FFF;
 	}
 </style>
 <!-- ****************************************
 		탑메뉴 삽입
 **************************************** -->
<jsp:include page="../../tdview/topMenu.jsp" flush="false" />


<!-- ****************************************
 		가장 핫한거 하나씩 보여줄 캐러셀
**************************************** -->
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
							<img src="<c:url value='/images/list/222.jpg'/> " style="width:100%;height: 550px" height="300px" alt="First slide">
							<div class="container">
							<div class="text">
							<p><span style="font-size:5.0em;color:white;">경복궁입니다</span></p>
							</div>
							</div>
						</div>
						<!--슬라이드1-->
				
						<!--슬라이드2-->
						<div class="item"> 
							<img src="<c:url value='/images/list/andong.jpg'/>" style="width:100%;height: 550px" data-src="" alt="Second slide">
							<div class="container">
								<div class="carousel-caption">
								</div>
							</div>
						</div>
						<!--슬라이드2-->
						
						<!--슬라이드3-->
						<div class="item"> 
							<img src="<c:url value='/images/list/andong.jpg'/>" style="width:100%;height: 550px" data-src="sssss"  alt="Third slide">
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

<!-- ****************************************
 		인기여행지들 보여주는 캐러셀
**************************************** -->
  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="general-title text-center">
          <h3>인기 여행지를 한눈에!</h3>
          <p>best</p>
        </div>
        </div>

<!-- ****************************************
 		목록들()
**************************************** -->
        <div class="divider"></div>
        <div id="popularitems" class="owl-carousel">
          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름</h3>
                  <a href="<c:url value='/tourinfo/tdview/TourList.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
      
      <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">


<!-- ****************************************
 		목록들()
**************************************** -->
        <div class="divider"></div>
        <div id="popularitems" class="owl-carousel">
          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름</h3>
                  <a href="<c:url value='/tourinfo/tdview/TourList.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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
              <img class="lazyOwl" data-src="<c:url value='/images/list/andong.jpg'/>" alt="">
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


<!-- ****************************************
 		해당목록으로 넘어가게하는 아이콘
**************************************** -->
      <div class="general-title text-center">
        <h3>제일 궁금한게~?</h3>
        <p>원하는대로 골라보기</p>
        <hr>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-left">
              <a href="<c:url value='/tourinfo/tdview/TourList.it'/>" class=""> <i class="dm-icon fa fa-money fa-3x"></i> </a>
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
              <a href="<c:url value='/tourinfo/tdview/FoodList.it'/>" class=""> <i class="dm-icon fa fa-trophy fa-3x"></i> </a>
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
              <a href="<c:url value='/tourinfo/tdview/SleepList.it'/>" class=""> <i class="dm-icon fa fa-heart-o fa-3x"></i> </a>
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


    