<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- DataRoomNavbar.jsp -->
<style>
	body{
		padding:70px;
	}
	@media all and (min-width: 768px) {
			  .navbar-fixed-width {
			    width: 768px;
			    margin-left: auto;
			    margin-right:auto;
			    
			 }
		}

		@media all and (min-width: 992px) {
		  .navbar-fixed-width {
		    width: 992px;
		    margin-left: auto;
		    margin-right:auto;
		  }

		}

		@media all and (min-width: 1200px) {
		  .navbar-fixed-width {
		    width: 1200px;
		    margin-left: auto;
		    margin-right:auto;
		  }
		}
		/*
		media 미디어쿼리
		all 모든 기기에 대해서
		min-width :초소폭이 1200px인 기기에 대해서 
		아래의 클래스를 적용하겠다. 
		*/
		.active{
			font-weight: bold;
			font-size:1.2em;
		}	
</style>
<script>
	$(function(){
	    
	    $(".navbar-right li a").click(function(){
	     
	      $('.navbar-right li').each(function(){
	       $(this).removeClass("active");
	      });       
	      $(this).parent().addClass("active");
	  });
	   });

</script>
<nav
	class="navbar navbar-default navbar-fixed-top navbar-fixed-width navbar-inverse ">
	<div class="container">
		<!--navBar가 유동적인 크기를 가진다는 것  -->
		<div class="navbar-header">
			<!-- 화면이 작아지면 button이 보여진다.  -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#collapseMenu">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#" style="color:white;font-weight:bold "> Planit </a>
		</div>
		<!-- 화면이 커지면  아래의 div가 보인다. -->
		<div class="collapse navbar-collapse" id="collapseMenu">
			
			<ul class="nav navbar-nav navbar-right">
			
				<li class="active"><a href="<c:url value='/' />">Home</a></li>
				<li class="active">
				<c:if test="${empty sessionScope.id}" var="isNotLogin">
					<a href="<c:url value='/member/login/login.it'/> ">Login</a>
				</c:if>
				<c:if test="${not isNotLogin}">
					<a href="#">Logout</a>
				</c:if>
				
				</li>
				<li class="active"><a href="<c:url value='/ReplyBBS/BBS/List.bbs'/>">게시판</a></li>
				<li><a href="#">QnA</a></li>
			</ul>
		</div>
	</div>
</nav>