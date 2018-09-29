<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/* 
.description:before {
	content: "";
	height: 100%;
} */
/* 
************************************************************************************************************************************************
지역선택 아이콘 
***********************************************************************************************************************************************
 */
.lcate .title {
	width: 200px;
	height: 97px;
	border: none;
	background:
		url('http://tong.visitkorea.or.kr/img/vk/kor/bz15/travel_plus/find_title_1.png')
		no-repeat;
	top: 30px;
	left: 30px;
}
/* -------------------------------- */
.mapIllust li {
	display: list-item;
	position: absolute;
}

/* 
************************************************************************************************************************************************
지도 영역별 클릭 버튼
***********************************************************************************************************************************************
 */
.icon1 { /* 인천 */
	left: 25px;
	top: 120px;
}

.icon2 { /* 서울 */
	left: 80px;
	top: 125px;
}

.icon3 { /* 경기 */
	left: 140px;
	top: 170px;
}

.icon4 { /* 강원 */
	left: 200px;
	top: 100px;
}

.icon5 { /* 충남 */
	left: 30px;
	top: 220px;
}

.icon6 { /* 세종 */
	left: 50px;
	top: 105px;
}

.icon17 { /* 충북 */
	left: 140px;
	top: 220px;
}

.icon7 { /* 대전 */
	left: 65px;
	top: 130px;
}

.icon8 {
	left: 135px;
	top: 120px;
}

.icon9 {
	left: 50px;
	top: 165px;
}

.icon10 {
	left: 120px;
	top: 160px;
}

.icon11 {
	left: 40px;
	top: 200px;
}

.icon12 {
	left: 20px;
	top: 230px;
}

.icon13 {
	left: 100px;
	top: 190px;
}

.icon14 {
	left: 165px;
	top: 175px;
}

.icon15 { /* 부산 */
	left: 250px;
	top: 430px;
}

.icon16 { /* 제주 */
	left: 40px;
	top: 530px;
}
/* -------------------------------- */
/* 
************************************************************************************************************************************************
지도 PNG
***********************************************************************************************************************************************
 */
 
.mapIllust {
	background:
		url('http://tong.visitkorea.or.kr/img/vk/kor/bz15/travel_plus/find_map.png')
		no-repeat;
		background-size: 400px 600px; 
		
}
.mapIllust ul {
	position: relative;
	width: 100%;
	height: 600px;
	/* background:
		url('http://tong.visitkorea.or.kr/img/vk/kor/bz15/travel_plus/find_map.png')
		no-repeat; */
	background-position: center;
	/* background-size: 90% 90%; */
	list-style: none;
	list-style-image: none;
}

.mapIllust button {
	color: white;
	line-height: normal;
	border: 0;
	letter-spacing: normal;
	word-spacing: normal;
}

.go-button {
	display: block;
	background: transparent;
	border-width: 0px;
	cursor: pointer;
}
</style>
<section>
	<div class="container-fluid" style="padding-top: 80px; padding-bottom: 30px; padding-left: 0px; padding-right: 0px;"
		id="wrapMap">
		<div class="col-sm-12">
			<form action="" name="searchForm">
				<div class="lcate" style="overflow: hidden; background-color: #47698c;">
					
					<div class="col-sm-12" style="display: inline-block;">

					<div class="mapIllust col-sm-4 col-sm-offset-1" >
								<ul id="setHiddenButtons1" >
								<li class="icon1"><button value="2" name="areaCode" type="button" class="go-button">인천</button></li>
								<li class="icon2"><button value="1" name="areaCode" type="button" class="go-button">서울</button></li>
								<li class="icon3"><button value="31" name="areaCode" type="button" class="go-button">경기</button></li>
								<li class="icon4"><button value="32" name="areaCode" type="button" class="go-button ov">강원</button>
								<input type="hidden" name="areaCode" value="32"></li>
								<li class="icon5"><button value="34" name="areaCode" type="button" class="go-button">충남</button></li>
								<li class="icon6"><button value="8" name="areaCode" type="button" class="go-button">세종</button></li>
								<li class="icon17"><button value="33" name="areaCode" type="button" class="go-button">충북</button></li>
								<li class="icon7"><button value="3" name="areaCode" type="button" class="go-button">대전</button></li>
								<li class="icon8"><button value="35" name="areaCode" type="button" class="go-button">경북</button></li>
								<li class="icon9"><button value="37" name="areaCode" type="button" class="go-button">전북</button></li>
								<li class="icon10"><button value="4" name="areaCode" type="button" class="go-button">대구</button></li>
								<li class="icon11"><button value="5" name="areaCode" type="button" class="go-button">광주</button></li>
								<li class="icon12"><button value="38" name="areaCode" type="button" class="go-button">전남</button></li>
								<li class="icon13"><button value="36" name="areaCode" type="button" class="go-button">경남</button></li>
								<li class="icon14"><button value="7" name="areaCode" type="button" class="go-button">울산</button></li>
								<li class="icon15"><button value="6" name="areaCode" type="button" class="go-button">부산</button></li>
								<li class="icon16"><button value="39" name="areaCode" type="button" class="go-button">제주</button></li>
								</ul>
							</div>
<!-- 
**********************************
Content 추천
**********************************
 -->
						
					</div>
				</div>
			</form>
		</div>

	</div>
</section>