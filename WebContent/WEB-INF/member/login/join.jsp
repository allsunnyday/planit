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
						var formInputs = $('input[type="email"],input[type="password"],input[type="text"]');
						formInputs.focus(function() {
							$(this).parent().children('p.formLabel').addClass(
									'formTop');
							$('div#form-join-joinWrapper').addClass('darken-bg');
							$('div.logo').addClass('logo-active');
						});
						formInputs.focusout(function() {
							if ($.trim($(this).val()).length == 0) {
								$(this).parent().children('p.formLabel')
										.removeClass('formTop');
							}
							$('div#form-join-joinWrapper').removeClass('darken-bg');
							$('div.logo').removeClass('logo-active');
						});
						$('p.formLabel').click(function() {
							$(this).parent().children('.form-join-style').focus();
						});
					});
</script>


<!-- 
<div class="col-sm-12" style="height: 840px; background-color: lightgray;" ></div> -->
<div class="container" style="">

	<div class="row">

		<!-- Kapsayıcı -->
		<!-- 	<div id="formWrapper"> -->
		<form>
			<div id="form-join" style=" margin-top:100px">
				<div class="logo">
					<h1 class="text-center head">PLAN:IT</h1>
				</div>
					<!-- ------------------------------------------------------------------- -->
				<div style="padding-left: 27%">
					<div class="line">
						<div class="form-item">
							<p class="formLabel">ID</p>
							<input type="text" name="email" id="id" class="form-join-style"
								autocomplete="off" />
						</div>
						<div class="form-item">
							<p class="formLabel">Password</p>
							<input type="password" name="password" id="password"
								class="form-join-style" />
							<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->

						</div>
						<div class="form-item">
							<p class="formLabel">Password Check</p>
							<input type="password" name="passwordcheck" id="password"
								class="form-join-style" />
						</div>

					</div>
					<!-- ------------------------------------------------------------------- -->
					<div class="line">
						<div class="form-item">
							<p class="formLabel">Name</p>
							<input type="text" name="password" id="name"
								class="form-join-style" />


						</div>
						<div class="form-item">
							<p class="formLabel">전화번호</p>
							<input type="text" name="password" id="tel"
								class="form-join-style" />
							<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->

						</div>
							<div class="form-item">
							<p class="formLabel">Email</p>
							<input type="email" name="email" id="email" class="form-join-style"
								autocomplete="off" />
						</div>
						<div class="form-item">
							<p class="formLabel">Email Check</p>
							<input type="email" name="email" id="emailcheck" class="form-join-style"
								autocomplete="off" />
						</div>
					</div>
				<!-- ------------------------------------------------------------------- -->
					<div class="line">
					<div class="form-item">

						<input type="submit" class="join pull-right" value="취소하기">
					
					

						<input type="submit" class="join pull-right" value="Log In">
					
					</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 
	</div> -->
</div>
