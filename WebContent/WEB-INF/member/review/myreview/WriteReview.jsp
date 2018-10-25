<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--**********************************************************
리뷰작성페이지 step1
작성하고자 하는 날짜를 선택한다. 
review : 
oneRoute
************************************************************** -->
<div id="nav" style="padding-top: 60px"></div>
<!--*********************************
리뷰 제목부분 (제목/즐겨찾기 /사용자보기) 
***************************************  -->
<script type="text/javascript">
	var json;
	
	$(function(){
		showDayRoute('${oneRoute}');
	});
	
	
	var showDayRoute=function(data){
		
		console.log(data);
		// data 는 string으로 넘겨서 json형식으로 변경한다. 
		json = JSON.parse(data);
		var routestr='';
		var routecount = 0;
		console.log(routestr+'여기에서 찍히면 되는거 아니냐');
		$.each(json, function(index, element){
			routecount=routecount+1;
			if(index===0){
				showMemo(index);
			}
			routestr+='<li>';
			routestr+='<article class="comment">';
			routestr+='<img src="' +element['firstimage2']+ '" alt="avatar" class="comment-avatar" onclick="showMemo(' +index+ ');">';
			routestr+='<div class="comment-content" >';
			routestr+='<h4 class="comment-author">'+element['title']+'<small class="comment-meta"></small><span class="comment-reply">';
			routestr+='<a href="#" class="comment-reply dmbutton2 small review-write"  title="'+element['contentid']+'-'+index+'">리뷰작성</a></span>';
			routestr+='</h4> '+element['addr1']+'</div></article> </li>';
			
			
			/* +'<li>'
			+'<article class="comment">'
			+'<img src="'+element['firstimage2']+'" alt="avatar" class="comment-avatar" onclick="showMemo('+index+');">'
			+'  <div class="comment-content" >'
			+'   <h4 class="comment-author"> '+element['title']+' <small class="comment-meta"></small>'
			+'       <span class="comment-reply">'
			+'<a href="#" class="comment-reply dmbutton2 small review-write"  title="'+element['contentid']='-'+index+'">리뷰작성</a></span>'
			+'   </h4> '+element['addr1']+'</div></article> </li>';  */
			
			
		});
		// 일정 리스트를 뿌려줌
		$('.comment-list').html(routestr);
		//총 일정 수를 세팅
		$('.routecount').html(routecount);
		// 리뷰작성페이지로 넘어가기
		$('.review-write').click(function(){
			var title= $(this).attr('title').split('-')[1];
			var review_id=${review.review_id};
			var contentid=$(this).attr('title').split('-')[0];
			location.replace("<c:url value='/riveiw/write/OneSpot.it?review_id="+review_id+"&route_index="+title+"&contentid="+contentid+"'/> ");
		});
	};
	
	var showMemo=function(clickedindex){
		var todo;
		var memo;
		$.each(json, function(index, element){
			if(index==clickedindex){
				todo=element['todo'];
				memo=element['todomemo'];
				if(todo.length==0) todo='일정';
				if(memo.length==0) memo='일정없음';
				return;
			}
		});
		$('.todo').html(todo);
		$('.todo-memo').html(memo);
	};
</script>

<section id="intro"
	style="background: url( <c:url value='/images/main/slide1.jpg'/> ) center center no-repeat fixed;">
	<div class="container">

		<div class="ror">
			<div class="col-md-8 col-md-offset-2">
				<!-- review title 클릭시 변경할 수있는 모달 만들기(미 변경시 플래너와 동일한 이름)  -->
				<div class="review-title-box">
				<c:if test="${not empty review}" var="isWriten">
				<h1 class="review-title" onclick="setReviewtitle();" data-toggle="modal" data-target="#changetitle">${review.title}</h1>
				</c:if>
				<c:if test="${not isWriten}">
				<h1 class="review-title" onclick="setReviewtitle();" data-toggle="modal" data-target="#changetitle">제목을 입력해주세요</h1>
				</c:if>
				</div>
				<p>${planner.DEPART}</p>
			</div>
		</div>
		<!-- changebg modal -->
			<div class="modal fade" id="changetitle" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">
				        	<div class="input-group">
							  <div class="custom-file text-center">
							    <input type="text" class="custom-file-input" name="title" placeholder="제목을 입력해주세요">
							  </div>
							</div>
				      	</div>
				     	 <div class="modal-footer">
				       	 	<button type="button" class="dmbutton2" data-dismiss="modal">닫기</button>
				        	<button type="button" class="dmbutton2">저장</button>
				      	</div>
					</div>
				</div>
			</div>
			<!-- changebg modal -->
		
		
		
		<div class="col-md-2">
			<div class="portfolio-filter clearfix">
				<ul>
					<li><button class="dmbutton" data-toggle="modal" data-target="#changebg">배경변경</button></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- changebg modal -->
	<div class="modal fade" id="changebg" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="changbglabel">이미지를 선택해주세요</h5>
				</div>
				<div class="modal-body">
		        	<div class="input-group">
					  <div class="custom-file text-center">
					    <input type="file" class="custom-file-input" id="inputGroupFile04">
					  </div>
					</div>
		      	</div>
		     	 <div class="modal-footer">
		       	 	<button type="button" class="dmbutton2" data-dismiss="modal">닫기</button>
		        	<button type="button" class="dmbutton2">저장</button>
		      	</div>
			</div>
		</div>
	</div>
	<!-- changebg modal -->
	
</section>
<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
		<ul class="pager">
          <li class="previous">
          	<c:if test="${day != '1'}">
            <a href=" <c:url value='/review/myreview/Write.it?planner_id=${review.planner_id}&review_id=${review.review_id - 1}'/>  ">← 이전일정</a>
            </c:if>
          </li>
          <c:if test="${totalReview != day }">
          <li class="next">
            <a href=" <c:url value='/review/myreview/Write.it?planner_id=${review.planner_id}&review_id=${review.review_id + 1}'/> ">다음일정 →</a>
          </li>
          </c:if>
        </ul>
        <div class="col-lg-4 col-md-4 col-sm-4">
        <div style="padding-bottom: 50px;"></div>
          <div class="portfolio_details">
            <div class="details_section">
              <h3>${day}일차</h3>
              <p class="todo">한강가기전에 치맥사기</p>
              <hr>
              <ul >
              	<li class="todo-memo"></li>
               <!--  <li class="version ">예상비용: <span><a href="#">BlackTie.co</a></span></li>
                <li class="update">이동수단: <span><a href="#">버스1회</a>, <a href="#">지하철1회</a></span></li>
                <li class="release">추가사항: <span>28 February, 2014</span></li> -->
              </ul>
              <ul>
					<li><a href="<c:url value='/photobook/step1/selectdesign.it?review_id=${review.review_id}'/> " class="dmbutton2" data-filter="*">포토북만들기</a></li>
				</ul>
            </div>
            <!-- details section -->
          </div>
          <!-- theme details -->
        </div>
        <!-- end col-lg 8 -->
		
		<!-- 테이블 넣기  -->
	    <div class="col-lg-8 col-md-8 col-sm-12">
		<div id="comments_wrapper">
			<h4 class="title">(<span class="routecount">4</span>)개 일정 </h4>
	          <ul class="comment-list">
	            <li>
	              <article class="comment">
	                <div class="comment-content">
	                  <h4 class="comment-author">한강 <small class="comment-meta"></small>
	                       <span class="comment-reply"><a href="<c:url value='/riveiw/write/OneSpot.it'/> " class="comment-reply dmbutton2 small" >리뷰작성</a></span>
	                   </h4> 주소 / 관람시간 / 비용   
	                </div>
	              </article>
	              <!-- End .comment -->
	            </li>
	           
	          </ul>
	             <!-- End .comment LIst-->
	        </div>
	        <!-- end col-lg 8 -->
		</div>
        <div class="clearfix"></div>

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
