<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$('.navbar').css('background', 'none');
	$(function(){
		/* 
		//화면에서 마우스 휠을 내릴 때  발생하는 이벤트 
		$('html, body').on('mousewheel DOMMouseScroll', function(e){
			//$('.navbar-no-bg').css('background', '#444');
			console.log($('html,body').css('position'));
			
		}); */
		$(window).resize(function(){
			if($( window ).width() <=991){
				$('.navbar').css('background', '#444');
			}else{
				$('.navbar').css('background', 'none');
			}
		});
		var nav=$('.nav-container');
		$(window).scroll(function(){
			var windowWidth = $( window ).width();
			console.log(windowWidth);
			if($(this).scrollTop()> 50 || windowWidth<=991){
				$('.navbar').css('background', '#444');
			}
			else{
				$('.navbar').css('background', 'none');
			}
		});
		
		
		// **************** planit *********************//
		var $randomNumber = $('.nbr');
		var $timer = 30;
		var $it;
		var $data = 0;
		var index;
		var change;
		var letters = [ "P", "L", "A", "N", ":", "I", "T" ];

		$randomNumber.each(function() {
			change = Math.round(Math.random() * 100);
			$(this).attr('data-change', change);
		});

		function random() {
			return Math.round(Math.random() * 9);
		}
		;

		function select() {
			return Math.round(Math.random()
					* $randomNumber.length + 1);
		}
		;

		function value() {
			$('.nbr:nth-child(' + select() + ')').html(
					'' + random() + '');
			$('.nbr:nth-child(' + select() + ')').attr(
					'data-number', $data);
			$data++;

			$randomNumber
					.each(function() {
						if (parseInt($(this)
								.attr('data-number')) > parseInt($(
								this).attr('data-change'))) {
							index = $('.ltr').index(this);
							$(this).html(letters[index]);
							$(this).removeClass('nbr');
						}
					});
		}
		;
		$it = setInterval(value, $timer);
		
	});
</script>
<!-- Top content -->
        <div class="top-content">
        	<div class="container">
				<div class="row">
					<div class="col-sm-12 text wow fadeInLeft">
						<div class="random">
							<h1>
								<span class="span nbr ltr">0</span> <span class="span nbr ltr">0</span>
								<span class="span nbr ltr">0</span> <span class="span nbr ltr">0</span>
								<span class="span nbr ltr">0</span> <span class="span nbr ltr">0</span>
								<span class="span nbr ltr">0</span>
							</h1>
						</div>
						<div class="description">
							<p class="medium-paragraph">
								플랜잇으로 간편하게 여행계획을 짜고 국내 여행을 떠나보세요, 지금 바로 <a href="http://azmind.com">PLAN:IT</a>!
							</p>
						</div>
					</div>
				</div>
            </div>
        </div>
        
        <!-- Features -->
        <div class="features-container section-container">
	        <div class="container">
	        	
	            <div class="row">
	                <div class="col-sm-12 features section-description wow fadeIn">
	                    <h2>PLAN YOUR TRIP</h2>
	                    <div class="divider-1"><div class="line"></div></div>
	                </div>
	            </div>
	            
	            <div class="row">
	                <!-- search 링크 걸기  -->
	                <div class="col-sm-4 features-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3 features-box-icon">
	                			<i class="fa fa-twitter"></i>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3>Search</h3>
		                    	<p>
		                    		국내 여행의 정보를 한눈에 보여드릴게요, 마음에 드는 관광지는 즐겨찾기하세요!  
		            
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	                <!-- planner링크걸기 -->
	                <div class="col-sm-4 features-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3 features-box-icon">
	                			<i class="fa fa-instagram"></i>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3>Planner</h3>
		                    	<p>
		                    		노트 , 엑셀로만 정리하는 시대는 갔다! 이제 여행 계획은 플랜잇으로 쉽고 간편하게 완성하세요
		                    	
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	                <!-- review 링크 걸기 -->
	                <div class="col-sm-4 features-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3 features-box-icon">
	                			<i class="fa fa-magic"></i>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3>Blog</h3>
		                    	<p>
		                    		여행 순간, 순간을 기록하세요. 여행 후에는 자동으로 포보북을 만들 수 있습니다. 
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	            </div>

	        </div>
        </div>