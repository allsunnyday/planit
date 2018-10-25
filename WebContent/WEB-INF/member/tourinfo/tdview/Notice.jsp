<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700"
	rel="stylesheet">
<link rel="icon" type="image/png" sizes="32x32"
	href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<link rel="stylesheet"
	href="https://365ok.co.kr/theme/ok/css/default.css?ver=171222">
<link rel="stylesheet"
	href="https://365ok.co.kr/theme/ok/css/animate.min.css">
<link rel="stylesheet"
	href="https://365ok.co.kr/theme/ok/css/owl.carousel.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/main.css">
<script src="https://365ok.co.kr/theme/ok/js/jquery-2.2.4.min.js"></script>


<style>
thead{
 font-size:1.4em;
 font-weight: bold;
}
tbody{
 font-size:1.2em;
}
</style>

<!-- 콘텐츠 시작 { -->
<div id="main" class="container">

	
	<section class="sub-area relative" id="home">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">
<!-- 					<marquee dircection=up behavior="alternate" height=90> -->
<!-- 					<font color=white size=10>공지사항</font> -->
<!-- 					</marquee> -->
					공지사항</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- End sub title -->

	<!-- 게시판 목록 시작 { -->
	
	<section class="service-area pt-50 pb-50" id="lecture">


		<!-- 게시판 페이지 정보 및 버튼 시작 { -->
		<div id="bo_btn_top">
			<div id="bo_list_total">
				<span style="font-size:1.1em">Total : &nbsp${totalRecordCount}개 </span>

			</div>
				<br/>
		</div>
		<!-- } 게시판 페이지 정보 및 버튼 끝 -->

<!-- 		<form name="fboardlist" class="form" id="fboardlist" -->
<!-- 			action="./board_list_update.php" -->
<!-- 			onsubmit="return fboardlist_submit(this);" method="post"> -->
<!-- 			<input type="hidden" name="bo_table" value="notice"> <input -->
<!-- 				type="hidden" name="sfl" value=""> <input type="hidden" -->
<!-- 				name="stx" value=""> <input type="hidden" name="spt" -->
<!-- 				value=""> <input type="hidden" name="sca" value=""> -->
<!-- 			<input type="hidden" name="sst" value="wr_num, wr_reply"> <input -->
<!-- 				type="hidden" name="sod" value=""> <input type="hidden" -->
<!-- 				name="page" value="1"> <input type="hidden" name="sw" -->
<!-- 				value=""> -->


	
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th class="col-md-2" style="text-align: center;">번호</th>
						<th class="col-md-8" style="text-align: center;">제목</th>
						<th class="col-md-1" style="text-align: center;">작성자</th>
						<th class="col-md-1" style="text-align: center;">날짜</th>
					</tr>
				</thead>
				<c:forEach var="record" items="${notice}">
				<tbody>
					<tr class="">
						<td class="col-md-2" style="text-align: center;">${record.no }</td>
						<td class="col-md-8" padding-left: 0px">
							<div class="bo_tit">
								<a href="<c:url value='/planit/search/tourinfo/NoticeView.it?no=${record.no}'/>">
									${record.title } </a>
							</div>
						</td>
						<td class="col-1" style="text-align: center;">
						${record.name }
						</td>
						<td class="col-md-1" style="text-align: center;">${record.postdate }</td>
					</tr>
				</tbody>
				</c:forEach>
			</table>



		<div class="row">
			<div class="col-md-12">${pagingString}</div>
		</div>

		<div class="row">
			<div class="text-center">
				<form class="form-inline" method="post" action="<c:url value='/planit/search/tourinfo/Notice.it'/>">
					<div class="form-group">
						<select name="searchColumn" class="form-control">
							<option value="all">전체검색</option>
							<option value="title">제목</option>
							<option value="tel">작성자</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="searchWord" class="form-control" />
					</div>
					<button style="margin-bottom: 10px" type="submit"
						class="btn btn-primary">검색</button>

				</form>
			</div>
		</div>
	</section>



</div>


