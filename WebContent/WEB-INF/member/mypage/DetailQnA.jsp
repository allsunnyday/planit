<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp"%>
<style>
<style>
.footer {position:absolute;bottom:0; width:100%;}

#mypage {
	display: inline-block;
}

#MY-edit {
	display: inline-block;
	float: right;
}

#MY-edit-button {
	background-colorl: whith;
	border: 1.5px #aeaeae solid;
	color: rgb(53, 181, 157);
	align: right;
}

#MY-First {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px #aeaeae solid;
	margin-bottom: 100px;
}

#MY-first-1, #MY-first-2 {
	margin-top: 10px;
}

#MY-first-1-pictur, #MY-first-1-self {
	font-size: 1.5em;
	height: 150%;
}

#MY-user-picture img {
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}

#MY-First-content img, #MY-Second-content img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

#MY-user-picture {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px gray solid;
}

#MY-First-TotalContent {
	display: inline-block;
	border-radius: 10px;
	background-color: rgb(109, 213, 193);
}

#MY-First-Preference {
	display: inline-block;
	border-radius: 10px;
	border: #aeaeae dashed;
}

#MY-first-2-Like {
	display: inline-block;
	border-radius: 10px;
	background-color: rgb(109, 213, 193);
}

#MY-first-2-inform ul, #MY-first-2-Like ul {
	list-style: none;
	display: inline;
}

#MY-first-2-planer, #MY-first-2-review {
	border-right: 1px lightgray solid;
	display: inline-block;
}

#MY-first-2-zzim {
	display: inline-block;
}

#MY-first-informtable td:first-child {
	font-size: 1.0em;
	font-weight: bold;
	color: white;
	text-indent: 10px;
	text-align: left;
}

#MY-first-informtable td:last-child {
	font-weight: lighter;
	font-size: 1.0em;
	color: white;
	text-align: right;
}

#MY-first-2-Like {
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

#MY-Second, #MY-Third, #MY-Forth {
	padding-top: 10px;
	border-top: 2px #aeaeae solid;
	margin-bottom: 130px;
}

#MY-First-content div, #MY-Second-content div, #Third-content div,
	#MY-Forth-content div {
	height: 170px;
}

#MY-First-name, #MY-Second-name, #MY-Third-name, #MY-Forth-name {
	display: inline-block;
}

.MY-More-Button {
	display: inline-block;
	float: right;
	margin-top: -5px;
}

.MY-More-Button button {
	color: rgb(53, 181, 157);
}

#liked_ul {
	margin-left: 40%;
	margin-right: auto;
}

#liked_ul li {
	border: none;
	display: inline;
	color: rgb(110, 112, 118);
	margin-right: 20px;
	font-size: 1.2em;
}

#myedit li {
	background: #fff
}

#myedit li:hover {
	background: #3498DB
}

#myedit li:focus {
	background: #3498DB
}
</style>

<!-- *******************************************
   베이지색 검색창 달린 거
************************************************ -->

<section class="post-wrapper-top" style="margin-top: 65px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="index.html">My Page</a></li>
				<li>${id }</li>
			</ul>
			<h2>ASK VIEW</h2>

		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->

			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
<section class="section1">
	<div class="container">
		<div class="col-md-12">
			<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
			<div class="col-md-10 col-md-offset-1"
				style="margin-top: 50px; border-bottom: 2px gray solid;">
				<!-- 제목과 요청일이 들어갈 다이브 -->




				<div style="display: inline-block">
					<p style="display: inline-block;font-size: 1.8em;font-weight: bold;">${memberQnAView.TITLE}</p>
					
				</div>
				<!-- <div class="col-md-10" style="display: inline-block">
					제목과 요청일이 들어갈 다이브
				</div> -->

			</div>

			<div class="col-md-10 col-md-offset-1">
				<!-- 제목과 요청일이 들어갈 다이브 -->

				<div class=" col-md-2" style="display: inline-block">
					<p style="display: inline-block;text-align: left">${memberQnAView.ID}</p>
					
				</div>
				<div class="col-md-offset-7 col-md-3" style="display: inline-block">
					<p style="display: inline-block;text-align: left">작성일:${memberQnAView.ASKDATE}</p>
					
				</div>
				<!-- <div class="col-md-10" style="display: inline-block">
					제목과 요청일이 들어갈 다이브
				</div> -->
			</div>

			

			<div class="col-md-10 col-md-offset-1"
				style="height: 400px; padding-top:50px">
					<!-- 요청내역이 들어갈 다이브 -->
					<div class="col-md-10" >
						${memberQnAView.CONTENT}
					</div>
				</div>
			</div>
		</div>
</section>
		