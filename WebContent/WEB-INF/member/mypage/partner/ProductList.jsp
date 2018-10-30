<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
<!-- *******************************************
	베이지색 검색창 달린 거
************************************************ -->
<section class="post-wrapper-top" style="margin-top: 65px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="index.html">Product</a></li>
				<li>${partnerRecord.p_id }</li>
			</ul>
			<h2>Product List</h2>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->
			<div class="search-bar">
				<form action="" method="get">
					<fieldset>
						<input type="image" src="img/pixel.gif" class="searchsubmit"
							alt="" /> <input type="text" class="search_text showtextback"
							name="s" id="s" value="Search..." />
					</fieldset>
				</form>
			</div>
			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
<!-- end post-wrapper-top -->
<!--*************************************
	왼쪽에 달린 프로필 사진 및 기타등등 
*****************************************  -->
<section class="section1">
	<div class="col-md-2 col-md-offset-1" style="margin-top: 25px;">
		<div>
			<div class="teammembers">
				<div class="he-wrap tpl2">
					<img src="<c:url value='/images/mypage/default-profille.jpg'/>"
						alt="프로필 사진">
					<div class="he-view"></div>
				</div>
				<!-- he wrap -->
				<div class="teammembers-meta">
					<h4>Product List</h4>
				</div>
				<div id="Partner-First-1-self-detail">
					<p>
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
							(주)회사이름추가하기</span>
					<div class="Partner-First-PartnerInform">

						<table id="Partner-First-informtable" style="width: 110%;">
							<tr>
								<td>사업자번호</td>
								<td>${partnerRecord.business_no }</td>
							</tr>
							<tr>
								<td>대표자</td>
								<td>${partnerRecord.name }</td>
							</tr>
							<tr>
								<td>주소</td>
								<td>${partnerRecord.address }</td>
							</tr>
							<tr>
								<td>전화</td>
								<td>${partnerRecord.tel }</td>
							</tr>



						</table>

					</div>


					<div class="teamskills">
						<div id="Partner-First-Parter-RoomStatus" style="width: 100%;">
							<table id="Partner-First-Roomtable" style="width: 100%;">
								<tr>
									<td>Total Room</td>
									<td>00</td>
								</tr>
								<tr>
									<td>Resting room</td>
									<td>00</td>
								</tr>
								<tr>
									<td>Reserved room</td>
									<td>00</td>
								</tr>
								<tr>
									<td>Star Point</td>
									<td>00</td>
								</tr>


							</table>
						</div>
					</div>

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
							
								<a class="btn btn-link"
									href="<c:url value='/planit/mypage/partner/PartnerMyPageHome.it'></c:url>">
									돌아가기 <span class="glyphicon glyphicon-log-out"> </span>
								</a>
							


						</div>
						<!-- dropdown -->
					</div>
					<!-- MY-edit -->
				</div>
				<!-- mypagemenu -->





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

									<c:if test="${empty roomlist }" var="isEmpty">
										<h4>상품을 등록해주세요</h4>
									</c:if>
									<c:if test="${not isEmpty }">
									
									<c:forEach var="list" items="${roomlist}" varStatus="loop">
									
										<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 mockups">
										
										<div class="he-wrap tpl6 market-item">
										 <c:if test="${empty list.roomimg1 }" var="result">
				                         	<img src="<c:url value='/Upload/Tour/tempimage.png'/>" alt="" style="height:250px">
				                     	 </c:if>
				                      	<c:if test="${not result }">
											<img src="<c:url value='/Upload/Partner/Product/${list.roomimg1}'/>" style="height:250px" alt="">
										</c:if>
										<div class="he-view">
												<div class="bg a0" data-animate="fadeIn">
													<h3 class="big a1" data-animate="fadeInDown"> ${list.roomtitle}</h3>
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
										<h3 class="title"><a href="<c:url value='/planit/member/partner/ProductView.it?roomcode=${list.roomcode}'/>">${list.roomcode},${list.roomtitle}<a></a></h3>
									<!-- 	<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry"s
											standad dummy..</p> -->
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