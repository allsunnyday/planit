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

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500">
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>

<![endif]-->
<!-- include summernote css/js -->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">	
	<!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<c:url value='/main_theme/lib/bootstrap/css/bootstrap.min.css'/> " rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url value='/main_theme/lib/font-awesome/css/font-awesome.min.css'/> " rel="stylesheet">
  <link href="<c:url value='/main_theme/lib/prettyphoto/css/prettyphoto.css'/> " rel="stylesheet">
  <link href="<c:url value='/main_theme/lib/hover/hoverex-all.css'/> " rel="stylesheet">
  <link href="<c:url value='/main_theme/lib/jetmenu/jetmenu.css'/> " rel="stylesheet">
  <link href="<c:url value='/main_theme/lib/owl-carousel/owl-carousel.css'/> " rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<c:url value='/main_theme/css/style.css'/> " rel="stylesheet">
  <link rel="stylesheet" href="<c:url value='/main_theme/css/colors/blue.css'/> ">
	
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
	

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	  <!-- JavaScript Libraries -->
  <script src="<c:url value='/main_theme/lib/jquery/jquery.min.js'/> "></script>
  <script src="<c:url value='/main_theme/lib/bootstrap/js/bootstrap.min.js'/> "></script>
  <script src="<c:url value='/main_theme/lib/php-mail-form/validate.js'/> "></script>
  <script src="<c:url value='/main_theme/lib/prettyphoto/js/prettyphoto.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/isotope/isotope.min.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/hover/hoverdir.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/hover/hoverex.min.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/unveil-effects/unveil-effects.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/owl-carousel/owl-carousel.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/jetmenu/jetmenu.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/animate-enhanced/animate-enhanced.min.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/jigowatt/jigowatt.js'/>"></script>
  <script src="<c:url value='/main_theme/lib/easypiechart/easypiechart.min.js'/>"></script>

  <!-- Template Main Javascript File -->
  <script src="<c:url value='/main_theme/js/main.js'/>"></script>
	
</body>
</html>










