<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						플랜잇으로 간편하게 여행계획을 짜고 국내 여행을 떠나보세요, 지금 바로 <a
							href="http://azmind.com">PLAN:IT</a>!
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!--
***************************************************************************************
Features: 플랜잇의 서비스 요약 
***************************************************************************************
  -->

<div class="features-container section-container">
	<div class="container">

		<div class="row">
			<div class="col-sm-12 features section-description wow fadeIn">
				<h2>PLAN YOUR TRIP</h2>
				<div class="divider-1">
					<div class="line"></div>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- search 링크 걸기  -->
			<div class="col-sm-4 features-box wow fadeInLeft">
					<div class=" features-box-icon">
						<!-- 그림을 누르면 정보 페이지로 이동  -->
						<a href="<c:url value='/tourinfo/ListNMapPick.it'/>"><img alt="" src="<c:url value='/images/main/satellite.png'/>"></a>
					</div>
					<!-- 글씨를 누라면 정보 페이지로 이동-->
						 <h3><a href="<c:url value='/tourinfo/ListNMapPick.it'/>"> Search</a></h3>
						<p>국내 여행의 정보를 한눈에 보여드릴게요, 마음에 드는 관광지는 즐겨찾기하세요!</p>
			</div>
			<!-- planner링크걸기 -->
			<div class="col-sm-4 features-box wow fadeInLeft">
					<div class="features-box-icon">
						<!-- 그림을 누르면 플래너 페이지로 이동  -->
						<a href="<c:url value='/Planit/Before/Location.it'/> "><img alt="" src="<c:url value='/images/main/map-folded.png'/> "></a>
					</div>
					<!-- 글씨를 누르면 플래너 페이지로 이동  -->
						<h3><a href="<c:url value='/Planit/Before/Location.it'/> ">Planner</a></h3>
						<p>노트 , 엑셀로만 정리하는 시대는 갔다! 이제 여행 계획은 플랜잇으로 쉽고 간편하게 완성하세요</p>
			</div>
			<!-- review 링크 걸기 -->
			<div class="col-sm-4 features-box wow fadeInLeft">
					<div class=" features-box-icon">
						<!-- 그림을 누르면 리뷰 페이지(리뷰 리스트)로 이동 -->
						<a href="<c:url value='/tourinfo/reviewpick/reviewpick.it'/> "><img alt="" src="<c:url value='/images/main/astronaut.png'/> " ></a>
					</div>
					<!-- 그림을 누르면 리뷰 페이지(리뷰 리스트)로 이동 -->
					<h3><a href="<c:url value='/tourinfo/reviewpick/reviewpick.it'/> ">Blog</a></h3>
					<p>여행 순간, 순간을 기록하세요. 여행 후에는 자동으로 포보북을 만들 수 있습니다.</p>
			</div>
		</div>
	</div>
</div>
<!--
***************************************************************************************
hot place: 즐겨찾기에 가장 많이 저장되어 있는 관광지를 보여준다. 
***************************************************************************************
  -->
<div class="features-container section-container">
	<div class="container">
		<!-- 섹션 제목 -->
		<div class="row">
			<div class="col-sm-12 features section-description wow fadeIn">
				<h2>hot place</h2>
				<div class="divider-1">
					<div class="line"></div>
				 <p>대한민국 구석구석의 아름다움을 소개합니다. </p>
				</div>
			</div>
		</div>
		<!-- 내용 시작   -->
		<div class="row">
			<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!--페이지-->
			
				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active"> 
						<img src="<c:url value='/images/main/slide5.jpg'/> " style="width:100%;height: 450px" height="300px" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1 class="carousel-h1">대관령 양떼목장</h1>
								<p>푸르른 들판에서 양과 함께 인생샷</p>
							</div>
						</div>
					</div>
					<!--슬라이드1-->
			
					<!--슬라이드2-->
					<div class="item"> 
						<img src="<c:url value='/images/main/slide2.jpg'/>" style="width:100%;height: 450px" data-src="" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1 class="carousel-h1">서울</h1>
								<p>익숙한듯 당연한 서울 놀거리</p>
							</div>
						</div>
					</div>
					<!--슬라이드2-->
					
					<!--슬라이드3-->
					<div class="item"> 
						<img src="<c:url value='/images/main/slide3.jpg'/>" style="width:100%;height: 450px" data-src=""  alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1 class="carousel-h1">한옥체험</h1>
								<p>숙소에서 즐기는 전통문화체험 </p>
							</div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>
				
				<!--이전, 다음 버튼-->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
				<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
			</div>
		</div>
	</div>
</div>



<!--
***************************************************************************************
real story: 인기있는 리뷰 모아보기 
***************************************************************************************
  -->
<div class="portfolio-container section-container">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 portfolio section-description wow fadeIn">
	                	<h2>real story</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                    <div class="line"></div>
	                    <p>
	                    	플랜잇과 함께한 여행의 소중한 순간들, 전국의플래너들의 여행이야기 지금 시작합니다 
	                    </p>
	                </div>
	            </div>
	            <!--  -->
	            <div style="clear:both;"></div>
	            <div class="row">
	            	<div class="col-sm-12 portfolio-masonry">
		                <div class=" col-sm-6  review-main ">
		                	<img  class="review-main-img" src="<c:url value='/images/main/slide1.jpg'/> " alt="" data-at2x="<c:url value='/images/main/slide1.jpg'/>">
		                	<div class="review-main-box-text-container">
		                		<div class="portfolio-box-text">
		                			<p><a href="#">서울 힙스터</a></p>
		                		</div>
		                	</div>
		                </div>
		                	<div class="col-sm-3 review-best">
				                <div class="portfolio-box ">
				                	<img src="<c:url value='/images/main/slide2.jpg'/>" alt="" data-at2x="<c:url value='/images/main/slide2.jpg'/>">
				                	<div class="portfolio-box-text-container">
				                		<div class="portfolio-box-text">
				                			<p><a href="#">차.도.녀</a></p>
				                		</div>
				                	</div>
				                </div>
			                </div>
			                <div class="col-sm-3 ">
				                <div class="portfolio-box ">
				                	<img src="<c:url value='/images/main/slide3.jpg'/>" alt="" data-at2x="<c:url value='/images/main/slide3.jpg'/>">
				                	<div class="portfolio-box-text-container">
				                		<div class="portfolio-box-text">
				                			<p><a href="#">먹방여행</a></p>
				                		</div>
				                	</div>
				                </div>
				            </div>
				            <div class="col-sm-3 ">
				                <div class="portfolio-box ">
				                	<img src="<c:url value='/images/main/slide5.jpg'/>" alt="" data-at2x="<c:url value='/images/main/slide5.jpg'/>">
				                	<div class="portfolio-box-text-container">
				                		<div class="portfolio-box-text">
				                			<p><a href="#">힐링여행</a></p>
				                		</div>
				                	</div>
				                </div>
				            </div>
				            <div class="col-sm-3 ">
				                <!-- 플랜잇과 함께한 순간 더 보기  --> 
				                <div class=" portfolio-box ">
				                	<img src="<c:url value='/images/main/007-astronaut.png'/>" alt="" data-at2x="<c:url value='/images/main/007-astronaut.png'/>">
				                	<div class="portfolio-box-text-container">
				                		<div class="portfolio-box-text">
				                			<p><a href="#">힐링여행</a></p>
				                		</div>
				                	</div>
				                </div>
				           	</div>
				           	<!--  -->
		               
		               <!--  -->
	                </div>
	                <!--  -->
	            </div>
	            <!-- row -->
	        </div>
	        <!-- container -->
        </div>
        <!-- portfolio-container section-container -->
<!-- 
**************************************************************
planner : 평점이 높은 리뷰를 모아보기 
**************************************************************
 -->
 <section class="content-section" id="portfolio">
      <div class="container">
         <div class="row">
              <div class="col-sm-12 portfolio section-description wow fadeIn">
              	<h2>Planner</h2>
                  <div class="divider-1 wow fadeInUp"><span></span></div>
                  					<div class="line"></div>
                  <p>
                  	이런 여행 코스는 어떤가요? 
                  </p>
              </div>
          </div>
        <div class="row no-gutters">
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h1 style="color:white">속초 2박 3일 </h1>
                  <p class="mb-0">올해 하태하태던 속초</p>
                </span>
              </span>
              <img class="img-fluid" src="<c:url value='/images/main/slide5.jpg'/>" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h1 style="color:white">제주도 7일코스</h1>
                  <p class="mb-0">제주도 가고싶다.</p>
                </span>
              </span>
              <img class="img-fluid" src="<c:url value='/images/main/slide5.jpg'/>" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h1 style="color:white">서울 2박3일 </h1>
                  <p class="mb-0">서울이 가깝지</p>
                </span>
              </span>
              <img class="img-fluid" src="<c:url value='/images/main/slide5.jpg'/>" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h1 style="color:white">남도 한바퀴 </h1>
                  <p class="mb-0">남방 4박 5일 </p>
                </span>
              </span>
              <img class="img-fluid" src="<c:url value='/images/main/slide5.jpg'/>" alt="">
            </a>
          </div>
        </div>
      </div>
    </section>
 
 <script type="text/javascript">
	$('.navbar').css('background', 'none');
	$(function() {
		/* 
		//화면에서 마우스 휠을 내릴 때  발생하는 이벤트 
		$('html, body').on('mousewheel DOMMouseScroll', function(e){
			//$('.navbar-no-bg').css('background', '#444');
			console.log($('html,body').css('position'));
			
		}); */
		$(window).resize(function() {
			if ($(window).width() <= 991) {
				$('.navbar').css('background', '#444');
			} else {
				$('.navbar').css('background', 'none');
			}
		});
		var nav = $('.nav-container');
		$(window).scroll(function() {
			var windowWidth = $(window).width();
			console.log(windowWidth);
			if ($(this).scrollTop() > 50 || windowWidth <= 991) {
				$('.navbar').css('background', '#444');
			} else {
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
			return Math.round(Math.random() * $randomNumber.length + 1);
		}
		;

		function value() {
			$('.nbr:nth-child(' + select() + ')').html('' + random() + '');
			$('.nbr:nth-child(' + select() + ')').attr('data-number', $data);
			$data++;

			$randomNumber.each(function() {
				if (parseInt($(this).attr('data-number')) > parseInt($(this)
						.attr('data-change'))) {
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

<script>
jQuery(window).load(function() {
	
	/*
		Loader
	*/
	$(".loader-img").fadeOut();
	$(".loader").delay(1000).fadeOut("slow");
	
	/*
	    Portfolio
	*/
	$('.portfolio-masonry').masonry({
		columnWidth: '.portfolio-box', 
		itemSelector: '.portfolio-box',
		transitionDuration: '0.5s'
	});
	

	
	$(window).on('resize', function(){ $('.portfolio-masonry').masonry(); });
	
	// image popup	
	$('.portfolio-box-text').magnificPopup({
		type: 'image',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: 'The image could not be loaded.',
			titleSrc: function(item) {
				return item.el.find('p').text();
			}
		},
		callbacks: {
			elementParse: function(item) {
				item.src = item.el.parent('.portfolio-box-text-container').siblings('img').attr('src');
			}
		}
	});
	
});
</script>