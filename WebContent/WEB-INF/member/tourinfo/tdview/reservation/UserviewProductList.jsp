<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>s
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<jsp:include page="/WEB-INF/member/tourinfo/tdview/topMenu.jsp" flush="false" />
<style>
.Partnerpage-content {
	/* margin-top: 100px; */
	/* border: 3px black solid; */
	
}
 
#Partnerpage {
	display: inline-block;
	/*  border: 3px black solid;  */
}

#Partner-edit {
	display: inline-block;
	/*  border: 3px black solid;  */
	float: right;
	/* padding-top: 30px; */
}

#Partner-edit-button {
	background-color: whith;
	border: 1.5px black solid;
	/*  background-color: lightgray; */
	color: black;
	align: right;
}

#Partner-First {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px black solid;
	margin-bottom: 100px;
}

#Partner-First-1, #Partner-First-2 {
	/* 	//height:15%; */
	/* border: 1px purple solid; */
	margin-top: 10px;
}

#Partner-First-1-pictur, #Partner-First-1-self {
	/* border: 1px pink solid; */
	font-size: 1.5em;
	height: 150%;
}

#Partner-user-picture img {
	/* position: absolute; top:0; left: 0;
width: 100%;
height: 100%; */
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}

#Partner-First-content img, #Partner-Second-content img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

#Partner-user-picture {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px gray solid;
}

#Partner-First-Parter-RoomStatus {
	display: inline-block;
	border-radius: 10px;
	/* 	border: 3px gray dotted; */
	background-color: darkgray;
}

#Partner-First-2-Like {
	display: inline-block;
	border-radius: 10px;
	/* 	border: 3px gray dotted; */
	background-color: rgb(109, 213, 193);
}

#Partner-First-informtable td:first-child {
	font-size: 0.8em;
	/* font-weight: bold; */
	color: darkgray;
	text-align: left;
	align: left;
}

#Partner-First-informtable td:last-child {
	font-weight: lighter;
	font-size: 0.8em;
	color: black;
	text-align: left;
	/* 	align:right; */
	align: left;
}

.Partner-First-2-zzim {
	display: inline-block;
}

#Partner-First-Roomtable td:First-child {
	font-size: 1.0em;
	font-weight: bold;
	color: white;
	text-indent: 10px;
	text-align: left;
}

#Partner-First-Roomtable td:nth-child(2n) {
	font-weight: lighter;
	font-size: 1.0em;;
	color: white;
	/* 	align:right; */
	text-indent: 10px;
}

#Partner-First-2-Like {
	/* background-color:white; */
	margin-top: 20px;
}

#Partner-Second, #Partner-Forth, #Partner-Third {
	/* margin-top: 60px; */
	padding-top: 10px;
	border-top: 2px black solid;
	margin-bottom: 130px;
}

#Partner-First-content div, #Partner-Second-content div, #Third-content div,
	#Partner-Third-content div {
	/* 	margin-top: 20px; */
	height: 170px;
}

#Partner-First-name, #Partner-Second-name, #Partner-Forth-name,
	#Partner-Third-name {
	display: inline-block;
}

.Partner-More-Button {
	display: inline-block;
	float: right;
	margin-top: -5px;
}

.Partner-More-Button button {
	color: rgb(53, 181, 157);
}
.footer {position:absolute;bottom:0; width:100%;}
</style>
<!-- *******************************************
	베이지색 검색창 달린 거
************************************************ -->

<!--*************************************
	왼쪽에 달린 프로필 사진 및 기타등등 
*****************************************  -->
<section class="section1">
	
	<!--*************************************
	마이페이지 이동버튼
*****************************************  -->
	<div class="container-fluid ">
		<div class="content col-md-7">
			<div class="mypage-content">
		

<!--*************************************
	플래너 모아보기 뿌려주는 영역
*****************************************  -->
				<!-- ------------------------- -->
				<!--        start First       -->
				<!-- ------------------------- -->
				<div class="row" id="MY-First">
					<div class="container ">
						<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

							<div class="divider"></div>
 
							<div class="portfolio-centered">
								<div class="recentitems portfolio">
									<c:if test="${empty tourRoomList}" var="isEmpty">
										<h4>등록된 상품이 없습니다</h4>
									</c:if>
									<c:if test="${not empty tourRoomList}">
									
									<c:forEach var="list" items="${tourRoomList}" varStatus="loop">
									
										<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 mockups">
										
										<div class="he-wrap tpl6 market-item">
										 <c:if test="${empty list.ROOMIMG1 }" var="result">
				                         	<img src="<c:url value='/Upload/Tour/tempimage.png'/>" alt="" style="height:250px">
				                     	 </c:if>
				                      	<c:if test="${not result }">
											<img src="<c:url value='/Upload/Partner/Product/${list.ROOMIMG1}'/>" style="height:250px" alt="">
										</c:if>
										<div class="he-view">
												<div class="bg a0" data-animate="fadeIn">
													<h3 class="big a1" data-animate="fadeInDown"> ${list.ROOMTITLE}</h3>
													<a data-rel="prettyPhoto"
														href="#"
														class="dmbutton a2" data-animate="bounceInLeft" ><i
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
										<h3 class="title"><a href="<c:url value='/planit/member/partner/ProductView.it?roomcode=${list.ROOMCODE}'/>">${list.ROOMCODE},${list.ROOMTITLE}<a></a></h3>
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry"s
											standad dummy..</p>
									</div>
								</c:forEach>
									</c:if>
																		
								<!-- end col-4 -->
								</div>
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
</section>