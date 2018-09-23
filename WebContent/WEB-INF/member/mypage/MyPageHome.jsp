<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.mypage-content {
	margin-top: 100px;
	/* border: 3px black solid; */
}

#MY-first {
	border-top: 2px green solid;
}

#MY-first-1, #MY-first-2 {
	/* 	//height:15%; */
	border: 1px purple solid;
}

#MY-first-1-pictur, #MY-first-1-self {
	border: 1px pink solid;
}

#user-picture {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	border: 1px blue solid;
}

#MY-first-2-inform {
	border-radius: 10px;
	border: 2px gray solid;
}
#MY-first-2-planer ul{
   list-style:none;
	display:inline;
}
#MY-first-2-planer{
border: 1px pink solid;
float:left;
}
#MY-first-2-review{
border: 1px pink solid;
float:left;
}
#MY-first-2-zzim{
border: 1px pink solid;
float:right;
}
</style>

<div class="container">

	<div class="mypage-content">
		<div class="mypagemenu">
			<h2>
				마이페이지 입니다<small>회원정보수정버튼 추가하기</small>
			</h2>

		</div>
		<!-- ------------------------- -->
		<!--        start first        -->
		<!-- ------------------------- -->
		<div class="row" id="MY-first">
			<!--  프로필 들어갈 div -->

			<div id="MY-first-1" class="col-md-6">
				<!-- 프로필 상세 -->
				<div class="row">
					<div id="MY-first-1-pictur" class="col-md-6 .col-md-pull-6">
						<!-- 프로필 사진 들어갈 div -->
						<div id="MY-user-picture">
							<img src='<c:url value='/images/main/astronaut.png'/>'
								class="img-circle" alt="프로필사진" />
						</div>
						<button class="btn btn-default btn-xs">프로필 변경</button>

					</div>

					<div id="MY-first-1-self" class="col-md-6 .col-md-pull-6">
						<!-- 자기소개 들어갈 div -->
						<div>
							<p>자기소개입니다</p>


						</div>


					</div>
				</div>


			</div>
			<div id="MY-first-2" class="col-md-6">
				<!-- 내가작성한 컨텐츠 통계 -->
				<div class="row">
					<div id="MY-first-2-inform" class="col-md-11 col-md-offset-1">
						<!-- 내가 작성한 리뷰, 플랜 및 찜한 컨텐츠 갯수 -->
						<div id="MY-first-2-planer">
							<ul id="ulPlaner">
								<li>Planer</li>
								<li>00</li>
							</ul>
						<div id="MY-first-2-review">
							<ul id="ulReview">
								<li>Review</li>
								<li>00</li>
							</ul>
						</div>
							<div id="MY-first-2-zzim">
								<ul id="ulZZim">
									<li>ZZim</li>
									<li>00</li>
								</ul>
							</div>
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
		<div class="row" id="second">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="second-line">
				<div id="second-content1">
					<h4>플래너 플래너</h4>
					<h4>플래너 플래너</h4>
					<h4>플래너 플래너</h4>
					<h4>플래너 플래너</h4>
					<h4>플래너 플래너</h4>

				</div>


			</div>


		</div>
		<!-- ---------------------- -->
		<!--       end second        -->
		<!-- ---------------------- -->




	</div>
	<!--  end mypage-content -->

</div>
<!--  end container -->