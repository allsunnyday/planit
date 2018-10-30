<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<style>
/* footer {position:absolute;bottom:0; width:100%;} */
#MY-checkpass-form {
	margin-top: 150px;
	margin-bottom: 200px;
}
#MY-PassCheck-Message{
	margin-top:-30px;
	border-bottom:border-top: 2px rgb(53, 181, 157) solid;
	color:gray;
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
				<li>사용자 이름</li>
			</ul>
			<h2>Password Checking</h2>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->
			<div class="search-bar">
				<form action="" method="get">
					<fieldset>
						<input type="image" src="img/pixel.gif" class="searchsubmit"
							alt="" /> <input type="text" class="search_text showtextback"
							name="s" id="s" value="Search..." />
					</fieldset>
				</form>
			</div>
			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
<section class="section1">
	<div class="container fluid">


		
			<!--  프로필 들어갈 div -->
		
			<div id="MY-checkpass-form" class="col-md-8 col-md-offset-2">
				<form class="form-horizontal">
				
					<div class="form-group" id="MY-PassCheck-Message">
					<div class="col-sm-10">
						<h4><small>변경하실 비밀번호를 입력해주세요</small></h4>
						
					</div>
					   </div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control" id="newpass"
								placeholder="Password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control" id="newpassCheck"
								placeholder="Password">
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-6">
							<button type="submit" class="btn btn-default">확인</button>
							<a href="<c:url value='/planit/mypage/MyPageHome.it' />" class="btn btn-danger">취소</a>
							
						</div>
					</div>
				</form>
			</div>

		


	</div>
</section>
