<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
 <style>
    .item{
    position:relative;
    }
    .item .text{
    position:absolute;
    top:50px;
    /* margin-left:50px; */
    color:#FFF;
    }

    .tourlist-overlay .text img{
       /* width:460px;
       height: 300px; */
    }
    
    
    .tourlist-overlay{ margin: 10%; }
    .text{margin-left: 3%; padding: 1%; width: 74%;}
    .carousel-indicators{bottom: 232px;}
    .caroimg img{  background: #fff; height: 95%; width: 100%}
    .caroimg{ width:33%; height: 310px; }
    .lazyOwl{height: 230px; width: 100%}
 </style>

 <!-- ****************************************
       탑메뉴 삽입
 **************************************** -->
<jsp:include page="../../tdview/topMenu.jsp" flush="false" />

<!-- ****************************************
       가장 핫한거 하나씩 보여줄 캐러셀
**************************************** -->
<section class="">
	<div class="row">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<!--슬라이드1-->
				<!-- ------------------------------관광지-------------------------- -->
				<div class="item active" id="listmain-tour">
					<!--  아래 이미지는 배경이 된다. -->
					<img src="<c:url value='/Upload/Tour/listmain_tour.jpg'/> "
						style="width: 100%; height: 550px" height="300px"
						alt="First slide">
					<div class="tourlist-overlay">
						<div class="text"
							style="background-color: rgba(0, 0, 0, 0.5);">
							<div class="general-title text-center">
								<h3 style="">
									<span class="clickedArea"></span> 지금 가장 인기 있는 관광지
								</h3>
								<a
									href="<c:url value='/tourinfo/tdview/TourList.it?cat1=total'/>"
									style="text-align: right;">더보기</a>
							</div>
							<c:forEach var="record" items="${tour}">
								<div class="caroimg" style="display: inline-block;">
									<c:if test="${not empty record.firstimage}" var="result">
										<img id="iii2" src="${record.firstimage}">
									</c:if>
									<c:if test="${empty record.firstimage}">
										<img id='iii2' src="/Planit/images/plan/imageready.png" >
									</c:if>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="container"></div>
				</div>
				<!-- ---------------------------음식점-------------------------- -->
				<div class="item" id="listmain-food">
					<!--  아래 이미지는 배경이 된다. -->
					<img src="<c:url value='/Upload/Tour/listmain_food.jpg'/>"
						style="width: 100%; height: 550px" height="300px"
						alt="First slide">
					<div class="tourlist-overlay">
						<div class="text"
							style="background-color: rgba(0, 0, 0, 0.5); ">
							<div class="general-title text-center">
								<h3 style="">
									<span class="clickedArea"></span> 지금 가장 인기 있는 음식점
								</h3>
								<a
									href="<c:url value='/tourinfo/tdview/TourList.it?cat1=total'/>"
									style="text-align: right;">더보기</a>
							</div>
							<c:forEach var="record" items="${food}">
								<div class="caroimg" style="display: inline-block;">	
									<c:if test="${not empty record.firstimage}" var="result">
										<img id="iii2" src="${record.firstimage}">
									</c:if>
									<c:if test="${empty record.firstimage}">
										<img id='iii2' src="/Planit/images/plan/imageready.png" >
									</c:if>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="container"></div>
				</div>
				<!-- ---------------------------축제행사-------------------------- -->
				<div class="item" id="listmain-festival">
					<!--  아래 이미지는 배경이 된다. -->
					<img src="<c:url value='/Upload/Tour/listmain_sleep.jpg'/> "
						style="width: 100%; height: 550px" height="300px"
						alt="First slide">
					<div class="tourlist-overlay">
						<div class="text" style="background-color: rgba(0, 0, 0, 0.5);">
							<div class="general-title text-center">
								<h3 style="">
									<span class="clickedArea"></span>지금 가장 인기 있는 숙박시설
								</h3>
								<a
									href="<c:url value='/tourinfo/tdview/TourList.it?cat1=total'/>"
									style="text-align: right;">더보기</a>
							</div>
							<c:forEach var="record" items="${sleep}">
								<div class="caroimg" style="display: inline-block;">								
									<c:if test="${not empty record.firstimage}" var="result">
										<img id="iii2" src="${record.firstimage}">
									</c:if>
									<c:if test="${empty record.firstimage}">
										<img id='iii2' src="/Planit/images/plan/imageready.png" >
									</c:if>	
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="container"></div>
				</div>
				<!-- a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                   <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                   <span class="sr-only">Previous</span>
                 </a>
                 <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                   <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                   <span class="sr-only">Next</span>
                 </a> -->
				<!--슬라이드1-->
			</div>
		</div>
	</div>
</section>

<!-- ****************************************
       인기여행지들 보여주는 캐러셀
**************************************** -->
<c:if test="${empty sessionScope.id}">
	<section class="section1">
		<div class="container clearfix">
			<div class="general-title text-center">
				<h3>인기 여행지를 한눈에!</h3>
				<p>best</p>
				<hr>
			</div>
			<div class="content col-lg-12 col-md-12 col-sm-12 clearfix"></div>
			<div class="divider"></div>
	
			<div id="popularitems" class="owl-carousel">
				<c:forEach var="record" items="${besttourlist}">
					<div class="col-lg-12">
	
						<div class="he-wrap tpl6 market-item">
	
							<div class="hot-tour">
								<c:if test="${empty record.firstimage }">
									<img class="lazyOwl"
										data-src='<c:url value='/Upload/Tour/tempimage.png'/>' alt="">
								</c:if>
								<c:if test="${not empty record.firstimage }">
									<img class="lazyOwl" data-src='${record.firstimage }' alt="">
								</c:if>
	
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">
										<h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
										<a href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/>" 
											class="dmbutton a2" data-animate="fadeIn">Details</a>
										<a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a>
	
										<!-- <div class="rating text-center a2" data-animate="fadeIn">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</c:if>
<c:if test="${not empty sessionScope.id}">
	<section class="section1">
		<div class="container clearfix">
			<div class="general-title text-center">
				<h3 id="liketitle">${sessionScope.id }님에게 추천하는 ${likecate1 } 지역 </h3>
				<p>best</p>
				<hr>
			</div>
			
			<div class="content col-lg-12 col-md-12 col-sm-12 clearfix"></div>
			<div class="divider"></div>
			<div id="popularitems" class="owl-carousel">			
				<c:forEach var="record" items="${preferencetourlist1}">
					<div class="col-lg-12">	
						<div class="he-wrap tpl6 market-item">	
							<div class="hot-tour">
								<c:if test="${empty record.firstimage }">
									<img class="lazyOwl"
										data-src='<c:url value='/Upload/Tour/tempimage.png'/>' alt="">
								</c:if>
								<c:if test="${not empty record.firstimage }">
									<img class="lazyOwl" data-src='${record.firstimage }' alt="">
								</c:if>	
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">
										<h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
										<a href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/>" 
											class="dmbutton a2" data-animate="fadeIn">Details</a>
										<!-- <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>				
				<c:forEach var="record" items="${preferencetourlist2}">
					<div class="col-lg-12">	
						<div class="he-wrap tpl6 market-item2">	
							<div class="hot-tour">
								<c:if test="${empty record.firstimage }">
									<img class="lazyOwl"
										data-src='<c:url value='/Upload/Tour/tempimage.png'/>' alt="">
								</c:if>
								<c:if test="${not empty record.firstimage }">
									<img class="lazyOwl" data-src='${record.firstimage }' alt="">
								</c:if>
	
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">
										<h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
										<a href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/>" 
											class="dmbutton a2" data-animate="fadeIn">Details</a>
										<!-- <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="record" items="${preferencetourlist3}">
					<div class="col-lg-12">	
						<div class="he-wrap tpl6 market-item2">
	
							<div class="hot-tour">
								<c:if test="${empty record.firstimage }">
									<img class="lazyOwl"
										data-src='<c:url value='/Upload/Tour/tempimage.png'/>' alt="">
								</c:if>
								<c:if test="${not empty record.firstimage }">
									<img class="lazyOwl" data-src='${record.firstimage }' alt="">
								</c:if>
	
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">
										<h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
										<a href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/>" 
											class="dmbutton a2" data-animate="fadeIn">Details</a>
										<!-- <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="record" items="${preferencetourlist4}">
					
					<div class="col-lg-12">	
						<div class="he-wrap tpl6 market-item2">
	
							<div class="hot-tour">
								<c:if test="${empty record.firstimage }">
									<img class="lazyOwl"
										data-src='<c:url value='/Upload/Tour/tempimage.png'/>' alt="">
								</c:if>
								<c:if test="${not empty record.firstimage }">
									<img class="lazyOwl" data-src='${record.firstimage }' alt="">
								</c:if>
	
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">
										<h3 class="a1" data-animate="fadeInDown">${record.title}</h3>
										<a href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/>" 
											class="dmbutton a2" data-animate="fadeIn">Details</a>
										<!-- <a href="checkout.html" class="dmbutton a2" data-animate="fadeIn">찜하기★</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>		
	</section>
</c:if>
<!-- ****************************************
       해당목록으로 넘어가게하는 아이콘
**************************************** -->
<section class="section1">
      <div class="general-title text-center">
        <h3>제일 궁금한게~?</h3>
        <p>원하는대로 골라보기</p>
        <hr >
      </div>

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-left">
              <a href="<c:url value='/tourinfo/tdview/TourList.it?contenttype=12'/>" class=""> <i class="dm-icon fa fa-money fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>관광지</h4>
              <hr>
            </div>
            <p>대한 민국 관광지 어디까지 가봤니? Plan: It에 등록된 관광지 정보를 확인하시고 여행을 계획해보세요~!</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-bottom">
              <a href="<c:url value='/tourinfo/tdview/FoodList.it?contenttype=39'/>" class=""> <i class="dm-icon fa fa-trophy fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>음식점 정보</h4>
              <hr>
            </div>
            <p>냠냠 쩝쩝.. 대한민국의 맛있는 음식점이 많아요! Plan: It에 등록된  음식점 정보 확인하시고 맛있는 음식 먹으며 여행 가요~</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-bottom">
              <a href="<c:url value='/tourinfo/tdview/SleepList.it?contenttype=32'/>" class=""> <i class="dm-icon fa fa-heart-o fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>숙박 정보</h4>
              <hr>
            </div>
            <p> 불친절한 서비스, 불편한 시설 싫어요! Plan: It에 등록된 숙박정보 확인하시고 여행의 계획해요! </p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-right">
              <a href="<c:url value='/planit/review/ReviewList.it'/>" class=""> <i class="dm-icon fa fa-book fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>리뷰</h4>
              <hr>
            </div>
            <p> 나의 소중한 여행기.. 남들의 색다른 여행기.. 리뷰를 통해 공유해봐요~ </p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-3 -->

      <div class="divider"></div>
    <!-- end container -->
  </section>
  <!-- end section -->


<script>
	//var index = $(".owl-page").index(this);
	//console.log(index); // 처음엔 -1
	
	$(document).on('click','.owl-page',function(){
		console.log('들어옵니꽈?')
		var index = $(".owl-page").index(this);
		console.log(index); 
		switch (index) {
		case 0:			
			$('#liketitle').text('${sessionScope.id }님에게 추천하는 ${likecate1 } 지역')
			break;
		case 1:			
			$('#liketitle').text('${sessionScope.id }님에게 추천하는 ${likecate2 } 지역')
			break;
		case 2:			
			$('#liketitle').text('${sessionScope.id }님에게 추천하는 ${likecate3 } 지역')
			break;
		case 3:			
			$('#liketitle').text('${sessionScope.id }님에게 추천하는 ${likecate4 } 지역')
			break;
		}
		//$('#liketitle').text('${sessionScope.id }님에게 추천하는 ${likecate1 } 지역')
	});
	
	/* $(".owl-page span").on('click',function(){
		console.log('들어옵니꽈?')
		var index = $(".owl-page:active").index(this);
		console.log(index); // 처음엔 -1
	}); */
</script>