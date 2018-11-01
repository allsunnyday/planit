<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <jsp:include page="topMenu.jsp" flush="false" /> --%>
<jsp:include page="/WEB-INF/member/tourinfo/tdview/topMenu.jsp" flush="false" />
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<script>
	var isDelete = function(){
		
		if(confirm("정말로 삭제 하시겠습니까?"))
			location.replace("<c:url value='/partner/product/view/DeleteProduct?roomcode=${productRecord.roomcode}'/>");
	};  	
</script>


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
          <!-- <p>ÜBER PREMIUM VEGETABLE TANNED ITALIAN LEATHER</p> -->
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
                            	<h4><span><small>$</small>60,000</span></h4>
                            	<h4><span><small>$</small>${productRecord.roomoffseasonminfee1 }</span></h4>
                            	<h4><span><small>$</small>${productRecord.roomoffseasonminfee2 }</span></h4>
                            	<h4><span><small>$</small>${productRecord.roompeakseasonminfee1 }</span></h4>
                            	<h4><span><small>$</small>${productRecord.roompeakseasonminfee2 }</span></h4>
                            <a class="button large btn-block" href="<c:url value='/partner/product/Reservation.it?contentid=${productRecord.roomcode}'/>"> <i class="fa fa-pencil"></i>객실정보</a> 
                           		
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
         <!--  <p>More information about your product</p> -->
         <br/>
          <hr>
        </div>

        <div class="divider"></div>
        <div class="theme_overviews clearfix">
      		<div class="col-md-4">
      			<table class="table table-striped" >
      				<tr> 
      					<td>목욕시실</td>
      					<td>${productRecord.roombathfacility}</td>
      				</tr>
      				<tr> 
      					<td>욕조</td>
      					<td>${productRecord.roombath}</td>
      				</tr>
      				<tr> 
      					<td>홈시어터</td>
      					<td>${productRecord.roomhometheater}</td>
      				</tr>
      				<tr> 
      					<td>에어컨</td>
      					<td>${productRecord.roombathfacility}</td>
      				</tr>
      				<tr> 
      					<td>TV</td>
      					<td>${productRecord.roomtv}</td>
      				</tr>
      			</table> 
      		</div>
      				
      		<div class="col-md-4">
      			<table class="table table-striped" >
      				<tr> 
      					<td>PC</td>
      					<td>${productRecord.roompc}</td>
      				</tr>
      				<tr> 
      					<td>케이블</td>
      					<td>${productRecord.roomcable}</td>
      				</tr>
      				<tr> 
      					<td>인터넷</td>
      					<td>${productRecord.roominternet}</td>
      				</tr>
      				<tr> 
      					<td>냉장고</td>
      					<td>${productRecord.roomrefrigerator}</td>
      				</tr>
      				<tr> 
      					<td>세면도구</td>
      					<td>${productRecord.roomtoiletries}</td>
      				</tr>
      			
      			</table>
      			</div>
      		<div class="col-md-4">
      			<table class="table table-striped">
      			
      				<tr> 
      					<td>소파</td>
      					<td>${productRecord.roomsofa}</td>
      				</tr>
      				<tr> 
      					<td>취사용품</td>
      					<td>${productRecord.roomcook}</td>
      				</tr>
      				<tr> 
      					<td>테이블</td>
      					<td>${productRecord.roomtable}</td>
      				</tr>
      				<tr> 
      					<td>드라이기</td>
      					<td>${productRecord.roomhairdryer}</td>
      				</tr>
      			
      			
      			</table>
      		
      		</div>
      
        </div>
        <!-- theme / Products overview -->
		<c:if test="${sessionScope.id==partnerRecord.p_id }">
			<%-- 	<a href="<c:url value='/ReplyBBS/BBS/Edit.bbs?no=${record.no}'/>"
					class="btn btn-success">수정</a> --%>
					
				<a href="javascript:isDelete()" class="btn btn-default">삭제</a>
				<input type="hidden" value="${productRecord.roomcode }" name="roomcode"/>
				</c:if>
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
