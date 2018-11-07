<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<%@ include file="/WEB-INF/member/planner/after/logincheck.jsp" %>
<style>
	span #monthfontsize{
		width: 100px;  
		margin: 0 auto;
	}
	
	#plantable {
		text-align: center;
	}
	.footer {position:fixed; bottom:0; width:100%;}
</style>

<!-- 달력 부트 스트랩 css 적용 시작  -->
<!-- 
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"> 
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>-->
<link href="<c:url value='/BootStrap/plan_calendar/availability-calendar.css'/>" rel="stylesheet" type="text/css">
<!-- 달력 부트스트랩 css 적용 종료 -->

<section class="post-wrapper-top" style="margin-top: 70px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li>여행 플래너</li>
			</ul>
			<h2> 추억을 남길 나의 여행 일정 작성하기 </h2>
		</div>
		<%-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  style="margin-top: 61px;">
			<ul class="nav nav-tabs" style="float: right;">
				<li style="display: block;"><a href="#"> 저 장 </a></li>
				<li style="display: block;"><a href="<c:url value='/Planit/Before/Location.it'/>"> 지역 선택 </a></li>
				<li  style="display: block;"><a href="<c:url value='/planner/plan/route.it'/>"> 루 트 </a></li>
				<li class="active" style="display: block;"><a href="<c:url value='/planner/plan/schedule.it'/>"> 일 정 </a></li>
				<li style="display: block;"><a href="<c:url value='/planner/plan/reservation.it'/>"> 예 약 </a></li>
				<!-- <li style="display: block;"><a href="#"> 즐겨 찾기 </a></li> -->				
			</ul>						
		</div> --%>		
	</div>
</section>




<section class="section1">
	<div class="container" style="margin-bottom: 50px;">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12" style="float: left; height: 400px;">
				<div class="col-sm-12 col-md-12 col-xs-12 portfolio  wow fadeIn text-center">
		        	<h3> 여행 일정 달력 </h3>
		        	<hr/>	        	       
		        </div>
				<!-- 달력 출력 시작 -->
				<div id="calendar" ></div>                                       
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
				    var ga = document.createElement('script'); 
				    ga.type = 'text/javascript'; ga.async = true;
				    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
				  })();
				
				</script>
				<!-- 달력 출력 종료 -->
			</div>
			<!--  -->
			<div class="col-md-8 col-sm-8 col-xs-12 portfolio wow fadeIn text-center">
	        	<h3> 여행 일정 </h3>
	            <hr/>	           
	        </div>
			<hr/>
			<img alt="" src="<c:url value='/Upload/Planner/${mapimage}'/> ">
			<div class="col-md-8 col-sm-8 col-xs-12">			
				<form method="post" action="#" id="plansave">
					<div class="schedulehiddendata">
						<input type="hidden" id="days" name="days" value="${days }"> <!-- 총 여행일수 저장 -->
						<input type="hidden" id="depart" name="depart" value="${depart }"> <!-- 여행 출발일자 -->
						<input type="hidden" id="areacode" name="areacode" value="${areacode }"> <!-- 여행 여행 지역 코드 -->
						<input type="hidden" id="tourtype" name="tourtype" value="${tourtype }"> <!-- 여행 인원 타입-->
						<input type="hidden" id="plancase" name="plancase" value="${plancase }"><!-- 여행 일정 계획 작성을 위한 총개수 판단 -->
						<input type="hidden" id="routedata" name="routedata" value="${route }"><!-- 여행 일정 계획 작성을 위한 총개수 판단 -->
					</div>
					<div class="form-group">
						<div id="comments_wrapper" style="margin-top: 0;">
							<h4 style="display: inline-block; margin-right: 8px; "><span>나만의 여행기 제목  </span></h4>
							<input type="text" class="form-control" id="reviewtitle" name="reviewtitle" placeholder="여행기 제목을 입력해주세요" style="font-size: 1em; width: 360px;display: inline-block; float: right;">
							<h4 class="title" style="margin-bottom: -40px;"> (<span class="routecount">${plancase }</span>)개 일정 </h4>
							<button type="submit" id="selectplanbtn" name="selectplanbtn" class="btn btn-info" style="float: right;"> 저 장 </button>
							<div class="comment-days" style="overflow: auto; float: center; height: 600px; width: 100%">
								<ul class="comment-list" >
									<!-- 내부에 추가될 div의 양식 -->
									<!-- <li>
										<article class="comment">
											<div class="comment-content">
												<h4 class="comment-author" > 한강 <small class="comment-meta"></small>
													<span class="comment-reply">
														<a href="#" class="comment-reply dmbutton2 small">일정 작성</a>
													</span>												
												</h4>
												<input type="text" class="form-control" id="todo" name="todo" placeholder="일정명을 입력해주세요" style="font-size: 1em;">
												<textarea rows="2" class="form-control" id="todomemo" name="todomemo" placeholder="일정내용을 입력해주세요"></textarea>
											</div>
										</article>
									</li> -->
								</ul>
							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- 우측 일정 입력 종료 -->
		</div>
	</div>
</section>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	/* ************ 여행 상세 일정 및 일정명 등록 ************* */
	var plancase = $('#plancase').val();
	console.log(plancase)/* 총  여행 일정 개수*/	
	
	console.log($('#routedata').val()); //총 루트
	var route = $('#routedata').val();
	var scheduledays = route.split('@'); // 일차 별로 자름
	console.log(scheduledays) // 일자별로 자른값임
	
	var scheduledaysplan; // 하루일정수 담기
	
	var scheduletitle; // 타이틀 찾기	
	for(var i=0; i<scheduledays.length;i++){
		scheduledaysplan = scheduledays[i].split('#');		
		//console.log(scheduledaysplan); // 하루 일정 수
		for(var k=1; k<scheduledaysplan.length; k++){
			//console.log([k]+"dma. : "+scheduledaysplan[k]);
			scheduletitle = scheduledaysplan[k].split(':');			
			console.log('scheduletitle: '+ scheduletitle);
			//var dayscomments='';
			//dayscomments += '<h3> '+i+'일 차의 일정 </h3>';
			for(var j=1; j<scheduletitle.length; j++){
				console.log([j]+': '+scheduletitle[j]);
				var routememocontent='';
				routememocontent+= '<li>'
					+ '<article class="comment">'
						+'<div class="comment-content">'
							+'<h4 class="comment-author" > '+scheduletitle[3]+'<small class="comment-meta">'+scheduledaysplan[0]+'일차 일정</small>'
								//+'<span class="comment-reply">'
									//+'<a href="#" class="comment-reply dmbutton2 small">일정 작성</a>'
								//+'</span>'												
							+'</h4>'
							+'<input type="text" class="form-control" id="'+scheduletitle[4]+'" name="'+scheduletitle[4]+'" placeholder="일정명을 입력해주세요" style="font-size: 1em;">'
							+'<textarea rows="2" class="form-control" id="'+scheduletitle[5]+'" name="'+scheduletitle[5]+'" placeholder="일정내용을 입력해주세요"></textarea>'
						+'</div>'
					+'</article>'
				+'</li>';
			}
			$('.comment-list').append(routememocontent);			
		}		
	}
	
	$('#selectplanbtn').click(function(){
		for(var i=0; i<plancase;i++){
			route = route.replace('todo_'+i, $('#todo_'+i).val());
			route = route.replace('todomemo_'+i, $('#todomemo_'+i).val());
		}
		//alert('route 치환후: '+ route);
		var content = '<input type="hidden" name="route" id="route" value="'+route+'">';
		$('#route').val(route);
		$('.schedulehiddendata').append(content);		
		$('#plansave').attr("action","<c:url value='/planner/plan/routeResuleview.it'/>");
	});
	/* ************ 여행 상세 일정 및 일정명 등록 ************* */
	/* ************************** */
	var depart = '${depart}';
	var days = '${days}';
	var departcalen = [];
	departcalen = depart.split("/")
	for(var i=0; i < departcalen.length; i++){ // 달력 출력 확인
		console.log('departcalen: '+ departcalen[i])		
	}
	
		
	console.log('depart: '+depart)
	console.log('days: ' + days)
	
	var calenmonth = $('#monthfontsize').text().substr(7,2);
	var plancalendar = (parseInt(departcalen[2]));
	var plancalendarmonth = departcalen[1];
	var temp=1;
	
	console.log(calenmonth)
	
	if(calenmonth == plancalendarmonth){
		for(var i=0; i < 6; i++){
			for(var k=0; k<7; k++){
				if(calenmonth == plancalendarmonth && $('.calenrow_'+i+' .tomonth_'+k).text() == (plancalendar + temp)){
					$('.calenrow_'+i+' .tomonth_'+k).css('background','#62c1f0');
					$('.ex-month').css('background','#fff');
					//$('.calenrow_'+i+' .ex-month .tomonth_'+k).css('background','#fff');
					if(temp != days){
						temp ++;					
					}
				}
			}
		}
	}
	$('.calenbtn').click(function() {
		calenmonth = $('#monthfontsize').text().substr(7,2);
		if(calenmonth == plancalendarmonth){
			for(var i=0; i < 6; i++){
				for(var k=0; k<7; k++){
					if(calenmonth == plancalendarmonth && $('.calenrow_'+i+' .tomonth_'+k).text() == (plancalendar + temp)){
						$('.calenrow_'+i+' .tomonth_'+k).css('background','#62c1f0');
						$('.ex-month').css('background','#fff');
						if(temp != days){
							temp ++;					
						}
					}
				}
			}
		}
		else {
			for(var i=0; i < 6; i++){
				for(var k=0; k<7; k++){
					$('.calenrow_'+i+' .tomonth_'+k).css('background','#fff');
					temp=1;
				}
			}
		}
	})
	 
	/* else {
		for(var i=0; i < 6; i++){
			for(var k=0; k<6; k++){
				$('.calenrow_'+i+' .tomonth_'+k).css('background','#fff');
			}
		}
	} */

	
</script>