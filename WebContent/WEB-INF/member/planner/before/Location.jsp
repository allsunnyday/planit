<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 버튼 css -->
<style>
button.btn {
	height: 52px;
    margin: 0;
    padding: 0 20px;
    vertical-align: middle;
    background: #46b8da;
    border: 0;
    font-family: 'Lato', sans-serif;
    font-size: 22px;
    font-weight: 400;
    line-height: 52px;
    color: #fff;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    text-shadow: none;
    -moz-box-shadow: none;
    -webkit-box-shadow: none;
    box-shadow: none;
    -o-transition: all .3s;
    -moz-transition: all .3s;
    -webkit-transition: all .3s;
    -ms-transition: all .3s;
    transition: all .3s;
</style>
<!-- 버튼 css -->

<section class="post-wrapper-top" style="margin-top: 70px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li>여행 플래너</li>
			</ul>
			<h2>나만의 즐거운 여행 계획 작성하기</h2>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->
			<div class="search-bar">
				<form action="" method="get">
					<fieldset>
						<input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
						<input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
					</fieldset>
				</form>
			</div>
			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
<!-- end post-wrapper-top -->

<!-- 여행 지역 선택(팔도) 시작 -->
<section class="section1">
	<div class="container clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
		<div class="divider"></div>
		<!-- 상단 타이틀 시작 -->
		<!-- <div class="col-lg-12 col-md-12 col-sm-12 text-center">
			<h2> 여행지 선택</h2>
			 <small>새로운 추억을 남길 여행지를 선택하고 루트설정으로 이동</small>			
			<hr/>	
		</div> -->
		<!-- 상단 타이틀 종료 -->
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>									
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 서울 특별시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#"class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 부산 광역시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 대구 광역시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 인천 광역시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 광주 광역시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 대전 광역시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 울산 광역시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 세종 특별 자치시 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center" > 경기도 </h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">충청북도</h3>
						<p>괴산군, 단양군, 보은군, 영동군, 옥천군, 음성군, 제천시, 증평군, 진천군, 청주시, 충주시</p>
					</div>
					<!-- 충청북도 지역 선택 프로필 종료 -->

					<!-- 충청남도 지역 선택 프로필 시작 -->	
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par03.jpg" alt="충청남도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">충청남도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">충청남도</h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">강원도</h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">전라북도</h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">전라남도</h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">경상북도</h3>
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
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">경상남도</h3>
						<p>거제시, 거창군, 고성군, 김해시, 남해군, 밀양시, 사천시, 산청군, 양산시, 의령군, 진주시, 창녕군,
							창원시, 통영시, 하동군, 함안군, 함양군, 합천군</p>
					</div>
					<!-- 경상남도 지역 선택 프로필 종료 -->
					
					<!-- 제주도 지역 선택 프로필 시작 -->
					<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height: 445px;">
						<div class="he-wrap tpl6 market-item">
							<img src="/Planit/images/plan/par09.jpg" alt="제주도" >
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">제주도</h3>
									<a data-rel="prettyPhoto" data-toggle="modal" data-target="#pardoinfo" data-modal-id="pardoinfo" href="#" class="dmbutton a2" data-animate="bounceInLeft">
									<i class="fa fa-search"></i></a> 
									<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
								</div>
							</div>
						</div>
						<h3 class="title text-center">제주도</h3>
						<p>서귀포시, 제주시</p>
					</div>
					<!-- 제주도 지역 선택 프로필 종료 -->
				</div>
			</div>
		</div><!-- 영역 크기 -->
	</div><!-- container -->
</section><!-- end section -->
<!-- 여행 지역 선택(팔도) 종료 -->

<style>
	/* 드롭 다운 리스트가 블랙으로 출력되는것을 화이트로 수정 */
	 #planul li {background-color: white; }
</style>

<!-- MODAL -->
<!-- Large modal -->
<div id="pardoinfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="dlogLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<form action="<c:url value='/planner/plan/route.it' />" method="post" class="" style=" margin: 0 auto; ">
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
						<div class="dropdown text-right col-md-4 col-sm-4 col-xs-12" >
							<a id="pardocity" data-toggle="dropdown" aria-haspopup="true" class="btn btn-default dropdown-toggle"
								aria-expanded="false"> 도시 선택 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="citymenu" id="planul" aria-labelledby="pardocity">
								<li><a href="#">평택</a></li>
								<li><a href="#">수원</a></li>
								<li><a href="#">안산</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12" >
							<!-- <label class="sr-only" for="form-text"> 여행 도시 입력 </label> -->
							<input type="text" name="paldotext"
								style="font-size: 14px; margin: 0 auto;"
								placeholder="여행 도시를 직접 입력해주세요" class="form-control"
								id="paldotext">
						</div>
					</div>
					<div class="row" style="margin-top: 20px;">
						<div class="dropdown text-right col-md-4 col-sm-4 col-xs-12">
							<a id="planday" data-toggle="dropdown" aria-haspopup="true" class="btn btn-default dropdown-toggle" aria-expanded="false"> 
								여행 일수 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="daymenu"  id="planul" aria-labelledby="planday">
								<li><a href="#">1일</a></li>
								<li><a href="#">2일</a></li>
								<li><a href="#">3일</a></li>
								<li><a href="#">4일</a></li>
								<li><a href="#">5일</a></li>
								<li><a href="#">6일</a></li>
								<li><a href="#">7일</a></li>
								<li><a href="#">8일이상</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12" >
							<input type="text" name="paldotext" style="font-size: 14px;" placeholder="여행 일수를 입력해주세요" class="form-control" id="paldotext">
						</div>
					</div>
				</div>
				<!-- ******************************************************모달 바디 시작 **************************************************** -->
				<div class="modal-footer">
					<div class="row text-center" style="text-align: center;">
						<div class="col-md-12">
							<button type="submit" class="btn" style="font-size: 14px; width: auto;">Next Plan</button>								
						</div>						
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
/* $(function(){
	$('#pardoinfo').modal('show').css({
		'margin-top' : function() {
			return -($(this).height() /2 );		
		},
		'margin-left': function(){
			return -($(this).width() / 2 );
		}
	});
}); */
	
</script>

