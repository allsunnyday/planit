<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.3/css/mdb.min.css"></script>
<script>
	$(document)
			.ready(
					function() {
						var formInputs = $('input[type="email"],input[type="password"]');
						formInputs.focus(function() {
							$(this).parent().children('p.formLabel').addClass(
									'formTop');
							$('div#formWrapper').addClass('darken-bg');
							$('div.logo').addClass('logo-active');
						});
						formInputs.focusout(function() {
							if ($.trim($(this).val()).length == 0) {
								$(this).parent().children('p.formLabel')
										.removeClass('formTop');
							}
							$('div#formWrapper').removeClass('darken-bg');
							$('div.logo').removeClass('logo-active');
						});
						$('p.formLabel').click(function() {
							$(this).parent().children('.form-style').focus();
						});
					});
</script>


<div class="col-sm-12"
	style="height: 840px; background-color: lightgray;"></div>
<div class="container">

	<div class="row">


		<form>
			<div id="form">
				<div class="logo">
					<h1 class="text-center head">PLAN:IT</h1>
				</div>
				<div style="padding-left: 7%">
					<div class="form-item">
						<p class="formLabel">Email</p>
						<input type="email" name="email" id="email" class="form-style"
							autocomplete="off" />
					</div>
					<div class="form-item">
						<p class="formLabel">Password</p>
						<input type="password" name="password" id="password"
							class="form-style" />

						<p>
							<a href="#"><small>Forgot Password ?</small></a>
						</p>
					</div>

					<div class="form-item">
						<p class="pull-left">
							<a href="<c:url value='/member/login/join.it'/> "><small>Register</small></a>
						</p>
						<br />
						<p class="pull-left">
							<a href="<c:url value='/member/mypage/MyPageHome.it'></c:url>"><small>MyPage(임시)</small></a>
						</p>
						<input type="submit" class="login pull-right" value="Log In">
						<div class="clear-fix"></div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>