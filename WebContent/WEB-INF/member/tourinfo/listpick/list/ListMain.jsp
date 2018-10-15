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
    
    #iii1{
    padding-right:20px;
     margin-top:30px; 
     padding-left:10px;
     width:420px
    }
        #iii2{
    padding-right:20px;
     margin-top:30px; 
     width:460px
    }
        #iii3{
    padding-right:20px;
     margin-top:30px; 
     width:460px
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
                   <li data-target="#carousel-example-generic" data-slide-to="0"class="active" ></li>
                   <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                   <li data-target="#carousel-example-generic" data-slide-to="2"class="active"></li>
                 </ol>
               <div class="carousel-inner">
                  <!--슬라이드1-->
                  <!-- --------------------------------------------관광지-------------------------- -->
                     
                        <div class="item active"> 
                           <!--  아래 이미지는 배경이 된다. -->
                           <a href="#">
                           <img src="<c:url value='https://images.unsplash.com/photo-1472387040940-3ae0cdbf127d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4aed91054fb429606c129dc3dd75acf2&auto=format&fit=crop&w=1256&q=80'/>" 
                                    style="width:100%;height: 550px" height="300px" alt="First slide"></a>
                           <div class="review-overlay">
                                  <div class="text" >
                                  
                                  <c:forEach var="record" items="${tour}" end="1">
                                     <img id="iii1" src="${record.firstimage}">
                                  </c:forEach>
                                     
                                  <c:forEach var="record" items="${food}" end="1">
                                  <img id="iii2" src="${record.firstimage}">
                               </c:forEach>
                                  
                               <c:forEach var="record" items="${sleep}" end="1">
                                  <img id="iii3" src="${record.firstimage}">
                               </c:forEach>
                                  
                                 </div>
                           </div>
                           <div class="container">
                        </div>
                     </div>
                     <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
                  <!--슬라이드1-->
               </div>
               
            </div>
         </div>
  </section>

<!-- ****************************************
       인기여행지들 보여주는 캐러셀
**************************************** -->
  <section class="section1">
    <div class="container clearfix">
     <div class="general-title text-center">
          <h3>인기 여행지를 한눈에!</h3>
          <p>best</p>
          <hr>
        </div>
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

       
        </div>
         <div class="divider"></div>
<!-- ****************************************
       핫여행지 목록들()
**************************************** -->
   <c:forEach var="record" items="${tour}" begin="1" end="1">
        <div id="popularitems" class="owl-carousel">
          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
            <div class="hot-tour">
           
              <img class="lazyOwl" data-src='${record.firstimage }' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              </div>
              <!-- he view -->
            </div>
            <!-- he wrap -->
          </div>
          
          <!-- end col-12 -->


          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src='${record.firstimage }' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
        <div class="divider"></div>
        <div id="popularitems" class="owl-carousel">
          <div class="col-lg-12">
            <div class="he-wrap tpl6 market-item">
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
              <img class="lazyOwl" data-src='${record.firstimage}' alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <h3 class="a1" data-animate="fadeInDown">관광지이름 Item</h3>
                  <a href="<c:url value='/planit/search/list/TourView.it'/>" class="dmbutton a2" data-animate="fadeIn">Details</a>
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
</c:forEach>

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


    