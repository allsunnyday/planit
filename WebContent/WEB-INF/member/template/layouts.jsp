<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!-- tiles 접두어를 사용해서 insert해준다.  -->
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PLAN:IT</title>
    <link rel="icon" href="<c:url value='/images/logo_for_title2.png'/> ">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/BootStrap/js/bootstrap.min.js'/>" ></script>
</head>
<body>
	<div class = "container">
		 <!-- navbar 시작 -->
		 <tiles:insertAttribute name="Top"/>
		 <!-- navbar 끝 -->
	  	 <!-- 바디[내용시작] -->
	     <tiles:insertAttribute name="Body"/>
		 <!-- 바디[내용끝] -->
		 <!-- footer start -->
	    <tiles:insertAttribute name="Footer"/>
		 <!-- footer end -->
	</div><!-- container -->
  </body>
</html>










