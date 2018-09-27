<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.Partnerpage-content {
	margin-top: 100px;
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
	padding-top: 30px;
}

#Partner-edit-button {
	border: 1.5px rgb(53, 181, 157) solid;
	/*  background-color: lightgray; */
	color: rgb(53, 181, 157);
	align: right;
}

#Partner-first {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 100px;
}

#Partner-first-1, #Partner-first-2 {
	/* 	//height:15%; */
	/* border: 1px purple solid; */
	margin-top: 10px;
}

#Partner-first-1-pictur, #Partner-first-1-self {
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
#Partner-second-content img,#Partner-third-content img{
position: absolute; top:0; left: 0;
width: 100%;
height: 100%;
}
#Partner-user-picture {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px gray solid;
}

#Partner-first-2-inform {
	display: inline-block;
	border-radius: 10px;
	border: 2px gray solid;
	background-color: white;
}

#Partner-first-2-Like {
	display: inline-block;
	border-radius: 10px;
	border: 3px gray dotted;
	background-color: white;
}

#Partner-first-2-inform ul, #Partner-first-2-Like ul {
	list-style: none;
	display: inline;
}

#Partner-first-2-total, #Partner-first-2-resting {
	/* border: 1px pink solid; */
	border-right: 1px lightgray solid;
	display: inline-block;
}

#Partner-first-2-reserved {
	display: inline-block;
}

.Partner-first-2-ul li:first-child {
	font-size: 1.0em;
	font-weight: bold;
}

.Partner-first-2-ul li:last-child {
	font-weight: lighter;
	font-size: 3.0em;;
	color: rgb(109, 213, 193);
	text-indent: 60px;
}

#Partner-first-2-Like {
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

#Partner-second, #Partner-third, #Partner-forth, #Partner-fifth {
	margin-top: 60px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 130px;
}

#Partner-second-content div, #Partner-third-content div, #forth-content div,
	#Partner-fifth-content div {
	margin-top: 20px;
	height: 170px;
}
</style>

<div class="container">

	<div class="Partnerpage-content">
		<div class="Partnerpagemenu">
			<div id="Partnerpage">
				<h2>Partner PAGE</h2>
			</div>
			<div id="Partner-edit">
				<!-- 회원정보 수정폼으로 이동 -->
				<!-- <button type="submit" class="btn btn-default" id="Partner-edit-button">회원정보수정</button> -->
			<%-- 	<a href="<c:url value='/planit/Partnerpage/PartnerPageEditProfile.it' />" class="btn btn-default" id="Partner-edit-button">회원정보수정</a> --%>
			<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="Partner-edit-button" data-toggle="dropdown" aria-expanded="true">
				    회원정보수정
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu" aria-labelledby="Partner-edit-button">
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/partner/PartnerEdit.it' />">기업 수정</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">비밀번호 변경</a></li>
				    
				  </ul>
				  
				</div><!-- dropdown -->
			</div><!-- Partner-edit -->
		</div><!-- Partnerpagemenu -->
		<!-- ------------------------- -->
		<!--        start first        -->
		<!-- ------------------------- -->
		<div class="row" id="Partner-first">
			<!--  프로필 들어갈 div -->
			<div id="Partner-first-name">Partner Information</div>

			<div id="Partner-first-1" class="col-md-5 col-md-offset-1">
				<!-- 영역 이름 -->

				<!-- 프로필 상세 -->
				<div class="row">
					<div id="Partner-first-1-pictur" class="col-md-12">
					
						<!-- 자기소개 들어갈 div -->
						<div id="Partner-first-1-partnerInformation">
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									(주)Plan:It님</span>
							</p>
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									사업자번호:123-45-678900</span>
							</p>
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									주소:서울특별시 디지털로 123 311호</span>
							</p>
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									전화:02-1234-5678</span>
							</p>
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									업종:숙박업</span>
							</p>
						




						</div>


					</div>
				</div>


			</div>
			<div id="Partner-first-2" class="col-md-6">
				<!-- 내가작성한 컨텐츠 통계 -->
				<div class="row">
					<div id="Partner-first-2-inform" class="col-md-11 col-md-offset-1">
						<!-- 내가 작성한 리뷰, 플랜 및 찜한 컨텐츠 갯수 -->
						<div id="Partner-first-2-total" class="col-md-4">
							<ul id="ulTotal" class="Partner-first-2-ul">
								<li>Total Room</li>
								<li>00</li>
							</ul>
						</div>
						<div id="Partner-first-2-resting" class="col-md-4">
							<ul id="ulResting" class="Partner-first-2-ul">
								<li>Resting room</li>
								<li>00</li>
							</ul>
						</div>
						<div id="Partner-first-2-reserved" class="col-md-4">
							<ul id="ulReserved" class="Partner-first-2-ul">
								<li>Reserved room</li>
								<li>00</li>
							</ul>
						</div>

					</div>
				</div>

				<!-- 내가작성한 컨텐츠 통계 -->
				<!-- 나의 선호사항 알려주는 부분 -->
				<div class="row">
					<div id="Partner-first-2-Like" class="col-md-11 col-md-offset-1">
						여기 뭐라도 넣고싶다
					<!-- 	<div id="Partner-first-2-Like-detail" class="col-md-12">
							<ul id="ulLike" class="Partner-first-2-ul">
								<li>Like</li>
								<li><span class="glyphicon glyphicon-map-marker"
									aria-hidden="true">Mountain</span></li>
								<li><span class="glyphicon glyphicon-map-marker"
									aria-hidden="true">Beach</span></li>
								<li><span class="glyphicon glyphicon-map-marker"
									aria-hidden="true">Field</span></li>
								<li><span class="glyphicon glyphicon-map-marker"
									aria-hidden="true">Valley</span></li>
							</ul>
						</div> -->


					</div>
				</div> 
			</div>
		</div>
		<!-- ---------------------- -->
		<!--       end first        -->
		<!-- ---------------------- -->
		<!-- ------------------------- -->
		<!--        start second       -->
		<!-- ------------------------- -->
		<div class="row" id="Partner-second">
			<!--  객실에 대한 설명? 이 들어갈 div -->
			<div id="Partner-second-name">Room Information</div>
			<div id="second-line">
				<div id="Partner-second-content" class="col-md-12">
					<div class="col-md-3" style="border: 1px green solid">
						<img src="<c:url value='/images/main/slide2.jpg'/>" alt="최신 이미지" />
					</div>

					<div class="col-md-3" style="border: 1px green solid">두번쨰 이미지
						<img src="<c:url value='/images/main/slide2.jpg'/>" alt="최신 이미지" />
					</div>
					<div class="col-md-3" style="border: 1px green solid">세번쨰 이미지

						<img src="<c:url value='/images/main/slide2.jpg'/>" alt="최신 이미지" />
					</div>
					<div class="col-md-3" style="border: 1px green solid">네번쨰 이미지

						<img src="<c:url value='/images/main/slide2.jpg'/>" alt="최신 이미지" />
					</div>

				</div>


			</div>


		</div>
		<!-- ---------------------- -->
		<!--       end second        -->
		<!-- ---------------------- -->
		<!-- ------------------------- -->
		<!--        start third       -->
		<!-- ------------------------- -->
		<div class="row" id="Partner-third">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="Partner-third-name">Partner Review</div>
			<div id="third-line">
				<div id="Partner-third-content" class="col-md-12">
					주간 예약 통계
				</div>


			</div>


		</div>
		<!-- ---------------------- -->
		<!--       end third        -->
		<!-- ---------------------- -->
		<!-- ------------------------- -->
		<!--        start forth      -->
		<!-- ------------------------- -->
		<div class="row" id="Partner-forth">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="Partner-forth-name">Reservation details</div>
			<div id="forth-line">
				<div id="forth-content" class="col-md-12">
					<!-- 찜해제버튼 추가 -->
					<div id="Partner-forth-ZZim-table">
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
								<td>김플랜</span></td>
								<td>Standard A</td>
								<td>2018.01.01</td>
								<td>2018.01.03</td>
								<td>X</td>

							</tr>
							<tr>
							<td>00</td>
								<!-- 찜번호 -->
								<td>이플랜</span></td>
								<td>Standard B</td>
								<td>2018.01.01</td>
								<td>2018.01.03</td>
								<td>추가 침구</td>


							</tr>
							<td>00</td>
								<!-- 찜번호 -->
								<td>박플랜</span></td>
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
		<!--       end forth         -->
		<!-- ---------------------- -->
		<!-- ------------------------- -->
		<!--        start forth      -->
		<!-- ------------------------- -->
		<div class="row" id="Partner-fifth">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="Partner-fifth-name">Partner Q&A</div>
			<div id="fifth-line">
				<div id="Partner-fifth-content" class="col-md-12">
					<div id="Partner-fifth-Q&A-table">
						<table class="table">
							<tr>
								<td class="col-md-2 ">번호</td>
								<!-- 찜번호 -->
								<td class="col-md-1 ">분류</td>
								<td class="col-md-3 col-md-offset-1">제목</td>
								<td class="col-md-2 col-md-offset-2">날짜</td>
								<td class="col-md-2 col-md-offset-2">진행여부</td>

							</tr>
							<tr>
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

							</tr>
						</table>
					</div>




				</div>


			</div>


		</div>
		<!-- ---------------------- -->
		<!--       end forth         -->
		<!-- ---------------------- -->


	</div>
	<!--  end Partnerpage-content -->

</div>
<!--  end container -->