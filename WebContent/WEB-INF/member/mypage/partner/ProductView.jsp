<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- *******************************************
	베이지색 검색창 달린 거
************************************************ -->
<section class="post-wrapper-top" style="margin-top: 65px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="index.html">Product</a></li>
				<li>${partnerRecord.p_id }</li>
			</ul>
			<h2>Product Detail</h2>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->
			<div class="search-bar">
				<form action="" method="get">
					<fieldset>
						<input type="image" src="img/pixel.gif" class="searchsubmit"
							alt="" /> <input type="text" class="search_text showtextback"
							name="s" id="s" value="Search..." />
					</fieldset>
				</form>
			</div>
			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
  <section class="marketplace-top">
    <div id="market-wrapper">
    <%--   <div class="item_image">
       	 <img data-effect="fade" class="aligncenter" width="1260" height="400" src="<c:url value='/Upload/Partner/Product/${productRecord.roomimg1}'/>" alt="">
      </div> --%>
      <!-- end item_image -->
    </div>
  </section>

  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="general-title text-center">
          <h3>${productRecord.roomtitle }</h3>
          <p>ÜBER PREMIUM VEGETABLE TANNED ITALIAN LEATHER</p>
          <hr>
        </div>

        <div class="divider"></div>

        <div class="item_details">
<!-- ****************
		중간 사진보기 캐러샐
		***************-->

		<!-- 내용 시작   -->
		<div class="row">
			<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!--페이지-->
			
				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active"> 
						<img src="<c:url value='/Upload/Partner/Product/${productRecord.roomimg1}'/> " style="width:100%;height: 600px" height="450px" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1 class="carousel-h1"></h1>
								
							</div>
						</div>
					</div>
					<!--슬라이드1-->
			
					<!--슬라이드2-->
					<div class="item"> 
						<img src="<c:url value='/Upload/Partner/Product/${productRecord.roomimg2}'/>" style="width:100%;height: 600px" height="450px" data-src="" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1 class="carousel-h1"></h1>
							
							</div>
						</div>
					</div>
					<!--슬라이드2-->
					
					<!--슬라이드3-->
					<div class="item"> 
						<img src="<c:url value='/Upload/Partner/Product/${productRecord.roomimg3}'/>" style="width:100%;height: 600px" height="450px" data-src=""  alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1 class="carousel-h1"></h1>
								
							</div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>
				
				<!--이전, 다음 버튼-->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
				<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
			</div>
		</div>
		
          <div class="col-lg-3 col-md-3 col-sm-12" style="margin-top:50px;height: 150px">
            <div class="theme_details">
            
              <div class="details_section"  style="">
                <h3>Item Details</h3>
                <ul>
                  <li class="release">Size(평수): <span>${productRecord.roomsize1 }</span></li>
                  <li class="release">Size(평방미터): <span>${productRecord.roomsize2 }</span></li>
                  <li class="release">Base Count: <span>${productRecord.roombasecount }</span></li>
                  <li class="release">Max Count: <span>${productRecord.roommaxcount }</span></li>
                  
                 <!--  <li class="version">Size: <span>11.8” X 7.87” X 1.57</span></li>
                  <li class="release">Release Date: <span>28 February, 2014</span></li>
                  <li class="designer">Designer: <span>Matt Stinson</span></li>
                  <li class="designer">Material: <span>Tanned Italian Leather</li> -->
                                    </ul>
                            </div>
                        </div>
                    </div><!-- col-lg-3 -->
		
 	                  
  					<div class="col-lg-6 col-md-6 col-sm-12" style="margin-top:50px;">
                        <div class="theme_details">
                         <div class="details_section"  style="">
                            <div class="item-description" style="height:215px">
                            <h3>Room Introduce</h3>
                            <c:if test="${productRecord.roomintro eq null}" var="result">
                            	<p>당신의 놀라운 객실을 소개해주세요!</p>
                            </c:if>
                            <c:if test="${not empty productRecord.roomintro }">
                                <p>${productRecord.roomintro }</p>
                            </c:if>
                              </div>
                            </div><!-- item-description -->
                        </div><!-- theme_details -->
                    </div><!-- col-lg-6 -->
                    <div class="col-lg-3 col-md-3 col-sm-12" style="margin-top:50px" >
                        <div class="theme_details">
                         <div class="details_section"  style="">
                        	<div class="item_price" style="height:215px">
                        	 <h3>Price</h3>
                            	<h4><span><small>$</small>60,000</span></h5>
                            	<h4><span><small>$</small>${productRecord.roomoffseasonminfee1 }</span></h4>
                            	<h4><span><small>$</small>${productRecord.roomoffseasonminfee2 }</span></h4>
                            	<h4><span><small>$</small>${productRecord.roompeakseasonminfee1 }</span></h4>
                            	<h4><span><small>$</small>${productRecord.roompeakseasonminfee2 }</span></h4>
                            
                            </div>
              </div>
              <!-- item_price -->
         
           
              <!-- rating -->
            </div>
            <!-- theme_details -->
          </div>
          <!-- col-lg-3 -->

        </div>
        <!-- item_details -->

        <div class="clearfix"></div>

        <div class="general-title text-center">
          <h3>Product Features</h3>
          <p>More information about your product</p>
          <hr>
        </div>

        <div class="divider"></div>
        <div class="theme_overviews clearfix">
          <div class="col-lg-4 col-md-4 col-sm-12 first">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-arrows"></i>
              </div>
              <header>
                <h3>Different Sizes</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-heart"></i>
              </div>
              <header>
                <h3>HandMade in Italy</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 last">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-lock"></i>
              </div>
              <header>
                <h3>Secure Metal Zip</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 first">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-trophy"></i>
              </div>
              <header>
                <h3>Premium Design</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-cloud"></i>
              </div>
              <header>
                <h3>Softly Padded</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 last">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-pencil"></i>
              </div>
              <header>
                <h3>Signed Product</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

        </div>
        <!-- theme / Products overview -->

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
