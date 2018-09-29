<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.mypage-content {
	margin-top: 100px;
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
	padding-top: 30px;
}

#MY-edit-button {
	border: 1.5px rgb(53, 181, 157) solid;
	/*  background-color: lightgray; */
	color: rgb(53, 181, 157);
	align: right;
}

#MY-first {
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
#MY-second-content img{
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

#MY-first-2-inform {
	display: inline-block;
	border-radius: 10px;
	border: 2px gray solid;
	background-color: white;
}

#MY-first-2-Like {
	display: inline-block;
	border-radius: 10px;
	border: 3px gray dotted;
	background-color: white;
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

.MY-first-2-ul li:first-child {
	font-size: 1.0em;
	font-weight: bold;
}

.MY-first-2-ul li:last-child {
	font-weight: lighter;
	font-size: 3.0em;;
	color: rgb(109, 213, 193);
	text-indent: 60px;
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

#MY-second, #MY-third, #MY-forth, #MY-fifth {
	margin-top: 60px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 130px;
}

#MY-second-content div, #MY-third-content div, #forth-content div,
	#MY-fifth-content div {
	margin-top: 20px;
	height: 170px;
}
</style>
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>akdlvpdlwl</li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 식당들</h2>
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
  <!--***********************************************************
  오른쪽 (사이드바) 
  ***************************************************************  -->
<section class="section1" >
    <div class="container-fluid clearfix">
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
        
        
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 full-left">
          <div class="teammembers">
            <div class="he-wrap tpl2">
              <img src="<c:url value='/images/mypage/default-profille.jpg'/>" alt="">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <div class="center-bar">
                    <a href="#" class="twitter a0" data-animate="elasticInDown"></a>
                    <a href="#" class="facebook a1" data-animate="elasticInDown"></a>
                    <a href="#" class="google a2" data-animate="elasticInDown"></a>
                  </div>
                  <!-- center  bar -->
                </div>
              </div>
            </div>
            <!-- he wrap -->
            <div class="teammembers-meta">
              <h4>사용자 이름</h4>
            </div>
            <p>자기소개 아ㅓㄹ아ㅓ 알 ㅇ런 ㅇ란 일나 ㄹ</p>
            <small>등급?</small>
            <div class="teamskills">
              <div class="progress">
                <div data-effect="slide-left" "><span>나의 플래너</span></div>
              </div>
              <div class="progress">
                <div data-effect="slide-left" ><span>나의 리뷰</span></div>
              </div>
              <div class="progress">
                <div data-effect="slide-left"><span>좋아요</span></div>
              </div>
              <div class="progress">
                <div data-effect="slide-left"><span></span></div>
              </div>
              <div class="progress">
                <div data-effect="slide-left"><span>좋아요</span></div>
              </div>
            </div>
          </div>
          <!-- end teammembers -->
        </div>
        <!-- end col 4 -->
 <!--***********************************************************
 위를 jsp include 로 변경해야 한다. 
  ***************************************************************  -->

	<div class="col-sm-8 " >
	<div class="mypage-content">
		<div class="mypagemenu">
			<div id="mypage">
				<h2>MY PAGE</h2>
			</div>
			<div id="MY-edit">
				<!-- 회원정보 수정폼으로 이동 -->
				<!-- <button type="submit" class="btn btn-default" id="MY-edit-button">회원정보수정</button> -->
			<%-- 	<a href="<c:url value='/planit/mypage/MyPageEditProfile.it' />" class="btn btn-default" id="MY-edit-button">회원정보수정</a> --%>
			<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="MY-edit-button" data-toggle="dropdown" aria-expanded="true">
				    회원정보수정
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu" aria-labelledby="MY-edit-button">
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/MyPageEditProfile.it' />">프로필 수정</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">비밀번호 변경</a></li>
				    
				  </ul>
				  
				</div><!-- dropdown -->
			</div><!-- MY-edit -->
		</div><!-- mypagemenu -->
		<!-- ------------------------- -->
		<!--        start first        -->
		<!-- ------------------------- -->
		<div class="row" id="MY-first">
			<!--  프로필 들어갈 div -->
			<div id="MY-first-name">My Information</div>

			<div id="MY-first-1" class="col-md-5 col-md-offset-1">
				<!-- 영역 이름 -->

				<!-- 프로필 상세 -->
				<div class="row">
					<div id="MY-first-1-pictur" class="col-md-5 .col-md-pull-7">
						<!-- 프로필 사진 들어갈 div -->
						<div id="MY-user-picture">
						 <img src='<c:url value='/images/mypage/default-profille.jpg'/>'
								class="img-circle" alt="프로필사진" /> 
							<!-- 이미지 들어갈자리 -->
						</div>
					
					</div>

					<div id="MY-first-1-self" class="col-md-7 .col-md-pull-5">
						<!-- 자기소개 들어갈 div -->
						<div id="MY-first-1-self-detail">
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									Plan:It님의&nbsp자기소개입니다</span>
							</p>
							<p>Plan:It님의&nbsp자기소개입니다</p>
							<p>Plan:It님의&nbsp자기소개입니다</p>




						</div>


					</div>
				</div>


			</div>
			<div id="MY-first-2" class="col-md-6">
				<!-- 내가작성한 컨텐츠 통계 -->
				<div class="row">
					<div id="MY-first-2-inform" class="col-md-11 col-md-offset-1">
						<!-- 내가 작성한 리뷰, 플랜 및 찜한 컨텐츠 갯수 -->
						<div id="MY-first-2-planer" class="col-md-4">
							<ul id="ulPlaner" class="MY-first-2-ul">
								<li>Planer</li>
								<li>00</li>
							</ul>
						</div>
						<div id="MY-first-2-review" class="col-md-4">
							<ul id="ulReview" class="MY-first-2-ul">
								<li>Review</li>
								<li>00</li>
							</ul>
						</div>
						<div id="MY-first-2-zzim" class="col-md-4">
							<ul id="ulZZim" class="MY-first-2-ul">
								<li>ZZim</li>
								<li>00</li>
							</ul>
						</div>

					</div>
				</div>

				<!-- 내가작성한 컨텐츠 통계 -->
				<!-- 나의 선호사항 알려주는 부분 -->
				<div class="row">
					<div id="MY-first-2-Like" class="col-md-11 col-md-offset-1">
						<!-- 내가 작성한 리뷰, 플랜 및 찜한 컨텐츠 갯수 -->
						<div id="MY-first-2-Like-detail" class="col-md-12">
							<ul id="ulLike" class="MY-first-2-ul">
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
						</div>


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
		<div class="row" id="MY-second">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="MY-second-name">My Planer</div>
			<div id="second-line">
				<div id="MY-second-content" class="col-md-12">
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
		<div class="row" id="MY-third">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="MY-third-name">My Review</div>
			<div id="third-line">
				<div id="MY-third-content" class="col-md-12">
					<div class="col-md-3" style="border: 1px green solid">첫번쨰 이미지

					</div>

					<div class="col-md-3" style="border: 1px green solid">두번쨰 이미지

					</div>
					<div class="col-md-3" style="border: 1px green solid">세번쨰 이미지

					</div>
					<div class="col-md-3" style="border: 1px green solid">네번쨰 이미지

					</div>


				</div>


			</div>


		</div>
		<!-- ---------------------- -->
		<!--       end third        -->
		<!-- ---------------------- -->
		<!-- ------------------------- -->
		<!--        start forth      -->
		<!-- ------------------------- -->
		<div class="row" id="MY-forth">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="MY-forth-name">My ZZim</div>
			<div id="forth-line">
				<div id="forth-content" class="col-md-12">
					<!-- 찜해제버튼 추가 -->
					<div id="MY-forth-ZZim-table">
						<table class="table">
							<tr>
								<td class="col-md-2 ">ZZim No.</td>
								<!-- 찜번호 -->
								<td class="col-md-1 ">분류</td>
								<td class="col-md-3 col-md-offset-1">제목</td>
								<td class="col-md-2 col-md-offset-2">작성자</td>
								<td class="col-md-2 col-md-offset-2">ZZim날짜</td>

							</tr>
							<tr>
								<td>00</td>
								<!-- 찜번호 -->
								<td><span class="glyphicon glyphicon-edit"></span></td>
								<td>리뷰 ZZim</td>
								<td>Plan:It</td>
								<td>2018.01.01</td>

							</tr>
							<tr>
								<td>00</td>
								<!-- 찜번호 -->
								<td><span class="glyphicon glyphicon-calendar"></span></td>
								<td>플래너 ZZim</td>
								<td>Plan:It</td>
								<td>2018.01.01</td>

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
		<div class="row" id="MY-fifth">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="MY-fifth-name">My Q&A</div>
			<div id="fifth-line">
				<div id="MY-fifth-content" class="col-md-12">
					<div id="MY-fifth-Q&A-table">
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
	<!--  end mypage-content -->
	</div>

</div>
<!--  end container -->
</div>
</section>