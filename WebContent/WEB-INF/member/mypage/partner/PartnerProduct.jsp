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

<script type="text/javascript">
	$(function() {
		$('#datetimepicker3').datetimepicker({
			format : 'LT'
		});
	});
</script>

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
			<div class="Partnerpage-content"></div>
			<!-- end container -->
			<section class="section1">
				<div class="container clearfix">
					<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

						<form id="registerform" method="post" name="registerform"
							action="#">
							<div class="col-lg-5 col-md-5 col-sm-12">
								<h4 class="title">
									<span>Room Pictur</span>
								</h4>
								
								<div>
									<input type="file" >
									
								</div>

							</div>
							<!-- end login -->

							<div class="col-lg-5 col-md-5 col-sm-12">
								<h4 class="title">
									<span>Register Form</span>
								</h4>
<!-- 상품이름 -->
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="상품의 이름을 입력해주세요" id="">

								</div>

								<!-- 상품 유형 트윈룸인지 등등 -->
								<div class="form-group">
									<label for="cardnumber">Type of Room 1<span
										class="required">*</span></label> <select class="form-control">
										<option>스탠다드</option>
										<option>디럭스</option>
										<option>스위트</option>
									</select>
								</div>
								<div class="form-group">
									<label for="cardnumber">Type of Room 2<span
										class="required">*</span></label> <select class="form-control">
										<option>싱글</option>
										<option>더블</option>
										<option>트윈</option>
										<option>트리플</option>
										<option>패밀리</option>
									</select>
								</div>
								<div class="form-group">
									<label for="cardnumber">Room Size<span class="required">*</span></label>
									<input type="text" class="form-control"
										placeholder="평수을 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">Quantity<span class="required">*</span></label>
									<input type="text" class="form-control" name="roomcount"
										id="roomcount" placeholder="수량을 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">기준인원<span class="required">*</span></label>
									<input type="text" class="form-control" name="roombasecount"
										id="roombasecount" placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">최대인원<span class="required">*</span></label>
									<input type="text" class="form-control" name="roommaxcount"
										id="roommaxcount" placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">비수기 평일<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roomoffseasonfee1" id="roomoffseasonfee1"
										placeholder="숫자만 입력해주세요">
								</div>
								<div class=form-group>
									<label for="cardnumber">비수기 주말<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roomoffseasonfee2" id="roomoffseasonfee2"
										placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">성수기 평일<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roompeakseasonfee1" id="roompeakseasonfee1"
										placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">성수기 주말<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roompeakseasonfee2" id="roompeakseasonfee2"
										placeholder="숫자만 입력해주세요">
								</div>

								<div class="form-group">
									<label for="cardnumber">Option 1<span class="required">*</span></label>
									<div>
										<input type="checkbox" value="roombathfacility" id="roombathfacility" name="roombathfacility"> 목욕시설
										<input type="checkbox" value="roombath" id="roombath" name="roombath">욕조
										<input type="checkbox" value="roomhometheater" id="roomhometheater" name="roomhometheater"> 홈시어터
										<input type="checkbox" value="roomaircondition" id="roomaircondition" name="roombathfacility"> 에어컨
										<input type="checkbox" value="roomtv" id="roomtv" name="roomtv"> TV
										<input type="checkbox" value="roompc" id="roompc" name="roompc">PC
										<input type="checkbox" value="roomcable" id="roomcable" name="roomcable"> 케이블
									</div>
								</div>
								<div class="form-group">
									<label for="cardnumber">Option 2<span class="required">*</span></label>
									<div >
										<input type="checkbox" value="roominternet" id="roominternet" name="roominternet"> 인터넷
										<input type="checkbox" value="roomrefrigerator" id="roomrefrigerator" name="roomrefrigerator"> 냉장고
										<input type="checkbox" value="roomtoiletries" id="roomtoiletries" name="roomtoiletries"> 세면도구
										<input type="checkbox" value="roomsofa" id="roomsofa" name="roomsofa"> 소파
										<input type="checkbox" value="roomcook" id="roomcook" name="roomcook">취사용춤
										<input type="checkbox" value="roomtable" id="roomtable" name="roomtable"> 테이블
										<input type="checkbox" value="roomhairdryer" id="roomhairdryer" name="roomhairdryer"> 드라이기
									</div>
								</div>
						</form>
					</div>
				</div>
				<!-- end register -->
		</div>
		<!-- end content -->
</section>
</div>
</div>
</section>
<!-- end section -->
