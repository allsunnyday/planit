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
				<li><a href="index.html">Partner Page</a></li>
				<li>${partnerRecord.p_id }</li>
			</ul>
			<h2>Partner Page Home</h2>
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
					<h4>Plan:It</h4>
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
	<!-- ************************************
	마이페이지 홈 내용
	-수정폼이동,플래너 및 리뷰 요약, 기타 등등
***************************************** -->
	<div class="container-fluid ">
		<div class="content col-md-7">
			<div class="Partnerpage-content">
				<div class="Partnerpagemenu">
					<div id="Partnerpage">
						<!-- 	<h2>Partner PAGE</h2> -->
					</div>
					<div id="Partner-edit">
						<!-- 회원정보 수정폼으로 이동 -->
						<!-- <button type="submit" class="btn btn-default" id="Partner-edit-button">회원정보수정</button> -->
						<%-- 	<a href="<c:url value='/planit/Partnerpage/PartnerPageEditProfile.it' />" class="btn btn-default" id="Partner-edit-button">회원정보수정</a> --%>
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="Partner-edit-button" data-toggle="dropdown"
								aria-expanded="true">
								회원정보수정 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="Partner-edit-button">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="<c:url value='/plantit/mypage/partner/productResist.it' />">상품등록</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="<c:url value='#' />">프로필 수정</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="<c:url value='#' />">비밀번호 변경</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="<c:url value='#' />">비밀번호 확인 페이지(임시)</a></li>

							</ul>

						</div>
						<!-- dropdown -->
					</div>
					<!-- Partner-edit -->
				</div>
				<!-- Partnerpagemenu -->

				<!-- ------------------------- -->
				<!--        start First       -->
				<!-- ------------------------- -->
				<div class="row" id="Partner-First">
					<!--  내가 작성한 플래너 들어갈 div -->
					<!-- **********************************
		최신 플래너 요약보기/마우스 오버 추가
	**************************************** -->
					<div id="Partner-First-name">Room Information</div>
					<div class="Partner-More-Button">
						<a href="<c:url value='/planit/member/partner/ProductList.it'/>"  class="btn btn-link"><span class="glyphicon glyphicon-plus">더보기 </span></a>
					</div>
					<div id="First-line">
						<div id="Partner-First-content" class="col-md-12">
							 <div class="recentitems portfolio">
         			<c:if test="${empty partnerRoom }">
         				<div>
         					<h4 style="text-align: center">당신만의 멋진 리뷰를 작성해주세요</h4>
         				</div>
         			</c:if>
         			<c:if test="${not empty partnerRoom }">
         				<c:forEach var="list" items="${partnerRoom}" varStatus="loop">
	                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mockups">
	                       <div class="he-wrap tpl6 market-item">
	                       <c:if test="${empty list.roomimg1 }" var="result">
	                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
	                       </c:if>
	                       <c:if test="${not result }">
							<img src="<c:url value='/Upload/Partner/Product/${list.roomimg1}'/>" style="height:173px" alt="">
	                       </c:if>
	                         <div class="he-view">
	                           <div class="bg a0" data-animate="fadeIn">
	                             <h3 class="a1" data-animate="fadeInDown">${list.roomtitle}</h3>
	                             <a data-rel="prettyPhoto" href="<c:url value='/planit/member/partner/ProductView.it?roomcode=${list.roomcode}'/>" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
	                             <a href="single-portfolio-2.html" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
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
				<!-- ---------------------- -->
				<!--       end First        -->
				<!-- ---------------------- -->
				<!-- ---------------------- -->
				<!--       end Second       -->
				<!-- ---------------------- -->
				<div class="row" id="Partner-Second">
					<!--  내가 작성한 플래너 들어갈 div -->
					<div id="Partner-Second-name">Partner Review</div>
					<div class="Partner-More-Button">
							<a href="<c:url value='/mypage/partner/RequestEvent_P.it'/>"  class="btn btn-link"><span
								class="glyphicon glyphicon-plus">더보기 </span></a>
					</div>
					<div id="Third-line">
						<div id="Partner-Second-content" class="col-md-12">주간 예약 통계
						</div>


					</div>


				</div>
				<!-- ---------------------- -->
				<!--       end Second        -->
				<!-- ---------------------- -->
				<!-- ------------------------- -->
				<!--        start Forth      -->
				<!-- ------------------------- -->
				<div class="row" id="Partner-Third">
					<!--  내가 작성한 플래너 들어갈 div -->
					<div id="Partner-Third-name">Reservation details</div>
					<div class="Partner-More-Button">
							<a href="<c:url value='/mypage/partner/Reservation_P.it'/>" class="btn btn-link">  <span
								class="glyphicon glyphicon-plus">더보기 </span></a>
					</div>
					<div id="Forth-line">
						<div id="Forth-content" class="col-md-12">
							<!-- 찜해제버튼 추가 -->
							<div id="Partner-Third-ZZim-table">
								<table class="table">
									<tr>
										<td class="col-md-1 ">No.</td>
										<!-- 찜번호 -->
										<td class="col-md-1 ">이름</td>

										<td class="col-md-1 col-md-offset-1">객실</td>
										<td class="col-md-1 col-md-offset-1">Check-In</td>
										<td class="col-md-1 col-md-offset-1">Check-Out</td>
										<td class="col-md-1 col-md-offset-1">추가사항</td>

									</tr>
									<tr>
										<td>00</td>
										<!-- 찜번호 -->
										<td><span>김플랜</span></td>
										<td>Standard A</td>
										<td>2018.01.01</td>
										<td>2018.01.03</td>
										<td>X</td>

									</tr>
									<tr>
										<td>00</td>
										<!-- 찜번호 -->
										<td><span>이플랜</span></td>
										<td>Standard B</td>
										<td>2018.01.01</td>
										<td>2018.01.03</td>
										<td>추가 침구</td>


									</tr>
									<tr>
										<td>00</td>
										<!-- 찜번호 -->
										<td><span>박플랜</span></td>
										<td>Standard C</td>
										<td>2018.01.01</td>
										<td>2018.01.03</td>
										<td>조식추가</td>


									</tr>
								</table>
							</div>
						</div>


					</div>


				</div>
				<!-- ---------------------- -->
				<!--       end Forth         -->
				<!-- ---------------------- -->
				<!-- ------------------------- -->
				<!--        start Forth      -->
				<!-- ------------------------- -->
				<div class="row" id="Partner-Forth">
					<!--  내가 작성한 플래너 들어갈 div -->
					<div id="Partner-Forth-name">Partner Q&A</div>
					<div class="Partner-More-Button">
							<a href="<c:url value='/mypage/partner/Request_P.it'/>" class="btn btn-link">
							<span class="glyphicon glyphicon-plus">더보기 </span></a>
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
                        <td class="col-md-2 col-md-offset-2" >작성자</td>
                        <td class="col-md-2 col-md-offset-2">진행여부</td>
                        <td class="col-md-2 col-md-offset-2" >작성일</td>
                        <td class="col-md-2 col-md-offset-2">답변일</td>
                        

                     </tr>
                     <c:if test="${empty requestScope.userAskPartner }" var="isEmpty">
					<tr>
						<td colspan="6" style="text-align: center">등록된 문의사항이 없어요</td>
					</tr>
					</c:if>
					<c:if test="${not isEmpty }">
						<c:forEach var="list" items="${userAskPartner}" varStatus="loop">
							<tr>
								<%-- <td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td> --%>
								<td>${list.ASK_NO}</td>
								<td class="text-left" >
								<a style="color: rgb(110,112,118)" href="#"  >${list.TITLE }</a>
								</td>
								<!-- Modal -->
								<td>${list.ID}</td>
								<td>${list.STATUS}</td>
								<td>${list.ASKDATE}</td>
								<td>${list.REPLYDATE}</td>
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
				<!--       end Forth         -->
				<!-- ---------------------- -->

			</div>
			<!--  end Partnerpage-content -->

		</div>
		<!--  end container -->
		`
	</div>
</section>