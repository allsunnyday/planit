<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<style>
.stars{
	display: inline-block;
}

div.item {
	display: flex;
    height: 300px; /* Or whatever */
    background-color: #fff;
   
}

div.item .item-image{
	max-width: 100%;
  max-height: 100%;
    margin: auto;  /* Magic! */
}
</style>
<script>

	

	$(function(){
		
		//사용자 별점 반영하기
		reviewRating('${review.rating}');

		//코멘트 함수
		$('#submitComments').click(function(){
			console.log('코멘트를 제출합니다.');
			sendComments();
		});
		
		//코멘트 리스트 불러오기 
		showComments();
		
		
		
		
		
		
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
	
	var displayImages = function(data){
		$.each(data, function(index, element){
			console.log(index+"="+element);
		});
	};
	
	// 평점주기 버튼
	function giveRating(){
		
		if('${sessionScope.id}'==''){
			alert('로그인해주세요!');
			return ;
		}
		
		$.ajax({
			url:"<c:url value='/Planit/Review/Rating/hasRating.it'/> ",
			data:{review_id:'${review.review_id}'},
			type:'post',
			dataType:'text',
			success:function(data){
				if(data=='Y'){
					alert('이미 평점을 주었습니다.');
					return false;
				}
				else{
					console.log('평점을 줘야합니다.');
					$('#rating').attr('data-target', '#ratingmodal');
					$('#ratingmodal').modal('show');
				}
			}
		});
	} 
	
	// 이미지를 
	function ratingReview(){
		console.log('ratingReview 함수를 시작합니다.');
		
		var rating = $(':radio:checked').val();
		console.log('사용자가 선택한 값='+rating);
		
		$.ajax({
			url:"<c:url value='/planit/review/RatingReview.it'/> ",
			data:{rating:rating, review_id:${review.review_id}},
			type:'post',
			dataType:'text',
			success:function(data){
				if(data == 'success'){
					//alert('저장에 성공했습니다.');
					location.replace("<c:url value='/planit/review/ReviewView.it?review_id=${review.review_id}'/>");
				}else{
					alert('저장 실패 .. ');
				}
			},
			error:function(request, error){
				console.log(request,error);
			}
			
		});
		
	}
	
	
	
	
	
	// 코멘트 작성
	var sendComments=function(){
		// 내용을 입력했는지 확인한다.
		if($('#content').val().length==0){
			alert('내용을 입력해주세요');
			return;
		}
		// 로그인을 했는지 확인
		if('${sessionScope.id}'==''){
			alert('로그인해주세요!');
			return ;
		}
		console.log('내용을 입력받았습니다.');
		console.log($('.comments_form').serialize()); 
		$.ajax({
			url:"<c:url value='/planit/review/comment/WriteComment.it'/> ",
			type:"post",
			dataType:'text',
			data:$('#comments_form').serialize(),  //클래스 선택자로 선택시 값이 안넘어감. 반드시 from태그의 id값을 읽어와야 함
			success: function(data){
				if (data=='success'){
					console.log('새로운 코멘트 리스트를 불러온다.');
					showComments();
				}
				else{
					console.log('실패했습니다...');
				}
			}
		});
		// texarea 다시 클린해주기
		$('#content').val('');
	};
	
	//코멘트 리스트 가져오기 
	var showComments=function(){
		console.log('코멘트 리스트를 가지고 오기 시작')
		var review_id=${review.review_id};
		$.ajax({
			url:"<c:url value='/planit/review/comment/List.it'/> ",
			data:{review_id:review_id},
			dataType:'json',
			type:'post',
			success: displayComments
		});
	};
	
	// 코멘트 리스트를 화면에 출력하는 함수
	var displayComments=function(data){
		console.log(JSON.stringify(data));
		var commentString='';
		if(data.length==0){
			commentString+='<li> 등록된 코멘트가 없습니다.</li>';
		}
		$.each(data, function(index, comment){
			var userimage = '<c:url value="/Upload/Member/'+comment['PROFILE']+'"/>';
			
			commentString+= '<li><article class="comment">'
            +'<img src="'+userimage+'" alt="avatar" class="comment-avatar">'
            +'<div class="comment-content">'
            +'<h4 class="comment-author">'+comment['ID']+'<small class="comment-meta">'+comment['POSTDATE']+'</small>';
            
            if('${sessionScope.id}'==comment['ID']){
            	commentString+='<a class="btnDel " href="javascript:" id=""  title="" ><font style="font-size: 9pt; color: #c0c0c0"><i class="fa fa-times-circle"></i></font></a>'
            }
            
            commentString+='     <span class="comment-reply"><a href="javascript:" class="comment-reply button" onclick="commentShowReply();" title="'+comment['COMMENT_NO']+'" >reply</a></span>'
            +' </h4>'+comment['CONTENT']
            +'</div></article></li>';
		});
		$('.comment-list').html(commentString);
		
	};
	
	var commentShowReply=function(){
		var comment_no = $(this).attr('title');
		console.log('이 '+comment_no+'에 답변을 답니다.');
		
	};
	
	
	// 리뷰 좋아요 
	var likedThisReview=function(){
		//로그인한 유저인지 확인
		if('${sessionScope.id}'==''){
			alert('로그인이 필요해요!');
			return ;
		}
		console.log('즐겨찾기를 시작합니다.')
		// 로그인한 유저인 경우에는 ajax를 이용해서 mypage로 이동하던가. 아니면 그냥 보기 
		var review_id =${review.review_id};
		$.ajax({
			url:"<c:url value='/planit/review/LikedreView.it'/> ",
			data:{review_id:review_id},
			type:'post',
			dataType:'text',
			success:function(data){
				console.log('성공');
				if(data=='success'){
					
					alert('저장 성공\r\n좋아요한 리뷰는 마이페이지에서 확인할 수 있어요!')					
				}
				else if (data=='already'){					
					alert('이미 좋아요를 눌렀어요\r\n즐겨찾기에 추가한 리뷰는 마이페이지에서 확인할 수 있어요!')					
				}
			},
			error:function(request, error){
				console.log(request,error);
			}
			
		});	
	};

</script>

<!--********************************************상단 제목************************************************** -->
<section id="intro"
	style="background: url( <c:url value='/Upload/Review/${review.firstimage}'/> ) center center no-repeat fixed;background-size:cover;">
	<div class="container" >
		<div class="ror">
			<div class="col-md-8 col-md-offset-2">
				<h1>${review['title']} (${review['series']})</h1>
				
				<p>${fn:substring(review.depart, 0, 10) } - ${enddate}</p>
				 <h2 class="big-title">

		         </h2>
		           <p>${review.hashtag}</p>
			</div>
		</div>
		<div class="col-md-2">
			<nav class="portfolio-filter clearfix">
				<ul>
					<!-- <li><a href="#" class="dmbutton" >일정보기</a></li> -->
					<c:if test="${not (sessionScope.id eq review.id)}">
					<li><a  href="javascript:" onclick="likedThisReview();" class="dmbutton"  >즐겨찾기</a></li>
					</c:if>
					<li><a href="#" class="dmbutton showSeriesbtn" data-toggle="modal" data-target="#seriesmodal" >시리즈보기</a></li>
					<c:if test="${sessionScope.id eq review.id}">
					<li><a href="<c:url value='/review/myreview/Write.it?planner_id=${review.planner_id}&review_id=${review.review_id}'/> " class="dmbutton" >수정하기</a></li>
					</c:if>
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
		        	<!--*****series_wrapper******  -->
		        	<div id="series_wrapper">
						<h4 class="title">여행 시리즈</h4>
				          <ul class="series-list">
				            <c:forEach begin="1" end="${series}" varStatus="loop">
				            <li>
				              <article class="comment">
				                <div class="comment-content">
				                  <h4 class="comment-author">${review.title}
				                       <span class="comment-reply"><a href="<c:url value='/planit/review/ReviewView.it?planner_id=${planner_id}&series=${loop.index}'/> " class="comment-reply dmbutton2" >${loop.index}</a></span>
				                   </h4>  
				                </div>
				              </article>
				              <!-- End .comment -->
				            </li>
				            </c:forEach>
				          </ul>
				             <!-- End .comment LIst-->
				     </div>
		        	<!--*****series_wrapper******  -->
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
	
	<c:forEach items="${oneRoute}" var="review" varStatus="outerloop">
		<div class="container clearfix">
					<div class=" col-sm-12 first">
						<div class="testimonial">
							<img data-effect="slide-bottom" class="alignleft img-circle"
								src="${review.firstimage2}"
								alt="">
							<h4>${review.title}</h4>
							${review.overview}
							<p>${review.addr1}</p><small><a href="<c:url value='/planit/search/list/TourView.it?contentid=${review.contentid}'/> ">자세히 보기</a></small>							
							<div class="testimonial-meta">
								<h4>
									
								</h4>
							</div>
						</div>
						<!-- end dmbox -->
					</div>
				
				<!-- end content -->
		</div>
			
			<!-- end container -->
			<c:if test="${ not (review.image eq 'no-image')}">
					
					<!-- carousel container -->
					<div class="container clearfix">
						<div class="content col-sm-12 clearfix">
							<!-- carousel start -->
							<div id="mycarousel${outerloop.index}" class="carousel slide" data-ride="carousel">
								<!-- wrapper for slides -->
								<!-- <div class="carousel-inner text-center" style="height: 600px;margin:5px;"> -->
								<div class="carousel-inner text-center" style="margin:10px;">
									
									<c:forEach var="images" items="${review.image}" varStatus="loop">
										<!-- carousel slide 1 (총 3개의 이미지를 보여준다.)   -->
										<c:if test="${loop.first}" var="isFirst">
										<div class="item active" >
										</c:if>
										<c:if test="${not isFirst}">
										<div class="item"  >
										</c:if>
											
											<img class="item-image"
												src="<c:url value='/Upload/Review/${images}'/> "
												alt="${images}"
												
												 >
											
										</div>
									</c:forEach>
								</div>
								<!-- end wrapper for slides -->
								<a class="left carousel-control" href="#mycarousel${outerloop.index}" data-slide="prev"> 
									<span class="icon-prev"></span>
								</a> 
								<a class="right carousel-control" href="#mycarousel${outerloop.index}" data-slide="next"> 
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
 <c:if test="${empty sessionScope.id or  not (sessionScope.id eq review.id) }">
	<section class="section2">
	    <div class="container">
	      <div class="message text-center">
	        <h2 class="big-title-for-user-rating"><span>review</span>가 도움이 되었나요?</h2>
	        <a class="button large" href="javascript:giveRating();" id="rating" data-toggle="modal"> 평점주기 </a>
	      </div>
	      <!-- end message -->
	    </div>
	    <!-- end container -->
	</section>
  <!-- end section2 -->
</c:if>


<div class="modal fade" id="ratingmodal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
		        	<div id="comments_wrapper">
						<h4 class="title">이 리뷰에 대한 평점을 남겨주세요!</h4>
						<div class="rating-wrapper">
						  <div class="rating text-center">
						   <ul class="explosion">
						        <li class="stars"><label for="star-1"><i class="fa fa-star" aria-hidden="true"></i></label>  
						          <input type="radio" name="rating" id="star-1" value="1">
						        </li >
						        <li class="stars"><label for="star-2"><i class="fa fa-star" aria-hidden="true"></i></label>  
						          <input type="radio" name="rating" id="star-2" value="2">
						        </li>
						        <li class="stars"><label for="star-3"><i class="fa fa-star" aria-hidden="true"></i></label>  
						          <input type="radio" name="rating" id="star-3" value="3">
						        </li>
						        <li class="stars"><label for="star-4"><i class="fa fa-star" aria-hidden="true"></i></label>  
						          <input type="radio" name="rating" id="star-4" value="4">
						        </li>
						        <li class="stars"><label for="star-5"><i class="fa fa-star" aria-hidden="true"></i></label>  
						          <input type="radio" name="rating" id="star-5" value="5">
						        </li>
						      </ul>
						  </div>
						</div>
				     </div>
		      	</div>
		     	 <div class="modal-footer">
		       	 	<button type="button" class="dmbutton2" data-dismiss="modal">닫기</button>
		       	 	<button type="button" class="dmbutton2" onclick="ratingReview();" >확인</button>
		      	</div>
			</div>
		</div>
	</div>
	<!-- changebg modal -->


<!--**************** 코멘트남기기  **************************************************************************  -->
 <section class="section1">
    <div class="container clearfix">
      <div class="content col-xs-12 clearfix">    
        <div id="comments_wrapper">
          <h4 class="title"> Comments so far</h4>
          <ul class="comment-list">
            <!--*****************코멘트 하나****************************   -->
            <!-- <li> 
              <article class="comment">
                <img src="https://blogpfthumb-phinf.pstatic.net/MjAxODA3MDJfMjk1/MDAxNTMwNTI3MTIwNjAx.XanKPuN9rA3-YNeGK_CtgsoAHQPqumlMMXkqkR_yQs8g.1CuJLtxaD7xjkeuLv-VNx4DOBfg1P6HqDUY9f2glEmgg.JPEG.gream50/1%25C2%25F7%2B%25B1%25B3%25BE%25C8.jpg?type=w161" alt="avatar" class="comment-avatar">
                <div class="comment-content">
                  <h4 class="comment-author">톤톤 <small class="comment-meta">January 12, 2014</small>
                       <span class="comment-reply"><a href="#" class="comment-reply button">reply</a></span>
                   </h4> 작가님, 혹시 치킨은 어디꺼 시켜드셨나요?  
                </div>
              </article>
            </li> -->
            <!--*****************코멘트 하나****************************   -->
          </ul>
          <!-- End .comment-list -->

          <div class="clearfix"></div>

          <div class="comments_form">
            <h4 class="title">Leave a Comment</h4>
            <form id="comments_form"  name="comments_form" class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              	<input type="hidden" value="${review.review_id}" name="review_id">
              	<input type="hidden" value="${sessionScope.id}" name="id">
                <textarea class="form-control" name="content" id="content" rows="3" placeholder="Your Message ..."></textarea>
                <button type="button" value="SEND COMMENT" id="submitComments" class="button small">SEND COMMENT</button>
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
