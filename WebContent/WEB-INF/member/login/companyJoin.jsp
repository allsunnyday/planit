<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style rel="stylesheet">
body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;
}

.signUp {
	position: relative;
	margin: 50px auto;
	/* width: 1000px;
	height: 700px; */
	padding: 33px 25px 29px;
	background: #FFFFFF;
	border-bottom: 1px solid #C4C4C4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	padding: 33px 25px 29px;
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

}
</style>
<div class="container">

	<div class="row"
		style="margin: auto; margin-bottom: 350px; margin-top: 100px">
		<div class="col-md-12">

			<div class="signUp" id="signupForm">
				<h1 class="signUpTitle">PLAN:IT</h1>
				<div>
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputEmail" type="email"
									placeholder="이메일">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPassword" type="password"
									placeholder="비밀번호">
								<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
								확인</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPasswordCheck"
									type="password" placeholder="비밀번호 확인">
								<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputName">이름</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputName" type="text"
									placeholder="이름">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input type="tel" class="form-control" id="inputNumber"
										placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
										<button class="btn btn-success">
											인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
										</button>
									</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
								확인</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="inputNumberCheck" type="text"
										placeholder="인증번호"> <span class="input-group-btn">
										<button class="btn btn-success" type="button">
											인증번호 확인<i class="fa fa-edit spaceLeft"></i>
										</button>
									</span>
								</div>
								<p class="help-block">전송된 인증번호를 입력해주세요.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputAgree">약관
								동의</label>
							<div class="col-sm-6" data-toggle="buttons">
								<label class="btn btn-warning active"> <input id="agree"
							type="checkbox" autocomplete="off" chacked>
							<!-- 	<input type="checkbox" id="inset_2"> 
								<label for="inset_2" class="red"></label> -->
								 <span class="fa fa-check"></span>
								</label> <a href="#">이용약관</a> 에 동의 합니다.
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12 text-center">
								<button class="btn btn-primary" type="submit">
									회원가입<i class="fa fa-check spaceLeft"></i>
								</button>
								<button class="btn btn-default" type="submit">
									가입취소<i class="fa fa-times spaceLeft"></i>
								</button>
							</div>
						</div>


						<!-- <div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox"> Remember me
									</label>
								</div>
							</div>
						</div> -->

					</form>
				</div>
			</div>
			<hr>
		</div>



	</div>
</div>
<!-- 바디[내용끝] -->

<!-- container -->