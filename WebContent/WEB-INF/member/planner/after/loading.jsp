<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#loading {  width: 100%;  height: 100%; top: 0px; left: 0px; position: fixed; display: block; 
	opacity: 0.7; background-color: #fff; z-index: 99; text-align: center; } 
  
#loading-image {  position: absolute; top: 50%; left: 50%;  z-index: 100; }
</style>

<script type="text/javascript">
	$(window).load(function() {    
		$('#loading').hide();  
	});
	
	window.onbeforeunload = function(e){
	    /* if(e != null && e != undefined){
	        jQuery(spinner).css('display','');
	    } */
		$('#loading').hide();
	}; 
	$('#loading').hide();
</script>


<div id="loading">
	<img id="loading-image" src="/Planit/images/plan/loading.gif" alt="Loading..." />
</div>