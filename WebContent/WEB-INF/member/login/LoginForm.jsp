<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div style="padding-top: 70px;"></div>
<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="col-lg-6 col-md-6 col-sm-12">
				<h4 class="title">
					<span>Welcome PLAN:IT!</span>
				</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry"s standard
					dummy text ever since the 1500s.</p>
				<p>It has survived not only five centuries, but also the leap
					into electronic typesetting, remaining essentially unchanged.</p>
				<p class="withpadding">
					플랜잇이 처음이신가요? 지금 바로 <a href="#">Planit</a>에서 놀라운 경험을 해보세요.
				</p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12">
				<!-- <h4 class="title">
					<span>Login Form</span>
				</h4> -->
				<!-- login tabs  -->
				<div class="tabbable">
		            <ul class="nav nav-tabs">
		              <li class="active"><a href="#user-login" data-toggle="tab">일반회원</a></li>
		              <li><a href="#partner-login" data-toggle="tab">기업회원</a></li>
		            </ul>
		            <div class="tab-content">
		              <!-- 일반회원 가입-->
		              <div class="tab-pane active" id="user-login">
		              	<div class="text-center" style="padding: 50px 0;">
		              		<img  src="<c:url value='/images/planit_logo.png'/> " alt=""/>
		              	</div>
		              	<form id="loginform" method="post" name="loginform" action="">
			               <div class="form-group">
			                  <div class="input-group">
			                     <span class="input-group-addon"><i class="fa fa-user"></i></span>
			                     <input type="text" class="form-control" placeholder="Username">
			                  </div>
			               </div>
			               <div class="form-group">
			                  <div class="input-group">
			                     <span class="input-group-addon"><i class="fa fa-lock"></i></span>
			                     <input type="password" class="form-control"
			                        placeholder="Password">
			                  </div>
			               </div>
			               <div class="form-group">
			                  <div class="checkbox">
			                     <label> <input type="checkbox"> Remember me
			                     </label>
			                  </div>
			               </div>
			               <div class="form-group">
			                  <button type="submit" class="button">Sign in</button>
			               </div>
			            </form>
		              </div>
	                <!-- 일반회원 가입-->
	                <!--기업회원 가입-->
		              <div class="tab-pane" id="partner-login">
		              <div class="text-center" style="padding: 50px 0;">
		              		<img  src="<c:url value='/images/planit_logo.png'/> " alt=""/>
		              	</div>
		                <form id="loginform" method="post" name="loginform" action="">
		               <div class="form-group">
		                  <div class="input-group">
		                     <span class="input-group-addon"><i class="fa fa-user"></i></span>
		                     <input type="text" class="form-control" placeholder="Username">
		                  </div>
		               </div>
		               <div class="form-group">
		                  <div class="input-group">
		                     <span class="input-group-addon"><i class="fa fa-lock"></i></span>
		                     <input type="password" class="form-control"
		                        placeholder="Password">
		                  </div>
		               </div>
		               <div class="form-group">
		                  <div class="checkbox">
		                     <label> <input type="checkbox"> Remember me
		                     </label>
		                  </div>
		               </div>
		               <div class="form-group">
		                  <button type="submit" class="button">Sign in</button>
		               </div>
		            </form>
		              </div>
		              <!--기업회원 가입-->
		            </div>
		          </div>
		          <!-- tabbable -->
				<!-- login tabs -->
			</div>
			<!-- end login -->
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->