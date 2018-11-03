<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>


<script type="text/javascript">

	$(function(){
		// areacode로 검색할 경우 
		$('#areacode').on('change', function(){
			var kor = $('#areacode option[value='+$(this).val()+']').text();
		
			$('#areacodeKor').val(kor);
		});
		
		$('.list-order').click(function(){
			console.log('here!!'+$(this).html());
			
		});
	});

</script>

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
           <div class="text-center">
          <form id="subscribe" class="form-inline" action="<c:url value='/planit/review/ReviewList.it'/> " >
          	<select name="areacode" id="areacode" class="dmbutton2" title="조회지역" style="display: inline-block;">
                  <option value="">지역선택</option>
                  <option value="">전체</option>
                  <option value="1" >서울</option>
                  <option value="2" >인천</option>
                  <option value="3" >대전</option>
                  <option value="4" >대구</option>
                  <option value="5" >광주</option>
                  <option value="6" >부산</option>
                  <option value="7" >울산</option>
                  <option value="8" >세종특별자치시</option>
                  <option value="31" >경기도</option>
                  <option value="32" >강원도</option>
                  <option value="33" >충청북도</option>
                  <option value="34" >충청남도</option>
                  <option value="35" >경상북도</option>
                  <option value="36" >경상남도</option>
                  <option value="37" >전라북도</option>
                  <option value="38" >전라남도</option>
                  <option value="39" >제주도</option>
            </select>
            <input type="hidden" name="areacodeKor" id="areacodeKor">
            <input type="text" class="form-control" placeholder="키워드를 입력하세요" name="keyword">
            <input type="submit" value="찾기" id="submit" class="button">
          </form>
        </div>
    
        </div>

        <div class="widget">
          <h4 class="title">
              <span>카테고리</span>
          </h4>
          <ul class="categories">
            <li><a href="<c:url value='/planit/review/ReviewList.it'/>" class="list-order">최신 리뷰</a></li>
            <li><a href="<c:url value='/planit/review/ReviewList.it?order=liked'/>" class="list-order"> 베스트 리뷰</a></li>
          </ul>
        </div>

        <div class="widget">
          <h4 class="title">
               <span>인기 Tags</span>
          </h4>

          <div class="tagcloud">
            <a href="#" class="" title="12 topics">advice</a>
            
          </div>
        </div>

      </div>
      <!-- end sidebar -->
    
      <div class="content pull-right col-lg-8 col-md-8 col-sm-8 col-xs-12 clearfix">
      	<c:if test="${not empty areacode}">
	      	<div>
	      		<h3><span class="searchAreacode">${areacodeKor}/</span> <span class="searchKeyword">${keyword}</span><small>로 검색한 결과입니다</small></h3>
	      	</div>
      	</c:if>
        <!-- SLIDE POST :: 블로그 포스팅 한개  -->
        <!--############# 리스트가 존재하지 않을 경우 #####################  -->
        <c:if test="${empty list}">
        
        	
	        <article class="blog-wrap text-center">
	          <div class="blog-media">
	            <div id="" class=" slide">
	                  <img src=https://images.unsplash.com/photo-1532649097480-b67d52743b69?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8bc9e7a65c3e8e9049d621c3e88ffc9a&auto=format&fit=crop&w=1189&q=80 " alt="">
	                  
	            </div>
	            <!-- end carousel -->
	          </div>
	
	          <header class="page-header blog-title">
	            <h3 class="general-title">등록된 글이 없습니다.</h3>
	            <div class="post-meta">
	              <p>
	              지금 바로 여행의 추억을 기록해보세요! 
	              </p>
	            </div>
	          </header>
	
	          
	        </article>
        </c:if>
        
        <!--################### 리스트 결과가 존재할 경우#####################  -->
        <c:forEach var="review" items="${list}" varStatus="loop">
	        
	        <article class="blog-wrap text-center">
	          <div class="blog-media">
	            <div id="myCarousel">
	              <div class="carousel-inner">
	                <div class="item active" style="height: 400px;">
	                  <img src="<c:url value='/Upload/Review/${review.FIRSTIMAGE}'/>" alt="" height="100%" width="100%" >
	                </div>
	                <!-- end item -->
	                
	                <!-- end item -->
	              </div>
	       
	            </div>
	            <!-- end carousel -->
	          </div>
	
	          <header class="page-header blog-title">
	            <div class="author-wrap">
	              <span class="inside">
					<a href="#"><img class="img-responsive" alt="" src="<c:url value='/Upload/Member/${review.PROFILE}'/> "></a>
				</span>
	            </div>
	            <h3 class="general-title">${review.TITLE} (${review.SERIES})</h3>
	            <div class="post-meta">
	              <p>
	             	   여행일자: <span class="publish-on">${review.POSTDATE}</span>
	                <span class="sep">/</span> rating: <a href="#">${review.RATING}</a>
	                <span class="sep">/</span> 좋아요♥: <a href="#"> ${review.LIKED}</a>
	              </p>
	            </div>
	          </header>
	
	          <div class="post-desc">
	            <p></p>
	            <a class="readmore" href="<c:url value='/planit/review/ReviewView.it?review_id=${review.REVIEW_ID}'/> " title="">read more</a>
	          </div>
	        </article>
	        
		 <!-- SLIDE POST :: 블로그 포스팅 한개  -->
		 
       </c:forEach>
        <hr>
        <div class="clearfix"></div>
        <hr>

        <div class=" text-center">
          <!-- <ul class="pagination">
            <li><a href="#">«</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">»</a></li>
          </ul> -->
          ${pagingString}
        </div>
      </div>
      <!-- end content -->


      
      

      
      <!-- end sidebar -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
