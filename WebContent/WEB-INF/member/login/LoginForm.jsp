<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>

<div style="padding-top: 70px;"></div>
<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="col-lg-6 col-md-6 col-sm-12">
				<h4 class="title">
					<span>Welcome PLAN:IT!</span>
				</h4>
				<div>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry"s standard
					dummy text ever since the 1500s.</p>
				<p>It has survived not only five centuries, but also the leap
					into electronic typesetting, remaining essentially unchanged.</p>
				<p class="withpadding">
					플랜잇이 처음이신가요? 지금 바로 <a href="<c:url value='/member/login/Join.it'/>">Planit</a>에서 놀라운 경험을 해보세요.
				</p>
				</div>
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
		               
		             <%--  <c:if test="${not empty sessionScope.userid}">${sessionScope.userid}반갑습니다!</c:if>  --%>
		              <!-- 일반회원 가입-->
		              <div class="tab-pane active" id="user-login">
		              	<div class="text-center" style="padding: 50px 0;">
		              		<img  src="<c:url value='/images/planit_logo.png'/> " alt=""/>
		              	</div>
		              	<form id="loginform" method="post" name="loginform" action="<c:url value='/member/login/LoginProcess.it'/>" >
			               <div class="form-group">
			               <c:if test="${not empty loginError }" var="loginResult"><div><p style="color:red;">${loginError}</p></div></c:if>
			                  <div class="input-group">
			                     <span class="input-group-addon"><i class="fa fa-user"></i></span>
			                     <input type="text" class="form-control" placeholder="Username" name="id">
			                  </div>
			               </div>
			               <div class="form-group">
			                  <div class="input-group">
			                     <span class="input-group-addon"><i class="fa fa-lock"></i></span>
			                     <input type="password" class="form-control" name="pwd" placeholder="Password">
			                  </div>
			               </div>
			               <!-- <div class="form-group">
			                  <div class="checkbox">
			                     <label> <input type="checkbox"> Remember me
			                     </label>
			                  </div>
			               </div> -->
							<div class="form-group" >
								<div class="row" style="display: inline;">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<button type="submit" class="button" style=" display: inline-block; width:90px; height: 34px; float: right;">Sign in</button>
										<!-- <div id="naver_id_login" style="text-align:center"> -->
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<a href="<c:url value='${url}'/>" >
											<img style="width: 90px;" src="<c:url value='/images/member/Log in with NAVER_Short_Green.PNG'/>" /></a>
									</div>
								</div>
							</div>
						</form>
			            
		              </div>
	                <!-- 일반회원 가입-->
	                
	                <!--기업회원 가입-->
		              <div class="tab-pane" id="partner-login">
		              <div class="text-center" style="padding: 50px 0;">
		              		<img  src="<c:url value='/images/planit_logo.png'/> " alt=""/>
		              	</div>
		                <form id="loginform" method="post" name="loginform" action="<c:url value='/partner/login/LoginProcess.it'></c:url>">
		               <div class="form-group">
		               <c:if test="${not empty loginError }" var="loginResult"><div><p style="color:red;">${loginError}</p></div></c:if>
		                  <div class="input-group">
		                     <span class="input-group-addon"><i class="fa fa-user"></i></span>
		                     <input type="text" class="form-control" name="p_id" id="p_id"  placeholder="Username">
		                  </div>
		               </div>
		               <div class="form-group">
		                  <div class="input-group">
		                     <span class="input-group-addon"><i class="fa fa-lock"></i></span>
		                     <input type="password" id="pwd" name="pwd"class="form-control"
		                        placeholder="Password">
		                  </div>
		               </div>
		               <!-- <div class="form-group">
		                  <div class="checkbox">
		                     <label> <input type="checkbox"> Remember me
		                     </label>
		                  </div>
		               </div> -->
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
 <style>
    .footer {position:fixed; bottom:0; width:100%;}
 </style>