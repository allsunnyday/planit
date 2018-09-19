<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/* 1. Menu settings */
.menu,
.menu li {
  margin: 0;
  padding: 0;
}
.menu a {
  font-weight: 700;
  padding: .75em 1.25em;
  transition: background .25s ease-in-out;
}
.menu li {
  position: relative;
  border-width: 0 0 1px;
  border-style: solid;
}
.menu li:last-child {
  border-width: 0;
}
.menu li,
.menu a {
  display: block;
} 

/* 2. Navigation aligned right-to-left */
.nav--right {
  text-align: right;
}

/* 3. Screen settings */
@media only screen and (min-width: 1024px) {
  /* 3.1 Flex-display of `.menu` for desktop */
  .menu {
    display: flex;
    flex-flow: row wrap;
  }
   /* 3.1.1 Border adjustments for menu-items */
  .menu li {
    border-width: 0 1px 0 0;
  }

  /* 3.2 Navigation aligned to the center */
  .nav--center .menu {
    justify-content: center;
  }

  /* 3.3 Navigation aligned right-to-left */
  .nav--right .menu {
    justify-content: flex-end;
  }
}

/* Theming */
.nav {
  background-color: #222;
}

.menu li {
  border-color: #2a2a2a;
}
.menu li a {
  color: rgba(255, 255, 255, 0.75);
}
.menu li a:hover, .menu li a:active, .menu li a:focus {
  color: rgba(255, 255, 255, 0.9);
  background-color: black;
}

/* Green */
.nav--green {
  background-color: #1abc9c;
}

.nav--green .menu li {
  border-color: #1cc9a7;
}
.nav--green .menu li a {
  color: rgba(255, 255, 255, 0.75);
}
.nav--green .menu li a:hover, .nav--green .menu li a:active, .nav--green .menu li a:focus {
  color: rgba(255, 255, 255, 0.9);
  background-color: #16a085;
}

.w3bits-labs { width: 468px; height: 60px; margin: 1.5em 0 0}
</style>

<div id="mapControllerLeft" style="width: 25%; float: left; margin-top: 60px; margin-left: 0px; background: #fff; border-radius: 9px;">
	<div style="background: #3ad195; padding-top: 5px;">
		<div id="topControllerLeft" style="padding-top: 5px; width: 75%; float: left;">
			<div style="padding-left: 10px;">
				<a href="javascript:gotoHome()"><img src="#" height="35px"></a>
			</div>
			<div style="height: 45px; padding-top: 2px; padding-left: 4px; padding-bottom: 5px;">
				<div style="text-align: left; padding-top: 5px; padding-left: 5px;">
					<div style="padding-right: 20px; padding-left: 5px; padding-top: 1px;">
						<div style="border-radius: 2; border: 1px solid #efefef; padding-left: 10px; background: #fff">
							<span style="padding-left: 0px; padding-right: 0px; color: #696969; font-size: 9pt;">
								<i class="fa fa-calendar"></i>출발일</span> 
							<input style="width: 95px; font-size: 11pt; background: #fff; margin-left: 0px; padding-left: 5px; padding-top: 2px; padding-bottom: 2px; color: #c0c0c0; border: 0px solid #c0c0c0" id="thedate" type="text" onchange="updateDate()">								
						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			style="float: left; width: 25%; text-align: right; padding-right: 10px; padding-top: 5px; padding-bottom: 0px;">
			<div onclick="toggleSelectTripWith();"
				style="cursor: pointer; border: 1px solid #efefef; background: #fff; border-radius: 2px;; text-align: center; padding-top: 5px; padding-bottom: 5px;">

				<div style="display: block">
					<img id="tripwith_img"
						src="#"
						height="43px">
				</div>
				<div style="font-size: 8pt;">
					<span id="tripwith_txt">일행 선택</span> <i class="fa fa-angle-down"></i>
				</div>
			</div>
		</div>
		<div style="clear: both"></div>

		<div id="div_tripwith_selector"
			style="border-radius: 5px; z-index: 999; display: none; position: absolute; top: 73px; width: 270px; left: 13px; background: #696969"></div>

	</div>

	<div id="cityroute" style="position: relative; text-align: center; width: 100%; margin-left: 0px; padding-left: 0px; padding-top: 0px; overflow-x: hidden; overflow-y: auto; height: 530px; background: #ffffff">
		<br />
		<br />
		<br />
		<font style="font-size: 9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font>
	</div>

</div>

<div class="nav nav--center" style="margin-top: 60px; width: 75%; height: 40px; float: right;">
	<nav class="nav nav--green lab-nav--light">
		<ul class="menu text-center">
			<li class="menu-item" style="width: 15%;"><a href="#">저 장</a></li>
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/route.it'/>">루 트</a></li>			
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/schedule.it'/>">일 정</a></li>
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/reservation.it'/>">예 약</a></li>
			<li class="menu-item" style="width: 15%;"><a href="#">즐겨찾기</a></li>			
		</ul><!-- .menu -->
	</nav><!-- .nav -->
	<div id="planmap"  style="background-color:cyan; width:100%; height:580px; float: inherit; text-align: center;">
		<!-- map -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=162c4fb804e14ced48e576137f9e9437"></script>
		<script>
			var container = document.getElementById('planmap'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
				level: 3 //지도의 레벨(확대, 축소 정도)
			};
			
			var map = new daum.maps.Map(container, options);
		</script>
		<!-- map -->
	</div>
</div>



