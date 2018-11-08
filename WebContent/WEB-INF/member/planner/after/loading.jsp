<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#loading {  width: 200px;  height: 200px; top: 39%; left: 45%; position:fixed;  overflow:hidden; 
	 background-color: #fff; z-index: 99; text-align: center; 
	 border-radius: 30%;
	 } /*  display: block; opacity: 0.7; */
  
#loading-image {  position: absolute;   z-index: 100; width: 100%; height: 100%; 
	margin: 0 0 0 -100px ; 
	} /*  top: 50%; left: 50%; */
</style>

<script type="text/javascript">
	$(window).load(function() {    
		//$('#loading').hide();		
		setTimeout(function() {
			$('#loading').hide();
		}, 1000);
	}); // ajax 호출	
	
	window.onbeforeunload = function(e){
		$('#loading').hide();
	};  // 페이지 이동할때 (컨트롤러 관련 데이터)
	
	$('#loading').hide();
</script>


<div id="loading">
	<img id="loading-image" src="/Planit/Upload/rocket.gif" alt="Loading..." />
</div>