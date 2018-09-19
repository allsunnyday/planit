<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/* 1. Menu settings */
.menu,
.menu li {
  margin: 0;
  padding: 0;
}
.menu a {
  font-weight: 700;
  padding: .75em 1.25em;
  transition: background .25s ease-in-out;
}
.menu li {
  position: relative;
  border-width: 0 0 1px;
  border-style: solid;
}
.menu li:last-child {
  border-width: 0;
}
.menu li,
.menu a {
  display: block;
} 

/* 2. Navigation aligned right-to-left */
.nav--right {
  text-align: right;
}

/* 3. Screen settings */
@media only screen and (min-width: 1024px) {
  /* 3.1 Flex-display of `.menu` for desktop */
  .menu {
    display: flex;
    flex-flow: row wrap;
  }
   /* 3.1.1 Border adjustments for menu-items */
  .menu li {
    border-width: 0 1px 0 0;
  }

  /* 3.2 Navigation aligned to the center */
  .nav--center .menu {
    justify-content: center;
  }

  /* 3.3 Navigation aligned right-to-left */
  .nav--right .menu {
    justify-content: flex-end;
  }
}

/* Theming */
.nav {
  background-color: #222;
}

.menu li {
  border-color: #2a2a2a;
}
.menu li a {
  color: rgba(255, 255, 255, 0.75);
}
.menu li a:hover, .menu li a:active, .menu li a:focus {
  color: rgba(255, 255, 255, 0.9);
  background-color: black;
}

/* Green */
.nav--green {
  background-color: #1abc9c;
}

.nav--green .menu li {
  border-color: #1cc9a7;
}
.nav--green .menu li a {
  color: rgba(255, 255, 255, 0.75);
}
.nav--green .menu li a:hover, .nav--green .menu li a:active, .nav--green .menu li a:focus {
  color: rgba(255, 255, 255, 0.9);
  background-color: #16a085;
}

.w3bits-labs { width: 468px; height: 60px; margin: 1.5em 0 0}
</style>
<!-- 섬머노트 -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<script>
$(function(){
    $(document).ready(function() {
        $('#plancontent').summernote();
    });
    
    $('#plancontent').summernote({
    	height: 200,                 // set editor height
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
	} 
});
</script>
<!-- 섬머노트 -->


<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="<c:url value='/BootStrap/plan_calendar/availability-calendar.css'/>" rel="stylesheet" type="text/css">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">

<div class="nav nav--center" style="margin-top: 60px; width: 100%; height: 40px; float: right;">
	<nav class="nav nav--green lab-nav--light">
		<ul class="menu text-center">
			<li class="menu-item" style="width: 15%;"><a href="#">저 장</a></li>
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/route.it'/>">루 트</a></li>			
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/schedule.it'/>">일 정</a></li>
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/reservation.it'/>">예 약</a></li>
			<li class="menu-item" style="width: 15%;"><a href="#">즐겨찾기</a></li>			
		</ul><!-- .menu -->
	</nav><!-- .nav -->
</div>

<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>

<div class="container">
	<div class="row">
		<div class="col-md-6" style="float: left; height: 640px;">
			<div class="col-sm-12 portfolio  wow fadeIn">
	        	<h3> 여행 일정 달력 </h3>
	            <div class="divider-1 wow fadeInUp"><span></span></div>	           
	        </div>
			<!--  -->
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
			<!--  -->
		</div>
		<div class="col-md-6" style="float: center; height: 640px;"><!-- background-color:#D4F4FA;  -->
			<div class="col-sm-12 portfolio wow fadeIn">
	        	<h3> 일자별 여행 일정 입력 </h3>
	            <div class="divider-1 wow fadeInUp"><span></span></div>	           
	        </div>	        			
			<!--  -->
			<hr/>
			<div class="row">
				<div class="col-md-2">
					<img alt="plandest" src="/Planit/images/plandest.png" style="height: 40px; width: 50px;">					
				</div>
				<div class="col-md-4 text-center">2018년 9월 아무일 </div>
				<div class="col-md-4 text-center">여행지 + 여행일차 출력 </div>
				<div class="col-md-2">
					<img alt="calendaticon" src="/Planit/images/calendaticon.png" style="height: 40px; width: 50px;">					
				</div>				
			</div>
			<hr/>
			<form method="post">
				<div class="row">
					<input type="text" class="form-control" id="title" name="title" placeholder="일정명을 기입해주세요" style="font-size: 1em;">
				</div>
				<br/>
				<div class="row">
					<textarea rows="6" class="form-control" id="plancontent" name="plancontent"
					placeholder="내용을 입력해주세요"></textarea>
				</div>
			</form>
			<!--  -->
		</div>
	</div>
	<div class="row" style="background: #BCE55C; height: 660px;">
		<div class="col-sm-12 portfolio wow fadeIn">
        	<h2> 전체 여행일정표 </h2>
            <div class="divider-1 wow fadeInUp"><span></span></div>	           
        </div>
		일정을 보여줍시다 
	</div>
</div>
