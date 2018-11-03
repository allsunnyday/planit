<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<style>
#mypage { display: inline-block; }
#MY-edit { display: inline-block; float: right; }
#MY-edit-button { background-colorl:whith; border: 1.5px #aeaeae solid; color: rgb(53, 181, 157); align: right;}
#MY-First {  margin-top: 20px; padding-top: 10px; border-top: 2px #aeaeae solid; margin-bottom: 100px; }
#MY-first-1, #MY-first-2 { margin-top: 10px; }
#MY-first-1-pictur, #MY-first-1-self { font-size: 1.5em; height: 150%; }
#MY-user-picture img { max-width: 100%; max-height: 100%; margin: auto; display: block; }
#MY-First-content img, #MY-Second-content img{ position: absolute; top:0; left: 0; width: 100%; height: 100%;}
#MY-user-picture { width: 150px; height: 150px; border-radius: 50%; border: 2px gray solid; }
#MY-First-TotalContent{ display: inline-block; border-radius: 10px; background-color: rgb(109, 213, 193); }
#MY-First-Preference{ display: inline-block; border-radius: 10px; border:#aeaeae dashed; }
#MY-first-2-Like { display: inline-block; border-radius: 10px; background-color: rgb(109, 213, 193); }
#MY-first-2-inform ul, #MY-first-2-Like ul { list-style: none; display: inline; }
#MY-first-2-planer, #MY-first-2-review { border-right: 1px lightgray solid; display: inline-block; }
#MY-first-2-zzim { display: inline-block; }
#MY-first-informtable td:first-child { font-size: 1.0em; font-weight: bold; color: white; text-indent: 10px; text-align:left; }
#MY-first-informtable td:last-child  { font-weight: lighter; font-size: 1.0em; color: white; text-align:  right;}
#MY-first-2-Like { margin-top: 20px; }
#ulLike li:nth-child(n + 2) { padding-top: 5px; font-weight: lighter; font-size: 1.2em;; color: rgb(109, 213, 193); text-indent: 10px;
	display: inline-block; }
#MY-Second, #MY-Third, #MY-Forth { padding-top: 10px; border-top: 2px #aeaeae solid; margin-bottom: 50px; }
#MY-First-content div, #MY-Second-content div, #Third-content div, #MY-Forth-content div { height: 170px; }
#MY-First-name,#MY-Second-name, #MY-Third-name,#MY-Forth-name{ display:inline-block; }
.MY-More-Button{ display:inline-block; float: right; margin-top:-5px; }
.MY-More-Button button {color:rgb(53, 181, 157); }
#liked_ul{ margin-left: 40%; margin-right: auto; }
#liked_ul li{ border:none; display:inline; color: rgb(110,112,118); margin-right:20px; font-size: 1.2em; }

#myedit li{background: #fff}
#myedit li:hover{background: #3498DB }
#myedit li:focus{background: #3498DB }


</style>

<!-- *******************************************
   베이지색 검색창 달린 거
************************************************ -->
 <section class="post-wrapper-top" style="margin-top:65px;">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.html">My Page</a></li>
          <li>${memberRecord.id}</li>
        </ul>
        <h2>MY Page Home</h2>        
      </div>      
    </div>
</section>
  <!-- end post-wrapper-top -->
<!--*****************************왼쪽에 달린 프로필 사진 및 기타등등*************************************  -->
<section class="section1">
	<jsp:include page="MyPageLeftSubMenu.jsp" flush="false" />
<!-- ************************************ 마이페이지 홈 내용 -수정폼이동,플래너 및 리뷰 요약, 기타 등등 ***************************************** -->
<div class="container-fluid ">
	<div class="content col-md-7">
		<div class="mypage-content">
			
			<div class="row">
  		       <div id="MY-edit">
	            	<!-- 회원정보 수정폼으로 이동 -->
	         		<div class="dropdown">
	              		<button class="btn btn-default dropdown-toggle" type="button" id="MY-edit-button" data-toggle="dropdown" aria-expanded="true">회원정보수정<span class="caret"></span></button>
			            <ul id="myedit"class="dropdown-menu" role="menu" aria-labelledby="MY-edit-button" id="myedit">
			                <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/MyPageEditProfile.it' />">프로필 수정</a></li>
			                <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/MyPageEditPassword.it' />">비밀번호 변경</a></li>
			            </ul>
	            	</div><!-- dropdown -->
        	 	</div><!-- MY-edit -->
      		</div><!-- mypagemenu -->
      	<div class="row" id="MY-First">
        	<!--  내가 작성한 플래너 들어갈 div -->
        	<div id="MY-First-name">My Planer</div>
         	<div class="MY-More-Button">
             	<a style="color: rgb(110,112,118)" class="btn btn-link" href="<c:url value='/planit/mypage/detail/Planner.it'/>"><span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         	<div id="First-line" style="height:200px;">
            <div id="MY-First-content" class="col-md-12">
   			<!-- ********************    최신 플래너 요약보기/마우스 오버 추가  **************************************** -->

	         			 <c:if test="${empty homePlannerList }">
	         				<div>
	         					<h4 style="text-align: center">당신만의 여행플래너를 작성해주세요</h4>
	         				</div>
	         			</c:if>
	         			<c:if test="${not empty homePlannerList }">
	         				<c:forEach var="list" items="${homePlannerList}" varStatus="loop">
		                     <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mockups">
		                     <div class="he-wrap tpl6 market-item">
		                     	<c:if test="${empty list.status}" var="isComplete">
		                     	<div style="z-index: 5;position:relative;height: 60px;width:60px;top:-10px"  >
		                     		<img src="<c:url value='/Upload/Member/event_c.png'/>" alt="" >
		                     	 </div>
		                     	</c:if>
		                     	<c:if test="${not isComplete }">
		                     	 <div style="z-index: 5;position:relative;height: 60px;width:60px;top:-10px"  >
		                     		<img src="<c:url value='/Upload/Member/calendar_b.png'/>" alt="" >
		                     		<span style="position:relative;height: 50px;left:5px;width:60px;top:20px;color:#fff;font-size: 1.8em">D-${list.status} </span>
		                     	 </div>
		                     	</c:if>
		                     	 
		                       	<img src="<c:url value='/Upload/Planner/${list.random_image}'/>" alt="" >
		                         <div class="he-view">
		                           <div class="bg a0" data-animate="fadeIn">
		                             <h3 class="a1" data-animate="fadeInDown">${list.TITLE}</h3>
		                             
		                             <a href="<c:url value='/review/myreview/Write.it?planner_id=${list.PLANNER_ID}&review_id=${list.REVIEW_ID}'/>" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
		                             <!-- portfolio_category -->
		                           </div>
		                           <!-- he bg -->
		                         </div>
		                         <!-- he view -->
		                       </div>
		                       <!-- he wrap -->
		                     </div>
		                     <!-- end col-12 -->
	                     </c:forEach>
	         			</c:if> 
               </div>
         </div>
      </div>
      <!-- ---------------------- -->
      <!--       end First        -->
      <!-- ---------------------- -->
      <!-- ------------------------- -->
      <!--        start Second       -->
      <!-- ------------------------- -->
      <div class="row" id="MY-Second">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-Second-name">My Review</div>
         <div class="MY-More-Button">
             <a style="color: rgb(110,112,118)" href="<c:url value='/planit/mypage/detail/Review.it'/>" class="btn btn-link">
             <span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="Second-line" style="height:300px;">
            <div id="MY-Second-content" class="col-md-12" style="height:300px;">
   			<!-- **************************** 최신 플래너 요약보기/마우스 오버 추가   **************************************** -->
                 <div class="portfolio-centered">
                   <div class="recentitems portfolio">
         			<c:if test="${empty homeReviewList }">
         				<div>
         					<h4 style="text-align: center">당신만의 멋진 리뷰를 작성해주세요</h4>
         				</div>
         			</c:if>
         			<c:if test="${not empty homeReviewList }">
         				<c:forEach var="list" items="${homeReviewList}" varStatus="loop">
	                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mockups">
	                       <div class="he-wrap tpl6 market-item">
	                       <c:if test="${empty list.firstimage }" var="result">
	                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
	                       </c:if>
	                       <c:if test="${not result }">
							<img src="<c:url value='/Upload/Review/${list.firstimage}'/>" style="height:170px" alt="">
	                       </c:if>
	                         <div class="he-view">
	                           <div class="bg a0" data-animate="fadeIn">
	                             <h3 class="a1" data-animate="fadeInDown">${list.title}(${list.series })</h3>
	                             <a data-rel="prettyPhoto" href="<c:url value='/planit/review/ReviewView.it?review_id=${list.review_id}'/>" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
	                             
	                             <div class="portfolio_category text-center a2" data-animate="fadeIn">
	                               <!-- <a href="gallery-portfolio.html#">Item Category</a> -->
	                             </div>
	                             <!-- portfolio_category -->
	                           </div>
	                           <!-- he bg -->
	                         </div>
	                         <!-- he view -->
	                       </div>
	                       <!-- he wrap -->
	                     </div>
	                     <!-- end col-12 -->
                     </c:forEach>
         			</c:if>
                   <!-- portfolio -->
                    </div> 
               </div>
         </div>
      </div>
      <div class="row" id="MY-Third">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-Third-name">My Liked</div>
         <div class="MY-More-Button">
             <a style="color: rgb(110,112,118)" href="<c:url value='/planit/mypage/detail/Liked.it'/>" class="btn btn-link" ><span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="Third-line" style="height:200px;">
            <div id="Third-content" class="col-md-12">
               <!-- 찜해제버튼 추가 -->
               <div id="MY-Third-ZZim-table">
                   <div class="tabbable servicetab tabs-left">
			          <ul id="liked_ul"class=" col-md-offset-4">
			            <li><a style="color: rgb(110,112,118)" href="services.html#webdesign" data-toggle="tab"><i class="glyphicon glyphicon-queen"></i>Tour</a></li>
			            <li><a style="color: rgb(110,112,118)" href="services.html#webdevelopment" data-toggle="tab"><i class="glyphicon glyphicon-calendar"></i> Planner</a></li>
			            <li><a style="color: rgb(110,112,118)" href="services.html#webdevelopment2" data-toggle="tab"><i class="glyphicon glyphicon-edit"></i> Review</a></li>
			          </ul>
			          <div class="tab-content" style="">
			            <div class="tab-pane active" id="webdesign">
			              <!-- <h5 class="title"><i class="fa fa-laptop"></i> Web Design Services</h5> -->
			              <div class="row">
			              	<c:if test="${empty requestScope.memberLiked_Tour }" var="isEmpty">
								<h4 style="text-align: center">등록된 좋아요가 없습니다:)</h4>
							</c:if>
							<c:if test="${not isEmpty}">
				                <c:forEach var="list" items="${memberLiked_Tour}" varStatus="loop">
				                	<div class="col-sm-4" style="position: relative;overflow: hidden;padding: 10px">
				                		<img alt="관광이미지" src="${list.FIRSTIMAGE}" width="100%" height="100%">
				                		<div style="position:absolute;color:#fff; top:60%; background-color: #444;height: auto;padding: 5px">
				                			<h6>
				                				<a href="<c:url value='/planit/search/list/TourView.it?contentid=${list.CONTENTID}'/>" style="color:#fff"> ${list.TITLE}</a>
				                				<small>${list.KOR}</small>
				                				</h6>
				                		</div>
				                	</div>
				                </c:forEach>
			                </c:if>
			              </div>
			            </div>     
			                
			            <!-- ======================memberLiked_Planner======================== -->
			            <div class="tab-pane" id="webdevelopment">       
			              <div class="row">
							<c:if test="${empty requestScope.memberLiked_Planner }" var="isEmptyPlan">
								<h4 style="text-align: center">등록된 좋아요가 없습니다:)</h4>
							</c:if>
							<c:if test="${not isEmptyPlan}">
				                <c:forEach var="list" items="${memberLiked_Planner}" varStatus="loop">
				                	<div class="col-sm-4" style="position: relative;overflow: hidden;padding: 10px">
				                		<img alt="관광이미지" src="<c:url value='/Upload/Planner/planner_default_3.png'/> " width="100%" height="100%">
				                		<div style="position:absolute;color:#fff; top:60%; background-color: #444;height: auto;padding: 5px">
				                			<h6>
				                				<a href="<c:url value='/planit/search/list/TourView.it?contentid=${list.CONTENTID}'/>" style="color:#fff" > ${list.TITLE}</a>
				                				<small>${list.KOR}</small>
				                				</h6>
				                		</div>
				                	</div>
				                </c:forEach>
			                </c:if>
			              </div>
			            </div>
			              <div class="tab-pane" id="webdevelopment2">
			           <!--    <h5 class="title"><i class="fa fa-cogs"></i> Web Development Services</h5> -->
			              <div class="row">
			              	<c:if test="${empty requestScope.memberLiked_Review }" var="isEmptyPlan">
								<h4 style="text-align: center">등록된 좋아요가 없습니다:)</h4>
							</c:if>
							<c:if test="${not isEmptyPlan}">
				                <c:forEach var="list" items="${memberLiked_Review}" varStatus="loop">
				                	<div class="col-sm-4" style="position: relative;overflow: hidden;padding: 10px">
				                		<img alt="관광이미지" src="<c:url value='/Upload/Review/${list.FIRSTIMAGE}'/> " width="100%" height="100%">
				                		<div style="position:absolute;color:#fff; top:60%; background-color: #444;height: auto;padding: 5px">
				                			<h6>
				                				<a href="<c:url value='/planit/review/ReviewView.it?review_id=${list.REVIEW_ID}'/>" style="color:#fff" > ${list.TITLE}(${list.SERIES})</a>
				                				<small>${list.KOR}</small>
				                				</h6>
				                		</div>
				                	</div>
				                </c:forEach>
			                </c:if>
			         <!-- 내용 -->
			          </div>
			          </div>
			          </div>
        </div>
     
        <div class="clearfix"></div>
               </div>
            </div>


         </div>


      </div>
      <!-- ---------------------- -->
      <!--       end Third         -->
      <!-- ---------------------- -->
      <!-- ------------------------- -->
      <!--        start Third      -->
      <!-- ------------------------- -->
      <div class="row" id="MY-Forth">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-Forth-name">My Q&A</div>
         <div class="MY-More-Button">
         
             <a style="color: rgb(110,112,118)" href="<c:url value='/planit/mypage/detail/Q&A.it'/>" class="btn btn-link"><span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="Forth-line" style="height:300px;">
            <div id="MY-Forth-content" class="col-md-12">
               <div id="MY-Forth-Q&A-table">
                  <table class="table" style="text-align: center">
                     <tr>
                        <td class="col-md-1 " >번호</td>
                        <!-- 찜번호 -->
                        <!-- <td class="col-md-1 ">분류</td> -->
                        <td class="col-md-3 col-md-offset-2" >제목</td>
                        <td class="col-md-2 col-md-offset-2" >날짜</td>
                        <td class="col-md-2 col-md-offset-2">진행여부</td>
                        

                     </tr>
                     <c:if test="${empty requestScope.homeQnAList }" var="isEmpty">
					<tr>
						<td colspan="4" style="text-align: center">등록된 문의사항이 없어요</td>
					</tr>
					</c:if>
					<c:if test="${not isEmpty }">
						<c:forEach var="list" items="${homeQnAList}" varStatus="loop">
							<tr>
								<%-- <td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td> --%>
								<td>${list.ask_no}</td>
								<td class="text-left" >
								<a style="color: rgb(110,112,118)" href="<c:url value='/member/qna/view.it?ask_no=${list.ask_no}'/>">${list.title }</a>
								</td>
								<!-- Modal -->
								<td>${list.askdate}</td>
								<td>${list.status}</td>
							</tr>
						</c:forEach>
					</c:if>
           <!--           <tr>
                        <td>00</td>
                        <td>정보수정</td>
                        <td>관광지 정보수정 문의</td>
                        <td>2018.01.01</td>
                        <td>문의 접수</td>

                     </tr>
                     <tr>
                        <td>00</td>
                        <td>그냥문의</td>
                        <td>제목뭘루하지</td>
                        <td>2018.01.01</td>
                        <td>처리 중</td>

                     </tr> -->
                  </table>
               </div>




            </div>


         </div>


      </div>
      <!-- ---------------------- -->
      <!--       end Third         -->
      <!-- ---------------------- -->


   </div>
   <!--  end mypage-content -->

</div>
<!--  end container --> 
</div>  `
</div>
</section>
