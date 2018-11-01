<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<%@ include file="/WEB-INF/member/planner/after/logincheck.jsp" %>
<!--*************************************** location 상단 메뉴 부분 수정 시작 *********************************************-->

<section class="post-wrapper-top" style="margin-top: 70px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li>여행 플래너</li>
			</ul>
			<h2> 추억을 남길 나의 여행 지역 선택하기 </h2> 
		</div>		
		<a href="<c:url value='/planner/plan/routeresult.it'/>"> 결과 확인 페이지 테스팅 </a>
		<%-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  style="margin-top: 61px;">
			<ul class="nav nav-tabs" style="float: right;">
				<li class="active" style="display: block;"><a href="<c:url value='/Planit/Before/Location.it'/>"> 지역 선택 </a></li>
				<li style="display: block;"><a href="<c:url value='/planner/plan/route.it'/>"> 루 트 </a></li>
				<li style="display: block;"><a href="<c:url value='/planner/plan/schedule.it'/>"> 일 정 </a></li>
				<li style="display: block;"><a href="<c:url value='/planner/plan/reservation.it'/>"> 예 약 </a></li>				
			</ul>						
		</div>	 --%>	
	</div>
</section>

<!--*************************************** location 상단 메뉴 부분 수정 종료 *********************************************-->

<!-- 여행 지역 선택(팔도) 시작 -->
<section class="section1">
	<div class="container clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
		<div class="divider"></div>
			<div class="divider"></div>
			<div class="portfolio-centered">
				<div class="recentitems portfolio">				
					<!-- 서울 특별시  선택 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par10.jpg" alt="서울 특별시 ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">서울 특별시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="1" title="서울 특별시">
										<i class="fa fa-search"></i></a>									
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">							
							<a href="#" id="1" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo"> 서울 특별시 </a>														
						</h3>
						<p>강남구, 강동구, 강북구, 강서구, 관악구, 광진구, 구로구, 금천구, 노원구, 도봉구, 동대문구,
							동작구, 마포구, 서대문구, 서초구, 성동구, 성북구, 송파구, 양천구, 영등포구, 용산구, 은평구, 종로구, 중구,
							중랑구</p>
					</div>	
					<!-- 서울 특별시  선택 프로필 종료-->
					
					<!-- 부산 광엯시 선택 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par11.jpg" alt="부산 광역시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">부산 광역시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#"
										class="dmbutton a2 locationselect" data-animate="bounceInLeft"  id="6" title="부산 광역시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" >
							<a href="#" id="6" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo"> 부산 광역시 </a>
						</h3>
						<p>강서구, 금정구, 기장군, 남구, 동구, 동래구, 부산진구, 북구, 사상구, 사하구, 서구, 수영구, 연제구, 영도구, 중구, 해운대구</p>
					</div>
					<!-- 부산 광엯시 선택 프로필 종료-->
										
					<!-- 대구 광역시 선택 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par12.jpg" alt="대구 광역시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">대구 광역시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="4" title="대구 광역시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" >
							<a href="#" id="4" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">대구 광역시</a> 
						</h3>
						<p>남구, 달서구, 달성군, 동구, 북구, 서구, 수성구, 중구</p>
					</div>
					<!-- 대구 광역시 선택 프로필 종료-->
					
					<!-- 인천 광역시 선택 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par13.jpg" alt="인천 광역시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">인천 광역시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="2" title="인천 광역시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 
							<a href="#" id="2" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">인천 광역시</a>
						</h3>
						<p>강화군, 계양구, 남동구, 동구, 미추홀구, 부평구, 서구, 연수구, 옹진군, 중구</p>
					</div>
					<!-- 인천 광역시 선택 프로필 종료-->
					
					<!-- 광주 광역시 선택 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par14.jpg" alt="광주 광역시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">광주 광역시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="5" title="광주 광역시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 
							<a href="#" id="5" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">광주 광역시</a>
						</h3>
						<p>광산구, 남구, 동구, 북구, 서구</p>
					</div>
					<!-- 광주 광역시 선택 프로필 종료-->
					
					<!-- 대전 광역시 선택 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par15.jpg" alt="대전 광역시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">대전 광역시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="3" title="대전 광역시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" >
							<a href="#" id="3" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">대전 광역시 </a>
						</h3>
						<p>대덕구, 동구, 서구, 유성구, 중구</p>
					</div>
					<!-- 대전 광역시 선택 프로필 종료-->
					
					<!-- 울산 광역시 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par16.jpg" alt="울산 광역시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">울산 광역시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="7" title="울산 광역시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 
							<a href="#" id="7" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">울산 광역시</a> 
						</h3>
						<p>남구, 동구, 북구, 울주군, 중구</p>
					</div>
					<!-- 울산 광역시 선택 프로필 종료 -->
					
					<!-- 세종 특별 자치시 프로필 시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par17.jpg" alt="세종 특별 자치시  ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">세종 특별 자치시</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="8" title="세종 특별 자치시">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 
							<a href="#" id="8" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">세종 특별 자치시 </a>
						</h3>
						<p>소정면, 전의면, 전동면, 연서면, 조치원읍, 연동면, 부강면, 연기면, 장군면, 금남면, 고운동,
							아름동, 도담동, 종촌동, 새롬동, 한솔동, 보람동</p>
					</div>
					<!-- 세종 특별 자치시 프로필 종료-->
					
					<!-- 경기도 지역 선택 프로필  시작-->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par01.jpg" alt="경기도 ">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">경기도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="31" title="경기도">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 
							<a href="#"  id="31" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">경기도 </a>
						</h3>
						<p>가평군, 고양시, 과천시, 광명시, 광주시, 구리시, 군포시, 김포시, 남양주시, 동두천시, 부천시,
							성남시, 수원시, 시흥시, 안산시, 안성시, 안양시, 양주시, 양평군, 여주시, 연천군, 오산시, 용인시, 의왕시,
							의정부시, 이천시, 파주시, 평택시, 포천시, 하남시, 화성시</p>
					</div>					
					<!-- 경기도 지역 선택 프로필 종료 -->	
	
					<!-- 충청북도 지역 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par02.jpg" alt="충청북도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">충청북도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="33" title="충청북도">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="33" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">충청북도</a>
						</h3>
						<p>괴산군, 단양군, 보은군, 영동군, 옥천군, 음성군, 제천시, 증평군, 진천군, 청주시, 충주시, 청원군</p>
					</div>
					<!-- 충청북도 지역 선택 프로필 종료 -->

					<!-- 충청남도 지역 선택 프로필 시작 -->	
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par03.jpg" alt="충청남도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">충청남도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="34" title="충청남도">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="34" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">충청남도</a>
						</h3>
						<p>계룡시, 공주시, 금산군, 논산시, 당진시, 보령시, 부여군, 서산시, 서천군, 아산시, 예산군, 천안시, 청양군, 태안군, 홍성군</p>
					</div>	
					<!-- 충청남도 지역 선택 프로필 종료 -->
					<div class="divider"></div>
					<!-- 강원도 지역선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par04.jpg" alt="강원도" >
							<div class="he-view" >
								<div class="bg a0" data-animate="fadeIn" >
									<h3 class="big a1" data-animate="fadeInDown">강원도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="32" title="강원도">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="32" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">강원도</a>
						</h3>
						<p>강릉시, 고성군, 동해시, 삼척시, 속초시, 양구군, 양양군, 영월군, 원주시, 인제군, 정선군, 철원군,
							춘천시, 태백시, 평창군, 홍천군, 화천군, 횡성군</p>
					</div>
					<!-- 강원도 지역선택 프로필 종료 -->
					
					<!-- 전라북도 지역선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par05.jpg" alt="전라북도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">전라북도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="37" title="전라북도">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="37" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">전라북도</a>
						</h3>
						<p>고창군, 군산시, 김제시, 남원시, 무주군, 부안군, 순창군, 완주군, 익산시, 임실군, 장수군, 전주시, 정읍시, 진안군</p>
					</div>
					<!-- 전라북도 지역선택 프로필 종료 -->
					
					<!-- 전라남도 지역 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par06.jpg" alt="전라남도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">전라남도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="38" title="전라남도">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="38" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">전라남도</a>
						</h3>
						<p>강진군, 고흥군, 곡성군, 광양시, 구례군, 나주시, 담양군, 목포시, 무안군, 보성군, 순천시, 
						신안군, 여수시, 영광군, 영암군, 완도군, 장성군, 장흥군, 진도군, 함평군, 해남군, 화순군</p>
					</div>
					<!-- 전라남도 지역 선택 프로필 종료 -->
					
					<!-- 경상북도 지역 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par07.jpg" alt="경상북도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">경상북도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="35" title="경상북도">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="35" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">경상북도</a>
						</h3>
						<p>경산시, 경주시, 고령군, 구미시, 군위군, 김천시, 문경시, 봉화군, 상주시, 성주군, 안동시, 영덕군,
							영양군, 영주시, 영천시, 예천군, 울릉군, 울진군, 의성군, 청도군, 청송군, 칠곡군, 포항시</p>
					</div>
					<!-- 경상북도 지역 선택 프로필 종료 -->
					
					<!-- 경상남도 지역 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par08.jpg" alt="경상남도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">경상남도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="36" title="경상남도">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="36" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">경상남도</a>
						</h3>
						<p>거제시, 거창군, 고성군, 김해시, 남해군, 밀양시, 사천시, 산청군, 양산시, 의령군, 진주시, 창녕군,
							창원시, 통영시, 하동군, 함안군, 함양군, 합천군, 마산시, 진해시</p>
					</div>
					<!-- 경상남도 지역 선택 프로필 종료 -->
					
					<!-- 제주도 지역 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par09.jpg" alt="제주도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">제주도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" 
										class="dmbutton a2 locationselect" data-animate="bounceInLeft" id="39" title="제주도">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">
							<a href="#" id="39" class="locationselect" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo">제주도</a>
						</h3>
						<p>서귀포시, 제주시, 남제주군, 북제주군</p>
					</div>
					<!-- 제주도 지역 선택 프로필 종료 -->
				</div>
			</div>
		</div><!-- 영역 크기 -->
	</div><!-- container -->
</section><!-- end section -->
<!-- 여행 지역 선택(팔도) 종료 -->



<!--********************************************************* MODAL 시작**************************************************** -->
<!--********************************************************* 모달 적용 자바 스크립트 시작  *****************************************************-->
<%-- <%@ include file="selectCityJavascript.jsp" %> --%>
<!-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script> -->
<%@ include file="selectCityJavascript.jsp" %>
<!--********************************************************* 모달 적용 자바 스크립트 시작  *****************************************************-->

<!--*******************************************************모달 적용 css 시작************************************************  -->
<link href="<c:url value='/BootStrap/planmap/css/location.css'/>" rel="stylesheet" type="text/css">
<!--*******************************************************모달 적용 css 종료************************************************  -->
<!-- Large modal -->
<div id="pardoinfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="dlogLabel" aria-hidden="true" >
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content" style="width: 700px;">
			<form method="post" style=" margin: 0 auto;" name="locationday" id="locationday"><!-- action="<c:url value='/planner/plan/route.it'/>" -->
				<!-- ************************************************* 모달 헤더 시작 ******************************************************** -->
				<div class="modal-header text-center">
					<h2 class="modal-title text-center" id="modal-login-label" style="display: inline">City</h2>
					<p class="text-center" style="display: inline">...추억을 남길 도시를 선택하세요</p>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						<span >&times;</span>
					</button>				
				</div>
				<!-- ************************************************* 모달 헤더 종료 ******************************************************** -->
				<!-- ******************************************************모달 바디 시작 **************************************************** -->
				<div class="modal-body">
					<div class="row" >						
						<div class="col-md-6 col-sm-6 col-xs-12 text-center">							
							<div class="select">
								<select name="paldoNcity" id="paldoNcity" style="width: 100%">
							    	<option value="1">서울 특별시</option>
							    	<option value="2">인천 광역시</option>
							    	<option value="3">대전 광역시</option>
							    	<option value="4">대구 광역시</option>
							    	<option value="5">광주 광역시</option>
							    	<option value="6">부산 광역시</option>
							    	<option value="7">울산 광역시</option>
							    	<option value="8">세종 특별 자치시</option>
							    	<option value="31">경기도</option>
							    	<option value="32">강원도</option>
							    	<option value="33">충청북도</option>
							    	<option value="34">충청남도</option>
							    	<option value="35">경상북도</option>
							    	<option value="36">경상남도</option>
							    	<option value="37">전라북도</option>
							    	<option value="38">전라남도</option>
							    	<option value="39">제주도</option>
							    	<!-- <option value="aa">-- 직접입력--</option> -->
							    </select>
						    </div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 text-center">
							<div class="select">						
								<select name="paldoNcityColumn" id="paldoNcityColumn" style="width: 100%" >
							    	<option value="1">강남구</option>
							    	<option value="2">강동구</option>
							    	<option value="3">강북구</option>
							    	<option value="4">강서구</option>
							    	<option value="5">관악구</option>
							    	<option value="6">광진구</option>
							    	<option value="7">구로구</option>
							    	<option value="8">금천구</option>
							    	<option value="9">노원구</option>
							    	<option value="10">도봉구</option>
							    	<option value="11">동대문구</option>
							    	<option value="12">동작구</option>
							    	<option value="13">마포구</option>
							    	<option value="14">서대문구</option>
							    	<option value="15">서초구</option>
							    	<option value="16">성동구</option>
							    	<option value="17">성북구</option>
							    	<option value="18">송파구</option>
							    	<option value="19">양천구</option>
							    	<option value="20">영등포구</option>
							    	<option value="21">용산구</option>
							    	<option value="22">은평구</option>
							    	<option value="23">종로구</option>
							    	<option value="24">중구</option>
							    	<option value="25">중랑구</option>
							    </select>
						    </div>
						</div>
						<!-- <div class="col-md-5 col-sm-5 col-xs-12" >
							<input type="text" id="paldotext" name="paldotext" style="font-size: 14px; margin: 0 auto;"
								placeholder="여행 도시를 직접 입력" class="form-control" disabled value=''>
						</div> -->
					</div>
					<div class="row" style="margin-top: 20px;">
						<div class="col-md-4 col-sm-4 col-xs-12 text-right" >
							<div class="select" style="width: 100%">
								<select role="menu"  id="planday" name="planday" aria-labelledby="planday">
									<option value="0"> -- 여행 일수 -- </option>
									<option value="1"> 1일 (당일치기) </option>
									<option value="2"> 2일 (1박 2일) </option>
									<option value="3"> 3일 (2박 3일) </option>
									<option value="4"> 4일 (3박 4일) </option>
									<option value="5"> 5일 (4박 5일) </option>
									<option value="6"> 6일 (5박 6일) </option>
									<option value="7"> 7일 (6박 7일) </option>
									<option value="9"> 직접 입력 </option>
								</select>
							</div>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12">
							<input type="text" id="plandaytext" name="plandaytext" style="font-size: 14px; width: 100%" 
								placeholder="직접 입력시 일수만 입력해주세요" class="form-control" disabled value=''>
						</div>
					</div>
				</div>
				<!-- ******************************************************모달 바디 시작 **************************************************** -->
				<div class="modal-footer">
					<div class="row text-center" style="text-align: center;">
						<div class="col-md-12">
							<button type="submit" id="nextplan" name="nextplan" class="btn" style="font-size: 14px; width: auto;">Next Plan</button>								
						</div>						
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<!--********************************************************* MODAL 종료**************************************************** -->

