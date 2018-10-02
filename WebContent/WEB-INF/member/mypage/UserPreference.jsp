<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section>
	<script>
		$(document.body).click(function() {
			if ($("#second-text").is(":hidden")) {
				$("#second-text").slideDown("slow");
			}
		});
	</script>
	<style>
.containerrr {
	margin-top: 200px;
	margin-bottom: 500px;
}

.showText {
	display: none;
}
</style>
	<div class="containerrr">
		<div class="container">
			<div class="col-md-6 col-md-offset-3">
				<div id="first-text">
					<p>
						안녕하세요! Plan:it님!<br /> 가입해주셔서 감사합니다aaaaaaa
						<button id="showNext" class="btn btn-default">
							<span class="glyphicon glyphicon-triangle-bottom"
								aria-hidden="true"></span>
						</button>
					</p>
				</div>
				<div id="second-text" class="showText">
					<p >
						Plan:it과 여행을 떠나기 전<br /> 유저님을 파악하기 위한 간단한 설문조사를 하겠다
						<a type="button" href="<c:url value='/planit/mypage/Preference2.it'></c:url>" class="btn btn-default">
							<span class="glyphicon glyphicon-triangle-right"
								aria-hidden="true">시작하기</span> </a> 
						
					</p>
				</div>

			</div>

		</div>



	</div>

</section>