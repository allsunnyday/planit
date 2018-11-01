<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>	
	if('${sessionScope.id}' == null || '${sessionScope.id}' =="" ){ // 로그인 안햇을떄
		alert('로그인 정보가 만료 되었습니다.')
		location.replace("<c:url value='/Planit/Before/login.it'/>");
	}
	else {
		
	}
</script>
