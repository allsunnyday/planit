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
/* 수정됨 */
 #MY-Second, #MY-Third, #MY-Forth {
	 margin-top: 20px; 
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 130px;
}
/* 수정됨 */
#MY-First-content div, #MY-Second-content div, #Third-content div,
	#MY-Forth-content div {
 /* 	margin-top: 20px; */
	padding-top: 10px;
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
#liked_ul{
	 margin-left: 40%;
  margin-right: auto;
}
#liked_ul li{
	border:none;
	display:inline;
	color: rgb(110,112,118);
	margin-right:20px;
	font-size: 1.2em;
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
          <li>${id}</li>
        </ul>
        <h2>Liked</h2>
      </div>      
    </div>
  </section>
  <!-- end post-wrapper-top -->
  <section class="section1">
<!--***************************왼쪽에 달린 프로필 사진 및 기타등등***************************************  -->
  <%-- <%@ include file="/WEB-INF/member/mypage/MyPageLeftSubMenu.jsp" %> --%>
  <jsp:include page="MyPageLeftSubMenu.jsp" flush="false" />
<!--***************************마이페이지 이동버튼**************************************  -->
<div class="container-fluid ">
      <div class="content col-md-7">
	<div class="mypage-content">
		<div class="mypagemenu">
			<div id="MY-edit">
				<!-- 회원정보 수정폼으로 이동 -->
				<!-- <button type="submit" class="btn btn-default" id="MY-edit-button">회원정보수정</button> -->
			<%--<a href="<c:url value='/planit/mypage/MyPageEditProfile.it' />" class="btn btn-default" id="MY-edit-button">회원정보수정</a> --%>
				  <a href="<c:url value='/planit/mypage/MyPageHome.it'/> ">돌아가기 <span class="glyphicon glyphicon-log-out"></span></a>
			</div><!-- MY-edit -->
		</div><!-- mypagemenu -->
		
<!--*************************************
	좋아요 모아보기 뿌려주는 영역
*****************************************  -->		
		<div class="row" id="MY-Third">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="MY-Third-name">My ZZim</div>
			
			<div id="Third-line">
				<div id="Third-content" class="col-md-12">
					<!-- 찜해제버튼 추가 -->
					<div id="MY-Third-ZZim-table">
						<div class="tabbable servicetab tabs-left">
					          <ul id="liked_ul"class=" col-md-offset-4">
					            <li><a style="color: rgb(110,112,118)" href="services.html#webdesign" data-toggle="tab"><i class="glyphicon glyphicon-queen"></i>Tour</a></li>
					           <!--  <li><a style="color: rgb(110,112,118)" href="services.html#webdevelopment" data-toggle="tab"><i class="glyphicon glyphicon-calendar"></i> Planner</a></li> -->
					            <li><a style="color: rgb(110,112,118)" href="services.html#webdevelopment2" data-toggle="tab"><i class="glyphicon glyphicon-edit"></i> Review</a></li>
					          </ul>
					          <div class="tab-content" style="">
					            <div class="tab-pane active" id="webdesign">
					              <!-- <h5 class="title"><i class="fa fa-laptop"></i> Web Design Services</h5> -->
					              <div class="row">
					                
					                 <c:if test="${empty requestScope.likedTourAll }" var="isEmpty">
										<h4 style="text-align: center">등록된 좋아요가 없습니다:)</h4>
									</c:if>
									<c:if test="${not isEmpty}">
						                <c:forEach var="list" items="${likedTourAll}" varStatus="loop">
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
					            
					            <!-- 두번째 탭 -->
					            <div class="tab-pane" id="webdevelopment">
					           <!--    <h5 class="title"><i class="fa fa-cogs"></i> Web Development Services</h5> -->
					              <div class="row">
					             
					 				<c:if test="${empty requestScope.likedPlannerAll }" var="isEmptyPlan">
										<h4 style="text-align: center">등록된 좋아요가 없습니다:)</h4>
									</c:if>
									<c:if test="${not isEmptyPlan}">
						                <c:forEach var="list" items="${likedPlannerAll}" varStatus="loop">
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
						         
										<c:if test="${empty requestScope.likeReviewAll }" var="isEmptyPlan">
											<h4 style="text-align: center">등록된 좋아요가 없습니다:)</h4>
										</c:if>
										<c:if test="${not isEmptyPlan}">
							                <c:forEach var="list" items="${likeReviewAll}" varStatus="loop">
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
					</div>
				</div>


			</div>


		</div>
		
	<!--*************************************
	페이징 들어갈 영역
*****************************************  -->
		<!-- ------------------------- -->
		<!--        start Second       -->
		<!-- ------------------------- -->
	
	
	
		<!-- ---------------------- -->
		<!--       end Second        -->
		<!-- ---------------------- -->
		

	</div>
	<!--  end mypage-content -->

</div>
<!--  end container --> 
  `
</div>
</section>