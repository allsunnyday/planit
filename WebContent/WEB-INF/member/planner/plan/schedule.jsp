<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 섬머노트 -->
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script> -->
<!-- 섬머노트 -->
<script>
$(function(){
	
    $(document).ready(function() {
        $('#plancontent').summernote();
    });
    
    $('#plancontent').summernote({
    	height: 300,                 // set editor height
    	minHeight: null,             // set minimum height of editor
    	maxHeight: null,             // set maximum height of editor
    	focus: true,                  // set focus to editable area after initializing summernote
    	onImageUpload: function(files, editor, welEditable) {
    		for (var i = files.length - 1; i >= 0; i--) {
    			sendFile(files[i], this);
    		}
    	}
	});
    
    $('#plancontent').summernote({
    	  toolbar: [
    	    // [groupName, [list of button]]
    	    ['style', ['bold', 'italic', 'underline', 'clear']],
    	    ['font', ['strikethrough', 'superscript', 'subscript']],
    	    ['fontsize', ['fontsize']],
    	    ['color', ['color']],
    	    ['para', ['ul', 'ol', 'paragraph']],
    	    ['height', ['height']]
    	  ]
    });
    /* 
    function sendFile(file, el) {
    	var form_data = new FormData();
    	form_data.append('file', file);
    	$.ajax({
    		data: form_data,
	    	type: "POST",
	    	url: '/image',
    		cache: false,
    		contentType: false,
    		enctype: 'multipart/form-data',
	    	processData: false,
	    	success: function(url) {
    			$(el).summernote('editor.insertImage', url);
    			$('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
    		}
		});
	} */ 
});
</script>

<!-- 달력 부트 스트랩 css 적용 시작  -->
<!-- 
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"> 
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>
-->
<link href="<c:url value='/BootStrap/plan_calendar/availability-calendar.css'/>" rel="stylesheet" type="text/css">
<!-- 달력 부트스트랩 css 적용 종료 -->

<!-- 상단 내부 네비게이션바 시작 -->
<jsp:include page="plantop.jsp"></jsp:include>
<!-- 상단 내부 네비게이션바 종료 -->

<div class="container">
	<div class="row">
		<div class="col-md-6 col-sm-6 col-xs-12" style="float: left; height: 600px;">
			<div class="col-sm-12 col-md-12 col-xs-12 portfolio  wow fadeIn text-center">
	        	<h3> 여행 일정 달력 </h3>
	        	<hr/>	        	       
	        </div>
			<!-- 달력 출력 시작 -->			
			<div id="calendar"></div>                                       
			<script src="<c:url value='/BootStrap/plan_calendar/availability-calendar.js'/>"></script>			
			<script>
			var unavailableDates = [
			{start: '2015-08-31', end: '2015-09-05'},
			    {start: '2015-09-11', end: '2015-09-15'},
			    {start: '2015-09-15', end: '2015-09-23'},
			    {start: '2015-10-01', end: '2015-10-07'}
			];
			
			$('#calendar').availabilityCalendar(unavailableDates);
			</script>
			<script type="text/javascript">
			
			  var _gaq = _gaq || [];
			  _gaq.push(['_setAccount', 'UA-36251023-1']);
			  _gaq.push(['_setDomainName', 'jqueryscript.net']);
			  _gaq.push(['_trackPageview']);
			
			  (function() {
			    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			  })();
			
			</script>
			<!-- 달력 출력 종료 -->
		</div>
		<!--  -->
		<div class="col-md-6 col-sm-6 col-xs-12" style="float: center; height: 640px;">
			<div class="col-sm-12 col-md-12 col-xs-12 portfolio wow fadeIn text-center">
	        	<h3> 일자별 여행 일정 입력 </h3>
	            <hr/>	           
	        </div>	        			
			<!-- 우측 일정 입력 시작 -->
			<!-- 여행 일자, 정보 출력 시작 -->
			<div class="row" >
				<div class="col-md-2 col-sm-2 col-xs-12" >
					<img alt="plandest" src="/Planit/images/plan/plandest.png" style="height: 40px; width: 50px;">					
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12 text-center" style="padding: 1.75%;">2018년 9월 아무일 </div>
				
				<div class="col-md-4 col-sm-4 col-xs-12 text-center" style=" padding: 1.75%;">여행지 + 여행일차 출력 </div>
				<div class="col-md-2 col-sm-2 col-xs-12">
					<img alt="calendaticon" src="/Planit/images/plan/calendaticon.png" style="height: 40px; width: 50px;">					
				</div>				
			</div>
			<!-- 여행 일자, 정보 출력 종료 -->
			<hr/>
			<!-- 내용 입력란 시작  - 섬머 노트 적용 -->			
			<form method="post" action="#">
				<div class="form-group">
					<input type="text" class="form-control" id="title" name="title" placeholder="일정명을 기입해주세요" style="font-size: 1em;">					
				</div>				
				<div class="form-group">
					<textarea rows="15" class="form-control" id="plancontent" name="plancontent" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<div class="form-group">
					<div class="col-sm-12 col-md-12 col-sc-12 text-center">
						<button type="submit" class="btn btn-info"> 등 록 </button>
					</div>
				</div>
			</form>
			<!-- 내용 입력란 종료  - 섬머노트 적용  -->
		</div>
		<!-- 우측 일정 입력 종료 -->
	</div>
	</div>
	<div class="container">
	<div class="row" style="height: 700px;">
		<div class="col-sm-12 col-md-12 col-xs-12 portfolio wow fadeIn text-center">
        	<h2> 전체 여행일정표 </h2>
            <hr/>
        </div>
        <div class="col-sm-12 col-md-12 col-xs-12">
	        <table class="table table-striped" id="plantable">
	        	<tr class="info">
	        		<td>시간</td><td>1일차</td><td>2일차</td><td>3일차</td><td>4일차</td>
	        	</tr>
	        	<tr>
	        		<td class="info">00:00</td><td>일정 입력</td><td>휴식</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">01:00</td><td></td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">02:00</td><td>??</td><td></td><td></td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">03:00</td><td>??</td><td>??</td><td>??</td><td></td>
	        	</tr>
	        	<tr>
	        		<td class="info">04:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">05:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">06:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">07:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">08:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">09:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">10:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">11:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        	<tr>
	        		<td class="info">12:00</td><td>??</td><td>??</td><td>??</td><td>??</td>
	        	</tr>
	        </table>
        </div>
	</div>
</div>

<style>
	span #monthfontsize{
		width: 100px;  
		margin: 0 auto;
	}
	
	#plantable {
		text-align: center;
	}
</style>