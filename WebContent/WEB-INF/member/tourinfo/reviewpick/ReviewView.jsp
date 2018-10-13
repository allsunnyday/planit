<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="padding-top: 60px;" ></div>

<!--*********************************
리뷰 제목부분 (제목/즐겨찾기 /사용자보기) 
review :
	review_id
	planner_id
	series
	title
	hashtag
	view_count
	liked
	postdate
	rating
	firstimage

***************************************  -->

<script>
	$(function(){
		
		//사용자 별점 반영하기
		reviewRating('${review.rating}');
		
		
		
	});
	
	
	
	// 서버로부터 리뷰의 평점을 받아서 그에 맞는 별찍기 함수  
	var reviewRating=function(rating){
		console.log('평점은'+rating);
		var starString='';
		for(var i=0; i<5; i++){
			if(i<rating){// 색칠된 별찍기
				starString+='<i class="fa fa-star "></i>';
			}
			else{// 빈 별찍기
				starString+='<i class="fa fa-star-o"></i>';
			}
		}
		$('.big-title').html(starString);
	};
	

</script>

<!--**********************************************************************
 상단 제목
 ********************************************************************** -->
<section id="intro"
	style="background: url( <c:url value='/images/main/slide1.jpg'/> ) center center no-repeat fixed;">
	<div class="container" >
		<div class="ror">
			<div class="col-md-8 col-md-offset-2">
				<h1>${review['title']} (${review['series']})</h1>
				<p>2018.05.09 - 2018.11.15</p>
				 <h2 class="big-title">

		         </h2>
		           <p>${review.hashtag}</p>
			</div>
		</div>
		<div class="col-md-2">
			<nav class="portfolio-filter clearfix">
				<ul>
					<li><a href="#" class="dmbutton" >일정보기</a></li>
					<li><a href="#" class="dmbutton" >즐겨찾기</a></li>
					<li><a href="#" class="dmbutton showSeriesbtn" data-toggle="modal" data-target="#seriesmodal" >시리즈보기</a></li>
					<li><a href="<c:url value='/review/myreview/Write.it?planner_id=${review.planner_id}&review_id=${review.review_id}'/> " class="dmbutton" >수정하기</a></li>
				</ul>
			</nav>

		</div>
	</div>
	<div class="series"></div>
		<!-- changebg modal -->
	<div class="modal fade" id="seriesmodal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
		        	<div id="comments_wrapper">
						<h4 class="title">여행 시리즈</h4>
				          <ul class="comment-list">
				            <li>
				              <article class="comment">
				                <div class="comment-content">
				                  <h4 class="comment-author">사진작가의 서울 유랑기 
				                       <span class="comment-reply"><a href="# " class="comment-reply dmbutton2" >1</a></span>
				                   </h4>  
				                </div>
				              </article>
				              <!-- End .comment -->
				            </li>
				            <li>
				              <article class="comment">
				                <div class="comment-content">
				                  <h4 class="comment-author">사진작가의 서울 유랑기 
				                       <span class="comment-reply"><a href="#" class="comment-reply dmbutton2">2</a></span>
				                   </h4>    
				                </div>
				              </article>
				              <!-- End .comment -->
				            </li>
				          </ul>
				             <!-- End .comment LIst-->
				     </div>
		      	</div>
		     	 <div class="modal-footer">
		       	 	<button type="button" class="dmbutton2" data-dismiss="modal">닫기</button>
		        	
		      	</div>
			</div>
		</div>
	</div>
	<!-- changebg modal -->
	
	
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
				<h3>${review.id}님의 이야기, 지금 시작합니다</h3>
				<hr>
			</div>
		</div>
	</div>
	
	<c:forEach items="${oneRoute}" var="review">
					<div class=" col-sm-12 first">
						<div class="testimonial">
							<img data-effect="slide-bottom" class="alignleft img-circle"
								src="${review.firstimage2}"
								alt="">
							${review.overview}
							<p>${review.addr1}</p>							
							<div class="testimonial-meta">
								<h4>
									${review.title}<small><a href="#">자세히 보기</a></small>
								</h4>
							</div>
						</div>
						<!-- end dmbox -->
					</div>
				
				<!-- end content -->
		
			
			<!-- end container -->
			<c:if test="${ not (review.image eq 'no-image')}">
					<!-- carousel container -->
					<div class="container clearfix">
						<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
							<!-- carousel start -->
							<div id="mycarousel1" class="carousel slide" data-ride="carousel">
								<!-- wrapper for slides -->
								<div class="carousel-inner">
									<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
									<div class="item active">
										<div id="popularitems" class="">
											<div class="col-sm-4">
												<img class=""
													src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
													alt="">
											</div>
				
											<div class="col-sm-4">
												<img class=""
													src="http://tong.visitkorea.or.kr/cms/resource/97/2030897_image2_1.jpg"
													alt="">
											</div>
				
											<div class="col-sm-4">
												<img class=""
													src="http://tong.visitkorea.or.kr/cms/resource/09/1580109_image2_1.jpg"
													alt="">
											</div>
										</div>
									</div>
									<!-- end carousel slide 1   -->
									<div class="item ">
										<div id="popularitems" class="">
											<div class="col-sm-4">
												<img class=""
													src="http://tong.visitkorea.or.kr/cms/resource/14/1580114_image2_1.jpg"
													alt="">
											</div>
				
											<div class="col-sm-4">
												<img class=""
													src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
													alt="">
											</div>
				
											<div class="col-sm-4">
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
			</c:if>
			<c:if test="${not empty review.content}">
			    <div class="container clearfix">
			      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			        <blockquote>
			          <p>${review.content}</p>
			        </blockquote>
			        <div class="clearfix"></div>
			      </div>
			      <!-- end content -->
			    </div>
		    <!-- end container -->
    	</c:if>
    </c:forEach>
  </section>
  <!-- end section -->
	
	
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
        <h2 class="big-title-for-user-rating"><span>review</span>가 도움이 되었나요?</h2>
        <a class="button large" href="#"> 평점주기 </a>
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
                       <span class="comment-reply"><a href="#" class="comment-reply button">reply</a></span>
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
