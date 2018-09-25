<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="padding-top: 60px"></div>
<!--*********************************
리뷰 제목부분 (제목/즐겨찾기 /사용자보기) 
***************************************  -->
<section id="intro"
	style="background: url( <c:url value='/images/main/slide1.jpg'/> ) center center no-repeat fixed;">
	<div class="container">

		<div class="ror">
			<div class="col-md-8 col-md-offset-2">
				<h1>사진작가의 서울 유랑기</h1>
				<p>2018.05.09 - 2018.11.15</p>
				 <h2 class="big-title"><i class="fa fa-star "></i>
		           <i class="fa fa-star"></i>
		           <i class="fa fa-star"></i>
		           <i class="fa fa-star-o"></i>
		           <i class="fa fa-star-o"></i></h2>
		           <p>#서울여행 #감성적 #치맥 #힙한여행</p>
			</div>
		</div>
		<div class="col-md-2">
			<nav class="portfolio-filter clearfix">
				<ul>
					<li><a href="#" class="dmbutton" data-filter="*">일정보기</a></li>
					<li><a href="#" class="dmbutton" data-filter="">즐겨찾기</a></li>
					<li><a href="#" class="dmbutton" data-filter="">시리즈보기</a></li>
					<li><a href="<c:url value='/review/myreview/Write.it'/> " class="dmbutton" data-filter="">수정하기</a></li>
				</ul>
			</nav>

		</div>
	</div>
</section>

<!--*********************************
리뷰 본문
일정 하나는 다음과 같이 이루어져 있다. 
1. 관광지 개요
2. 사용자 사진
3. 사용자 글 
***************************************  -->
<section class="section1">
<!--#######################################일정1####################################################  -->
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="general-title text-center">
				<h3>000님의 이야기, 지금 시작합니다</h3>
				<hr>
			</div>

			<div class=" col-sm-12 first">
				<div class="testimonial">
					<img data-effect="slide-bottom" class="alignleft img-circle"
						src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
						alt="">
					<p>서울 반포대교에 설치된 분수인 달빛무지개분수는 반포대교 570m 구간 양측 총 1천140m에 380개 노즐을
						설치해 수중펌프로 끌어올린 한강물을 약 20m 아래 한강 수면으로 떨어뜨리는 새로운 개념의 분수이다</p>
					<div class="testimonial-meta">
						<h4>
							반포 달빛무지개<small><a href="#">자세히 보기</a></small>
						</h4>
					</div>
				</div>
				<!-- end dmbox -->
			</div>
		</div>
		<!-- end content -->

	</div>
	<!-- end container -->

	<!-- carousel container -->
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<!-- carousel start -->
			<div id="mycarousel1" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#mycarousel1" data-slide-to="0" class="avtive"></li>
					<li data-target="#mycarousel1" data-slide-to="1"></li>
					<!-- <li data-target="#mycarousel" data-slide-to="2"></li> -->
				</ol>
				<!-- wrapper for slides -->
				<div class="carousel-inner">
					<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
					<div class="item active">
						<div id="popularitems" class="">
							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/97/2030897_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/09/1580109_image2_1.jpg"
									alt="">
							</div>
						</div>
					</div>
					<!-- end carousel slide 1   -->
					<div class="item ">
						<div id="popularitems" class="">
							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/14/1580114_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
									alt="">
							</div>
						</div>
					</div>
					
				</div>
				<!-- end wrapper for slides -->
				<a class="left carousel-control" href="#mycarousel1" data-slide="prev"> 
					<span class="icon-prev"></span>
				</a> 
				<a class="right carousel-control" href="#mycarousel1" data-slide="next"> 
				<span class="icon-next"></span> 
				</a>
			</div>
			<!-- end carousel container-->
		</div>
		<!-- end content -->
	</div>
	<!-- end carousel  -->
	<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <blockquote>
          <p>세계의 많은 도시들이 강을 가졌지만, 나는 그중 한강이 가장 아름답다고 생각한다. 밤이 되면 넘실대는 새까만 강물에 비친 서울의 모습은 매우 아름답다.
          다른 강과는 달리 냄새도 나지 않고  탁트인 시야에서 친구들과 치맥을 하면, 크으 인생에 즐거움이란 이런것인가 하고 무릎을 탁! 치게 된다 .
          그렇지만 한강에서 시켜먹은 치맥은 조심해야 한다. 그냥 치킨을 시켰을 경우에는 퀄리티가 떨어질 수 있으니 리뷰를 잘살피던가 아니면 차라리 한강에 가기전에 
          구매를 해가는 것이 좋다. </p>
        </blockquote>
        <div class="clearfix"></div>
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
	
	<!--#######################################일정2####################################################  -->
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class=" col-sm-12 first">
				<div class="testimonial">
					<img data-effect="slide-bottom" class="alignleft img-circle"
						src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
						alt="">
					<p>서울 반포대교에 설치된 분수인 달빛무지개분수는 반포대교 570m 구간 양측 총 1천140m에 380개 노즐을
						설치해 수중펌프로 끌어올린 한강물을 약 20m 아래 한강 수면으로 떨어뜨리는 새로운 개념의 분수이다</p>
					<div class="testimonial-meta">
						<h4>
							반포 달빛무지개<small><a href="#">자세히 보기</a></small>
						</h4>
					</div>
				</div>
				<!-- end dmbox -->
			</div>
		</div>
		<!-- end content -->

	</div>
	<!-- end container -->

	<!-- carousel container -->
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<!-- carousel start -->
			<div id="mycarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#mycarousel" data-slide-to="0" class="avtive"></li>
					<li data-target="#mycarousel" data-slide-to="1"></li>
					<!-- <li data-target="#mycarousel" data-slide-to="2"></li> -->
				</ol>
				<!-- wrapper for slides -->
				<div class="carousel-inner">
					<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
					<div class="item active">
						<div id="popularitems" class="">
							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/97/2030897_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/09/1580109_image2_1.jpg"
									alt="">
							</div>
						</div>
					</div>
					<!-- end carousel slide 1   -->
					<div class="item ">
						<div id="popularitems" class="">
							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/14/1580114_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
									alt="">
							</div>

							<div class="col-lg-4">
								<img class=""
									src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
									alt="">
							</div>
						</div>
					</div>
					
				</div>
				<!-- end wrapper for slides -->
				<a class="left carousel-control" href="#mycarousel" data-slide="prev"> 
					<span class="icon-prev"></span>
				</a> 
				<a class="right carousel-control" href="#mycarousel" data-slide="next"> 
				<span class="icon-next"></span> 
				</a>
			</div>
			<!-- end carousel container-->
		</div>
		<!-- end content -->
	</div>
	<!-- end carousel  -->
	<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <blockquote>
          <p>세계의 많은 도시들이 강을 가졌지만, 나는 그중 한강이 가장 아름답다고 생각한다. 밤이 되면 넘실대는 새까만 강물에 비친 서울의 모습은 매우 아름답다.
          다른 강과는 달리 냄새도 나지 않고  탁트인 시야에서 친구들과 치맥을 하면, 크으 인생에 즐거움이란 이런것인가 하고 무릎을 탁! 치게 된다 .
          그렇지만 한강에서 시켜먹은 치맥은 조심해야 한다. 그냥 치킨을 시켰을 경우에는 퀄리티가 떨어질 수 있으니 리뷰를 잘살피던가 아니면 차라리 한강에 가기전에 
          구매를 해가는 것이 좋다. </p>
        </blockquote>
        <div class="clearfix"></div>
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
	
</section>
<!-- end section -->
<!--***********************************************************************
평점남기기 
1. 자신의 리뷰라면 점수만 보이기
2. 평점을 내린 사람은 평점주기 클릭- 평점
3. 평점을 이미 내린 사람은 평점주기 클릭 - 이미 평점을 내렸습니다.
**************************************************************************  -->
 <section class="section2">
    <div class="container">
      <div class="message text-center">
        <h2 class="big-title"><span>review</span>가 도움이 되었나요?</h2>
        <a class="button large" href="#">평점주기</a>
      </div>
      <!-- end message -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section2 -->

<!--***********************************************************************
코멘트남기기 
**************************************************************************  -->
 <section class="section1">
    <div class="container clearfix">
      <div class="content col-xs-12 clearfix">    
        <div id="comments_wrapper">
          <h4 class="title">1 Comments so far</h4>
          <ul class="comment-list">
            <li>
              <article class="comment">
                <img src="https://blogpfthumb-phinf.pstatic.net/MjAxODA3MDJfMjk1/MDAxNTMwNTI3MTIwNjAx.XanKPuN9rA3-YNeGK_CtgsoAHQPqumlMMXkqkR_yQs8g.1CuJLtxaD7xjkeuLv-VNx4DOBfg1P6HqDUY9f2glEmgg.JPEG.gream50/1%25C2%25F7%2B%25B1%25B3%25BE%25C8.jpg?type=w161" alt="avatar" class="comment-avatar">
                <div class="comment-content">
                  <h4 class="comment-author">톤톤 <small class="comment-meta">January 12, 2014</small>
                       <span class="comment-reply"><a href="#" class="comment-reply button small">reply</a></span>
                   </h4> 작가님, 혹시 치킨은 어디꺼 시켜드셨나요?  
                </div>
              </article>
              <!-- End .comment -->
            </li>
          </ul>
          <!-- End .comment-list -->

          <div class="clearfix"></div>

          <div class="comments_form">
            <h4 class="title">Leave a Comment</h4>
            <form id="comments_form" action="" name="comments_form" class="row" method="post">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <textarea class="form-control" name="comments" id="comments" rows="6" placeholder="Your Message ..."></textarea>
                <input type="submit" value="SEND COMMENT" id="submit" class="button small">
              </div>
            </form>
          </div>
          <!-- end comments_Form -->

        </div>
        <!-- div comments -->


      </div>
      <!-- end content -->

    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
