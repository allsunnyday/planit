<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style rel="stylesheet">
body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;
}

.signUp {
	position: relative;
	margin: 50px auto;
	width: 500px;
	padding: 33px 25px 29px;
	background: #FFFFFF;
	border-bottom: 1px solid #C4C4C4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before, .signUp:after {
	content: '';
	position: absolute;
	bottom: 1px;
	left: 0;
	right: 0;
	height: 10px;
	background: inherit;
	border-bottom: 1px solid #D2D2D2;
	border-radius: 4px;
}

.signUp:after {
	bottom: 3px;
	border-color: #DCDCDC;
}

.signUpTitle {
	margin: -25px -25px 25px;
	padding: 15px 25px;
	line-height: 35px;
	font-size: 26px;
	font-weight: 300;
	color: #777;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.75);
	background: #F7F7F7;
}

.signUpTitle:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 8px;
	background: rgb(100, 55, 159);
	/*    border-radius: 5px 5px 0 0;
   background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62c2e4 87.5%, #62C2E4);
 */
}

input {
	font-family: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.signUpInput {
	width: 100%;
	height: 50px;
	margin-bottom: 25px;
	padding: 0 15px 2px;
	font-size: 17px;
	background: white;
	border: 2px solid #EBEBEB;
	border-radius: 4px;
	/*  -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB; */
}

.signUpInput:focus {
	border-color: rgb(204, 153, 255);
	outline: none;
	/* -webkit-box-shadow: inset 0 -2px #62C2E4; */
	/*  box-shadow: inset 0 -2px #62C2E4; */
}

.lt-ie9 .signUpInput {
	line-height: 48px;
}

.signUpButton {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 54px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: #F0776C;
	border: 0;
	border-bottom: 2px solid #D76B60;
	border-radius: 5px;
	cursor: pointer;
	-webkit-box-shadow: inset 0 -2px #D76B60;
	box-shadow: inset 0 -2px #D76B60;
}

.signUpButton:active {
	top: 1px;
	outline: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

:-moz-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-placeholder {
	color: #AAAAAA;
	opacity: 1;
	font-weight: 300;
}

::-webkit-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

:-ms-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-focus-inner {
	border: 0;
	padding: 0;
}

.login_form ul.find li {
	display: inline;
	border-right: 1px gray solid;
	padding-right: 5px;
}

.login_form ul.find li:last-child {
	border: none
}
</style>

<div class="container">

	<!-- /planit/WebContent/images/배경 흑백 보정.jpg -->
	<%-- <div style="position: fixed"><img src="<c:url value='/images/배경 흑백 보정.jpg'/>"/></div> --%>
	<div class="login_form"
		style="margin: auto; margin-bottom: 350px; margin-top: 200px">


			<form class="signUp" id="signupForm">
				<h1 class="signUpTitle">PLAN:IT</h1>



				<input type="text" class="signUpInput" placeholder="사업자 번호를 입력해주세요" autofocus required> 
				<input type="text" class="signUpInput" placeholder="아이디를 입력해주세욜" autofocus required>
				<input type="password" class="signUpInput" placeholder="비밀번호를 입력해주세요" required>
				<ul class="find">
					<li><a href="#">아이디 찾기</a></li>
					<li><a href="#">비밀번호 찾기</a></li>
					<li><a href="<c:url value='/member/login/companyJoin.it'></c:url>">기업 회원가입</a></li>
					

				</ul>

				 
						
						<a href="<c:url value='/member/mypage/MyPageHome.it'></c:url>">마이페이지 이동</a> --%>
				<input type="submit" value="세상 쉬운 여행떠나기" class="signUpButton">





			</form>
			<a href="/member/login/comapnyLogin.it">일반회원 로그인</a>
	
	</div>
</div>
