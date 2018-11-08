<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<%@ include file="/WEB-INF/member/planner/after/logincheck.jsp" %>
<style>
	.footer {display:none; position:none; bottom:0; width:100%;}
</style>
<section class="post-wrapper-top" style="margin-top: 70px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li>여행 플래너</li>
			</ul>
			<h2> 나의 여행계획 한눈에 보기 </h2>
		</div>
	</div>
</section>

<section class="section1">
	<div class="container">
		<div class="routeresult" style="background-color: yellow; display:inline-block; text-align: center; "></div>
		<div style="margin-top: 10px; height: 500px; background: url('https://d3b39vpyptsv01.cloudfront.net/0/0/1529656420875aoFUHIp5Eo.jpg');
			background-repeat: no-repeat; background-size: cover; background-position: center center; position: relative">
			<div style="position: absolute; top: 0px; left: 0px; width: 100%; height: 300px; background: #000; opacity: 0.25; 
				filter: alpha(opacity = 25);">
			</div>
			<input type="hidden" id="route" name="route" value="${route }">
			<input type="hidden" id="plancase" name="plancase" value="${plancase }">


			<div style="position: absolute; top: 40px; left: 50px; width: 500px; height: 200px; z-index: 9; valign:">
				<div style="margin-top: 6px; margin-right: 20px; float: left; padding-top: 6px; text-align: center; border: 1px solid #fff;
					border-radius: 30px; width: 60px; height: 60px;">
					<font style="font-size: 20pt; font-weight: 600; color: #fff">
						${days }</font><font style="font-size: 9pt; font-weight: 500; color: #fff">일</font>
				</div>

				<div style="float: left; width: 400px;">
					<div
						style="margin-top: 0px; padding-top: 0px; padding-right: 25px;">
						<font style="color: #fff; font-size: 18pt; font-weight: 600;">${id } 님의 여행계획~!</font>
					</div>
					<font style="color: #fff; font-size: 13pt; font-weight: 500;"> ♬ ${reviewtitle } ♬</font>
				</div>
				<div style="clear: both"></div>
			</div>


			<div style="position: absolute; top: 40px; right: 50px; width: 500px; height: 400px; z-index: 9;">
				
				<div class="rt_left" style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_1"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_2"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_3"></font>
					<div style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; bottom: 0px; left: 0px; height: 25px; width: 50%; border-right: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div class="rt_left" style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<div style="padding-top: 29px; font-size: 8pt; color: #fff" id="routetitle_4"></div>
					<div style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; top: 0px; left: 0px; height: 24px; width: 50%; border-right: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px; margin-top: -2px;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_5"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_6"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; bottom: 0px; right: 0px; height: 25px; width: 50%; border-left: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div class="rt_left" style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<div style="padding-top: 29px; font-size: 8pt; color: #fff" id="routetitle_7"></div>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; top: 0px; right: 0px; height: 24px; width: 50%; border-left: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px; margin-top: -2px;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_8"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_9"></font>
					<div style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; bottom: 0px; left: 0px; height: 25px; width: 50%; border-right: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div class="rt_left" style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<div style="padding-top: 29px; font-size: 8pt; color: #fff" id="routetitle_10"></div>
					<div style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; top: 0px; left: 0px; height: 24px; width: 50%; border-right: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px; margin-top: -2px;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_11"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff;">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div class="rt_left" style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff" id="routetitle_12"></font>
					<div style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 5px solid #fff;"></div>
					<div style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="<c:url value='/Upload/Planner/map-marker.png'/>" width="25" height="25" style="border-radius: 50%;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div style="clear: both"></div>
				<div style="clear: both"></div>
			</div>
		</div>
	</div>
</section>
<div class="text-center" >
	<div class="row">
		<a href="<c:url value='/tourinfo/tdview/SleepList.it?contenttype=32&areacode=${areacode}' />" class="button" style="margin-right: 20px;"> 숙박 시설알아보기 </a>
		<a href="<c:url value='/'/>" class="button" style="margin-left: 20px;"> 메인 화면으로 </a>
	</div>
</div>
<script>
	var route = $('#route').val();
	var plancase = $('#plancase').val();
	console.log('route: '+ route);
	
	var routeone = route.split('@'); // 일차 별로 자름
	console.log(routeone) // 일자별로 자른값임
	
	var routeoneplan; // 하루일정수 담기
	
	var scheduletitle; // 타이틀 찾기
	var routememocontent ="";
	var loctitle =[];
	for(var i=0; i<routeone.length;i++){
		routeoneplan = routeone[i].split('#');		
		//console.log(routeoneplan); // 하루 일정 수		
		for(var k=1; k<routeoneplan.length; k++){			
			//console.log([k]+"dma. : "+routeoneplan[k]);
			scheduletitle = routeoneplan[k].split(':');			
			console.log('scheduletitle: '+ scheduletitle);
			for(var j=1; j<scheduletitle.length; j++){
				console.log([j]+'!!?: '+scheduletitle[j]);
			}
		loctitle.push(scheduletitle[3]);		
		}		
	}
	console.log("loctitle: "+loctitle);
	for(var i=0; i <=plancase; i++){
		$('#routetitle_'+(i+1)).text(loctitle[i])
	}
</script>