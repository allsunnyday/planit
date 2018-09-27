<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="padding-top: 70px"></div>
 <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>여행 블로그 </li>
        </ul>
        <h2>전국을 유랑하는 플러너들의 생생한 이야기</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="최신순" />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->


<!--*********************************************************************
블로그 리스트 
****************************************************************************  -->
  <section class="section1">
    <div class="container clearfix">
    	<!-- BEGIN SIDEBAR -->
      <div id="sidebar" class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

        <div class="widget">
          <h4 class="title">
                        <span>검색</span>
                    </h4>
          <!-- <form id="subscribe" action="mc.php" name="subscribe" method="post">
            <input type="text" name="name" id="name" class="form-control" placeholder="Name">
            <input type="text" name="email" id="email" class="form-control" placeholder="Email">
            <div class="pull-right">
              <input type="submit" value="Subscribe" id="submit" class="button">
            </div>
          </form> -->
           <div class="text-center">
          <form id="subscribe" class="form-inline">
            <input type="text" class="form-control" placeholder="Search on support forums">
            <div class="">
              <input type="submit" value="찾기" id="submit" class="button">
            </div>
          </form>
        </div>
          
        </div>


        <div class="widget">
          <h4 class="title">
                        <span>카테고리</span>
                    </h4>
          <ul class="categories">
            <li><a href="#">베스트 리뷰</a></li>
            <li><a href="#">최신 리뷰</a></li>
          </ul>
        </div>

     <!--    <div class="widget">
          <h4 class="title">
                        <span>Pages</span>
                    </h4>
          <ul class="pages">
            <li><a href="#">Homepage</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Shopping</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div> -->

        <div class="widget">
          <h4 class="title">
                        <span>인기 Tags</span>
                    </h4>

          <div class="tagcloud">
            <a href="#" class="" title="12 topics">advice</a>
            <a href="#" class="" title="2 topics">wordpress</a>
            <a href="#" class="" title="21 topics">joomla</a>
            <a href="#" class="" title="5 topics">blog</a>
            <a href="#" class="" title="62 topics">cms</a>
            <a href="#" class="" title="12 topics">drupal</a>
            <a href="#" class="" title="88 topics">html5</a>
            <a href="#" class="" title="15 topics">css3</a>
            <a href="#" class="" title="31 topics">orange</a>
            <a href="#" class="" title="16 topics">love to</a>
            <a href="#" class="" title="32 topics">tutorials</a>
            <a href="#" class="" title="12 topics">how to</a>
            <a href="#" class="" title="44 topics">advice</a>
          </div>
        </div>

      </div>
      <!-- end sidebar -->
    
      <div class="content pull-right col-lg-8 col-md-8 col-sm-8 col-xs-12 clearfix">

        <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <article class="blog-wrap text-center">
          <div class="blog-media">
            <div id="myCarousel" class="carousel slide">
              <div class="carousel-inner">
                <div class="item active">
                  <img src=https://images.unsplash.com/photo-1532649097480-b67d52743b69?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8bc9e7a65c3e8e9049d621c3e88ffc9a&auto=format&fit=crop&w=1189&q=80 " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="https://images.unsplash.com/photo-1521022887356-1db35c7bbf1f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1a82096f5863af5285990f03390bd1cf&auto=format&fit=crop&w=1189&q=80" alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="https://images.unsplash.com/photo-1525762867061-21c9fb70b15a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=05462dc62dbe001966f95da08772b211&auto=format&fit=crop&w=1050&q=80" alt="">
                </div>
                <!-- end item -->
              </div>
              <!-- carousel inner -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="icon-prev"></span>
				</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="icon-next"></span>
				</a>
            </div>
            <!-- end carousel -->
          </div>

          <header class="page-header blog-title">
            <div class="author-wrap">
              <span class="inside">
				<a href="#"><img class="img-responsive" alt="" src="<c:url value='/main_theme/img/team_02.png'/> " ></a>
			</span>
            </div>
            <h3 class="general-title">사진작가의 서울 유랑기!</h3>
            <div class="post-meta">
              <p>
             	   여행일자: <span class="publish-on">21/01/2014</span>
                <span class="sep">/</span> Category: <a href="#">Slider</a>
                <span class="sep">/</span> Comments: <a href="#"> 4 Comments</a>
              </p>
            </div>
          </header>

          <div class="post-desc">
            <p>서울-경복궁-덕수궁-청계천-한강-이태원</p>
            <a class="readmore" href="<c:url value='/planit/review/reviewView.it'/> " title="">read more</a>
          </div>
        </article>
		 <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <hr>
		<!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <article class="blog-wrap text-center">
          <div class="blog-media">
            <div id="myCarousel" class="carousel slide">
              <div class="carousel-inner">
                <div class="item active">
                  <img src="<c:url value='/main_theme/img/slides_01.jpg'/> " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="<c:url value='/main_theme/img/slides_02.jpg'/> " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="<c:url value='/main_theme/img/slides_03.jpg'/> " alt="">
                </div>
                <!-- end item -->
              </div>
              <!-- carousel inner -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								<span class="icon-prev"></span>
				</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
								<span class="icon-next"></span>
							</a>
            </div>
            <!-- end carousel -->
          </div>

          <header class="page-header blog-title">
            <div class="author-wrap">
              <span class="inside">
				<a href="#"><img class="img-responsive" alt="" src="<c:url value='/main_theme/img/team_02.png'/> " ></a>
			</span>
            </div>
            <h3 class="general-title">사진작가의 서울 유랑기!</h3>
            <div class="post-meta">
              <p>
             	   여행일자: <span class="publish-on">21/01/2014</span>
                <span class="sep">/</span> Category: <a href="#">Slider</a>
                <span class="sep">/</span> Comments: <a href="#"> 4 Comments</a>
              </p>
            </div>
          </header>

          <div class="post-desc">
            <p>서울-경복궁-덕수궁-청계천-한강-이태원</p>
            <a class="readmore" href="<c:url value='/planit/review/reviewView.it'/> " title="">read more</a>
          </div>
        </article>
		 <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <hr>
        <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <article class="blog-wrap text-center">
          <div class="blog-media">
            <div id="myCarousel" class="carousel slide">
              <div class="carousel-inner">
                <div class="item active">
                  <img src="<c:url value='/main_theme/img/slides_01.jpg'/> " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="<c:url value='/main_theme/img/slides_02.jpg'/> " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="<c:url value='/main_theme/img/slides_03.jpg'/> " alt="">
                </div>
                <!-- end item -->
              </div>
              <!-- carousel inner -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								<span class="icon-prev"></span>
				</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
								<span class="icon-next"></span>
							</a>
            </div>
            <!-- end carousel -->
          </div>

          <header class="page-header blog-title">
            <div class="author-wrap">
              <span class="inside">
				<a href="#"><img class="img-responsive" alt="" src="<c:url value='/main_theme/img/team_02.png'/> " ></a>
			</span>
            </div>
            <h3 class="general-title">사진작가의 서울 유랑기!</h3>
            <div class="post-meta">
              <p>
             	   여행일자: <span class="publish-on">21/01/2014</span>
                <span class="sep">/</span> Category: <a href="#">Slider</a>
                <span class="sep">/</span> Comments: <a href="#"> 4 Comments</a>
              </p>
            </div>
          </header>

          <div class="post-desc">
            <p>서울-경복궁-덕수궁-청계천-한강-이태원</p>
            <a class="readmore" href="<c:url value='/planit/review/reviewView.it'/> " title="">read more</a>
          </div>
        </article>
		 <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <hr>
        <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <article class="blog-wrap text-center">
          <div class="blog-media">
            <div id="myCarousel" class="carousel slide">
              <div class="carousel-inner">
                <div class="item active">
                  <img src="<c:url value='/main_theme/img/slides_01.jpg'/> " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="<c:url value='/main_theme/img/slides_02.jpg'/> " alt="">
                </div>
                <!-- end item -->
                <div class="item">
                  <img src="<c:url value='/main_theme/img/slides_03.jpg'/> " alt="">
                </div>
                <!-- end item -->
              </div>
              <!-- carousel inner -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								<span class="icon-prev"></span>
				</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
								<span class="icon-next"></span>
							</a>
            </div>
            <!-- end carousel -->
          </div>
          <header class="page-header blog-title">
            <div class="author-wrap">
              <span class="inside">
				<a href="#"><img class="img-responsive" alt="" src="<c:url value='/main_theme/img/team_02.png'/> " ></a>
			</span>
            </div>
            <h3 class="general-title">사진작가의 서울 유랑기!</h3>
            <div class="post-meta">
              <p>
             	   여행일자: <span class="publish-on">21/01/2014</span>
                <span class="sep">/</span> Category: <a href="#">Slider</a>
                <span class="sep">/</span> Comments: <a href="#"> 4 Comments</a>
              </p>
            </div>
          </header>

          <div class="post-desc">
            <p>서울-경복궁-덕수궁-청계천-한강-이태원</p>
            <a class="readmore" href="<c:url value='/planit/review/reviewView.it'/> " title="">read more</a>
          </div>
        </article>
		 <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <hr>
		
      
        <div class="clearfix"></div>
        <hr>

        <div class=" text-center">
          <ul class="pagination">
            <li><a href="#">«</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">»</a></li>
          </ul>
        </div>
      </div>
      <!-- end content -->


      
      

      
      <!-- end sidebar -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
