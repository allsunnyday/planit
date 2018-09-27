<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>main.jsp</title>
	<link href="<c:url value='/BootStrap/css/bootstrap.min.css'/>" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/BootStrap/js/bootstrap.min.js'/>"></script>
<body>
  <div class = "container">
	 <!-- navbar -->
	 <jsp:include page="/WEB-INF/member/template/top.jsp"></jsp:include>
	  	<!-- 바디[내용시작] -->
	    <div class="container">
			<div class="page-header">
				<h1>답변형 게시판 프로젝트<small> 메 인 페 이 지  </small></h1>
			</div>
						
			<div class="row">
				
			</div>
		</div>
		<!-- 바디[내용끝] -->
	</div><!-- container -->
	<jsp:include page="/WEB-INF/member/template/footer.jsp"></jsp:include>
  </body>
</html>


