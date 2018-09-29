<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--**********************************************************
리뷰작성페이지 step1
작성하고자 하는 날짜를 선택한다. 
************************************************************** -->
<div id="nav" style="padding-top: 60px"></div>
<!--*********************************
리뷰 제목부분 (제목/즐겨찾기 /사용자보기) 
***************************************  -->
<section id="intro"
	style="background: url( <c:url value='/images/main/slide1.jpg'/> ) center center no-repeat fixed;">
	<div class="container">

		<div class="ror">
			<div class="col-md-8 col-md-offset-2">
			<!-- review title 클릭시 변경할 수있는 모달 만들기(미 변경시 플래너와 동일한 이름)  -->
				<h1 class="review-title">사진작가의 서울 유랑기</h1>
				<p>2018.05.09 - 2018.11.15</p>
			</div>
		</div>
		<div class="col-md-2">
			<nav class="portfolio-filter clearfix">
				<ul>
					<li><a href="#" class="dmbutton" data-filter="*">배경변경</a></li>
					
				</ul>
			</nav>
		</div>
	</div>
</section>
<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
		<ul class="pager">
          <li class="previous">
            <a href="#">← 이전일정</a>
          </li>
          <li class="next">
            <a href="#">다음일정 →</a>
          </li>
        </ul>
        
        <div class="col-lg-4 col-md-4 col-sm-4">
        <div style="padding-bottom: 50px;"></div>
          <div class="portfolio_details">
            <div class="details_section">
              <h3>1일차</h3>
              <p>한강가기전에 치맥사기</p>
              <hr>
              <ul>
                <li class="version">예상비용: <span><a href="#">BlackTie.co</a></span></li>
                <li class="update">이동수단: <span><a href="#">버스1회</a>, <a href="#">지하철1회</a></span></li>
                <li class="release">추가사항: <span>28 February, 2014</span></li>
              </ul>
              <ul>
					<li><a href="<c:url value='/photobook/step1/selectdesign.it'/> " class="dmbutton2" data-filter="*">포토북만들기</a></li>
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
			<h4 class="title">(4)개 일정 </h4>
	          <ul class="comment-list">
	            <li>
	              <article class="comment">
	                <div class="comment-content">
	                  <h4 class="comment-author">한강 <small class="comment-meta"></small>
	                       <span class="comment-reply"><a href="<c:url value='/riveiw/write/OneSpot.it'/> " class="comment-reply button small" >리뷰작성</a></span>
	                   </h4> 주소 / 관람시간 / 비용   
	                </div>
	              </article>
	              <!-- End .comment -->
	            </li>
	            <li>
	              <article class="comment">
	                <div class="comment-content">
	                  <h4 class="comment-author">여의도 공원 <small class="comment-meta"></small>
	                       <span class="comment-reply"><a href="#" class="comment-reply button small">리뷰작성</a></span>
	                   </h4> 서울시 여의도  / 제한없음 / 무료   
	                </div>
	              </article>
	              <!-- End .comment -->
	            </li>
	            <li>
	              <article class="comment">
	                <div class="comment-content">
	                  <h4 class="comment-author">경복궁 <small class="comment-meta"></small>
	                       <span class="comment-reply"><a href="#" class="comment-reply button small">리뷰작성</a></span>
	                   </h4> 서울시 광화문  / 9:00 - 5:00 / 4000원  
	                </div>
	              </article>
	              <!-- End .comment -->
	            </li>
	            <li>
	              <article class="comment">
	                <div class="comment-content">
	                  <h4 class="comment-author">경복궁 <small class="comment-meta"></small>
	                       <span class="comment-reply"><a href="#" class="comment-reply button small">리뷰작성</a></span>
	                   </h4> 서울시 광화문  / 9:00 - 5:00 / 4000원  
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
