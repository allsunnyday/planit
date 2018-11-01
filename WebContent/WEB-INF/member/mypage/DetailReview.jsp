<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<style>
.mypage-content {

	/* margin-top: 100px; */
	/* border: 3px black solid; */
}

#mypage {
	display: inline-block;
	/*  border: 3px black solid;  */
}

#MY-edit {
	display: inline-block;
	/*  border: 3px black solid;  */
	float: right;
	/* padding-top: 30px; */
}

#MY-edit-button {
	background-colorl:whith;
	border: 1.5px rgb(53, 181, 157) solid;
	/*  background-color: lightgray; */
	color: rgb(53, 181, 157);
	align: right;
}

#MY-First {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 100px;
}

#MY-first-1, #MY-first-2 {
	/* 	//height:15%; */
	/* border: 1px purple solid; */
	margin-top: 10px;
}

#MY-first-1-pictur, #MY-first-1-self {
	/* border: 1px pink solid; */
	font-size: 1.5em;
	height: 150%;
}


#MY-user-picture img {
	/* position: absolute; top:0; left: 0;
width: 100%;
height: 100%; */
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}
#MY-First-content img,#MY-Second-content img{
position: absolute; top:0; left: 0;
width: 100%;
height: 100%;
}
#MY-user-picture {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px gray solid;
}

#MY-First-TotalContent{
		display: inline-block;
	border-radius: 10px;
/* 	border: 3px gray dotted; */
	background-color: rgb(109, 213, 193);
}

#MY-first-2-Like {
	display: inline-block;
	border-radius: 10px;
/* 	border: 3px gray dotted; */
	background-color: rgb(109, 213, 193);
}

#MY-first-2-inform ul, #MY-first-2-Like ul {
	list-style: none;
	display: inline;
}

#MY-first-2-planer, #MY-first-2-review {
	/* border: 1px pink solid; */
	border-right: 1px lightgray solid;
	display: inline-block;
}

#MY-first-2-zzim {
	display: inline-block;
}

#MY-first-informtable td:first-child {
	font-size: 1.0em;
	font-weight: bold;
	color: white;
	text-indent: 10px;
	text-align:left;
}

#MY-first-informtable td:last-child  {
	font-weight: lighter;
	font-size: 1.0em;;
	color: white;
	text-align:  right;
	
}

#MY-first-2-Like {
	/* background-color:white; */
	margin-top: 20px;
}

#ulLike li:nth-child(n + 2) {
	padding-top: 5px;
	font-weight: lighter;
	font-size: 1.2em;;
	color: rgb(109, 213, 193);
	text-indent: 10px;
	display: inline-block;
}

 #MY-Second, #MY-Third, #MY-Forth {
	/* margin-top: 60px; */
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 130px;
}

#MY-First-content div, #MY-Second-content div, #Third-content div,
	#MY-Forth-content div {
/* 	margin-top: 20px; */
	height: 170px;
}
#MY-First-name,#MY-Second-name,
#MY-Third-name,#MY-Forth-name{
	display:inline-block;
}
.MY-More-Button{
	display:inline-block;
	float: right;
	margin-top:-5px;
}
.MY-More-Button button {
	color:rgb(53, 181, 157);
	
}
#MY-First-Preference{
display: inline-block;
   border-radius: 10px;
   border:1px rgb(109, 213, 193) dashed;
}

</style>
<!-- *******************************************
	베이지색 검색창 달린 거
************************************************ -->
 <section class="post-wrapper-top" style="margin-top:65px;">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
         <ul class="breadcrumb">
          <li><a href="index.html">Home</a></li>
          <li>${id }</li>
        </ul>
        <h2>Review</h2>
      </div>      
    </div>
  </section>
  <!-- end post-wrapper-top -->
<!--*************************************
	왼쪽에 달린 프로필 사진 및 기타등등 
*****************************************  -->
  <section class="section1">
        <div class="col-md-2 col-md-offset-1" style="margin-top:25px;">
        <div>
          <div class="teammembers">
            <div class="he-wrap tpl2">
            	<c:if test="${not empty memberRecord.profile}" var="result">
            	<img src="<c:url value='/Upload/Member/${memberRecord.profile}'/>" alt="프로필 사진">
            	</c:if>
            	<c:if test="${not result}">
              <img src="<c:url value='/images/mypage/default-profille.jpg'/>" alt="프로필 사진">
              </c:if>
              <div class="he-view">
            
              </div>
            </div>
            <!-- he wrap -->
            <div class="teammembers-meta">
              <h4>${sessionScope.id}</h4>
            </div>
            <div id="MY-first-1-self-detail">
                     <p>
                        <span class="glyphicon glyphicon-map-marker" aria-hidden="true">
                        <c:if test="${not empty sessionScope.userid}">${sessionScope.userid}</c:if>
                        <c:if test="${empty sessionScope.userid}">Plan:It</c:if>
                           님의&nbsp자기소개입니다</span>
                     <p>${memberRecord.self}
                     </p>


         </div>

            
            <div class="teamskills" >
            <div id="MY-First-TotalContent" style="width:90%;">
                   <table id="MY-first-informtable" style="width:90%;">
                   <tr>
                      <td>Planner</td>
                      <td>00</td>
                   </tr>
                   <tr>
                   <td>Review</td>
                      <td>00</td>
                   </tr>
                   <tr>
                      <td>Like</td>
                      <td>00</td>
                   </tr>
                   <tr>
                      <td>Star Point</td>
                      <td>0000</td>
                  <!--  </tr>
                	<tr style="border-top:1px white dashed;">
                	<td colspan="2"> 선호사항</td>
                	</tr>
                       -->
                   </table>
                
                </div>
              
            </div>
            <!-- ***********************8
            선호도 조사 들어갈 부분
            *****************************8 -->
            <div id="MY-First-Preference" style="width:90%;" >
            	<table id="MY-first-prefertable" style="width:90%; padding:10px;">
            		<tr>
            		<c:if test="${empty sessionScope.memberPreferList }" var="result">
            			<td>플래닛을 즐겨주세요</td>
            		</c:if>	
            		<c:if test="${not result }">
            			<c:forEach var="list" items="${sessionScope.memberPreferList}" varStatus="loop">
            				<td>${list.kor }</td><!-- 왜 안나오지 -->
            			
            			</c:forEach>
            		</c:if>
            		</tr>
            	
            	</table>
            
            </div>
          </div>
          <!-- end teammembers -->
        </div>
</div>
  
<!--*************************************
	마이페이지 이동버튼
*****************************************  -->
<div class="container-fluid ">
      <div class="content col-md-7">
	<div class="mypage-content">
		<div class="mypagemenu">
			<div id="mypage">
				<!-- <h2>MY PAGE</h2> -->
			</div>
			<div id="MY-edit">
				<!-- 회원정보 수정폼으로 이동 -->
				<!-- <button type="submit" class="btn btn-default" id="MY-edit-button">회원정보수정</button> -->
			<%-- 	<a href="<c:url value='/planit/mypage/MyPageEditProfile.it' />" class="btn btn-default" id="MY-edit-button">회원정보수정</a> --%>
			<div class="dropdown">
				  
				  <a class="btn btn-link" href="<c:url value='/planit/mypage/MyPageHome.it'></c:url>">
				   돌아가기
				    <span class="glyphicon glyphicon-log-out"></a></span>
				
				  
				  
				</div><!-- dropdown -->
			</div><!-- MY-edit -->
		</div><!-- mypagemenu -->
		
		
		
		
		
<!--*************************************
	플래너 모아보기 뿌려주는 영역
*****************************************  -->		
		<!-- ------------------------- -->
		<!--        start First       -->
		<!-- ------------------------- -->
		<div class="row" id="MY-First">
			<div class="container-fluid">
					<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

						<div class="divider"></div>


						<div class="portfolio-centered">
							<div class="recentitems portfolio">
								<c:if test="${empty reviewList}" var="result">
									<h2>왜ㅑ 안되냐</h2>
								</c:if>

								<c:if test="${not result}">
									<c:forEach var="list" items="${reviewList}" varStatus="loop">
									
								<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 mockups">
									<div class="he-wrap tpl6 market-item">
										<c:if test="${empty list.firstimage }" var="yesimg">
										<img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
										</c:if>
										<c:if test="${yesimg}">

											<img src="<c:url value='/Upload/Review/${list.firstimage}'/>" style="height:230px" alt="">

										  </c:if>
										<div class="he-view">
											<div class="bg a0" data-animate="fadeIn">
												<h3 class="big a1" data-animate="fadeInDown">${list.title }(${list.series })</h3>
												<a data-rel="prettyPhoto"
													href="<c:url value='/images/main/slide2.jpg'/>"
													class="dmbutton a2" data-animate="bounceInLeft"><i
													class="fa fa-search"></i></a> <a href="#" class="dmbutton a2"
													data-animate="bounceInRight"><i class="fa fa-link"></i></a>
												<div class="portfolio_category text-center a2"
													data-animate="fadeIn"></div>
												<!-- portfolio_category -->
											</div>
											<!-- he bg -->
										</div>
										<!-- he view -->
									</div>
									<!-- he wrap -->
									<h3 class="title"><a href="<c:url value='/planit/review/ReviewView.it?review_id=${list.review_id}'/>">${list.title }(${list.series })</a></h3>
									<p>${list.hashtag }</p>
								
									
								</div>
									</c:forEach>
								</c:if>
								<!-- end col-4 -->

			

							</div>
							<!-- portfolio -->
						</div>
						<!-- portfolio container -->
						<div class="divider"></div>
					</div>
					<!-- end container -->

		</div>
		<!-- ---------------------- -->
		<!--       end First        -->
		<!-- ---------------------- -->
		<!-- ------------------------- -->
		<!--        start Second       -->
		<!-- ------------------------- -->
	<!--*************************************
	페이징 들어갈 영역
*****************************************  -->
	
	
		<!-- ---------------------- -->
		<!--       end Second        -->
		<!-- ---------------------- -->
		

	</div>
	<!--  end mypage-content -->

</div>
<!--  end container --> 
  `
</div>
</div>

</section>