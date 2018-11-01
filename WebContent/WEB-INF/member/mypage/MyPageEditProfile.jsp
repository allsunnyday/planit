<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<!-- 마이페이지-회원정보 수정폼 -->
<style>
.mypage-content {
	margin-top: 100px;
	padding-bottom: 100px;
	/* border: 3px black solid; */
}

#ME-first, #ME-second, #ME-third {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 100px;
}

#ME-user-picture img {
	/* position: absolute; top:0; left: 0;
width: 100%;
height: 100%; */
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}

#ME-user-picture {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	border: 2px gray solid;
}

#ME-first-EditForm, #ME-second-EditForm, #ME-third-EditForm {
	margin-top: 20px;
}

.submitButton {
	display: inline-block;
	float: right;
}
</style>
<div class="container">

	<div class="mypage-content">
		<div class="mypagemenu">
			<div id="mypage">
				<h2>Edit Profile</h2>
			</div>

		</div>
		<!-- mypagemenu -->

		<!-- ------------------------------- -->
		<!--        start Edit first         -->
		<!-- ------------------------------- -->
		<form class="form-horizontal" action="<c:url value='/planit/mypage/editsave.it'/>" method="post" enctype="multipart/form-data">

			<div class="row" id="ME-first">
				<!--  프로필 들어갈 div -->
				<div id="ME-first-name">Edit My Information</div>
				<div id="ME-first-EditForm" class="col-md-8 col-md-offset-2">
					<div class="col-md-10 col-md-offset-1">
						<input type="text" class="form-control" id="userID" name="userID"
							value="${memberRecord.id }" disabled>
					</div>
					<div class="col-md-10 col-md-offset-1">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="이름을 입력해주세요" value="">
					</div>
					<div class="col-md-10 col-md-offset-1">
						<input type="email" class="form-control" id="email" name="email"
							placeholder="이메일을 입력해주세요" value="">
					</div>

				</div>
			</div>
			<!-- ------------------------------- -->
			<!--          end Edit first         -->
			<!-- ------------------------------- -->
			<!-- ------------------------------- -->
			<!--        start Edit second        -->
			<!-- ------------------------------- -->
			<div class="row" id="ME-second">
				<div id="ME-second-name">Edit My Profile</div>
				<div id="ME-second-EditForm" class="col-md-8 col-md-offset-2">
					<div class="col-md-10 col-md-offset-1">
						<!-- 사진 업로드 할 부분 -->
						
						<input type="file" name="profile" id="profile" >
						<input type="hidden" name="isExistProfile" value="${memberRecord.profile}">
					</div>
					<div class="col-md-10 col-md-offset-1">${memberRecord.profile}</div>
					<div class="col-md-10 col-md-offset-1">
<textarea class="form-control" name="self" id="self" value="${memberRecord.self }" rows="3" placeholder="자기소개를 입력해주세요"></textarea>

					</div>
				</div>


			</div>
			<!-- ------------------------------- -->
			<!--          end Edit second        -->
			<!-- ------------------------------- -->
			<!-- ------------------------------- -->
			<!--        start Edit third         -->
			<!-- ------------------------------- -->
		<!-- 	<div class="row" id="ME-third">
				<div id="ME-third-name">Edit My Favorite</div>
				<div id="ME-third-EditForm" class="col-md-8 col-md-offset-2">
					<div>선호사항 들어갈 자리</div>

				</div>


			</div> -->
			<!-- ------------------------------- -->
			<!--          end Edit third         -->
			<!-- ------------------------------- -->
			<!-- ------------------------------- -->
			<!--           서브밋 버튼                      -->
			<!-- -------------------------------  -->

			<div class="submitButton">
				<input id="ME-Submit-Button" type="submit" class="btn btn-default"
					value="Edit">
			</div>

		</form>

	</div>
	<!--  end mypage-content -->

</div>
<!--  end container -->