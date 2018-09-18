<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!-- tiles 접두어를 사용해서 insert해준다.  -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PLAN:IT</title>
<link rel="shortcut icon" href="<c:url value='/images/planit_logo.png'/>">
<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500">
<link rel="stylesheet"
	href="<c:url value='/assets/font-awesome/css/font-awesome.min.css'/> ">
<link rel="stylesheet" href="<c:url value='/assets/css/animate.css'/> ">
<link rel="stylesheet" href="<c:url value='/assets/css/style.css'/> ">
<!-- top-end -->



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
		<!-- navbar 시작 -->
		<tiles:insertAttribute name="Top" />
		<!-- navbar 끝 -->
		<!-- 바디[내용시작] -->
		<tiles:insertAttribute name="Body" />
		<!-- 바디[내용끝] -->
		<!-- footer start -->
		<tiles:insertAttribute name="Footer" />
		<!-- footer end -->
	<!-- Javascript -->
	<script src="<c:url value='/assets/js/jquery.backstretch.min.js'/> "></script>
	<script src="<c:url value='/assets/js/wow.min.js'/> "></script>
	<script src="<c:url value='/assets/js/retina-1.1.0.min.js'/> "></script>
	<script src="<c:url value='/assets/js/waypoints.min.js'/> "></script>
	<script src="<c:url value='/assets/js/scripts.js'/> "></script>
	
</body>
</html>










