<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	#planhotel li{
		background-color: white;
		text-align: center;
	}
	
	.title {
		text-align: center;
	}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

<!--  -->
<jsp:include page="plantop.jsp"></jsp:include>
<!--  -->
<div>
	<h3 class="text-center">숙박 예약</h3><hr/>
</div>
<div class="container-fluid" style="background-color: #B2EBF4">
	<form id="bbsearch" class="form-inline text-center">
		<div class="btn-group text-center" style=" margin: 0 auto; width: auto">
			<a class="btn dropdown-toggle" data-toggle="dropdown" href="#"> 숙박 예약 도시 <span class="caret"></span> </a>
			<ul class="dropdown-menu" role="planhotel" id="planhotel" aria-labelledby="planhotel">
				<li><a href="#">서울</a></li>
				<li><a href="#">수원</a></li>
				<li><a href="#">안산</a></li>
				<li><a href="#">기타 등등 추가</a></li>
			</ul>
		</div>
		<input type="text" class="form-control" placeholder="예약할 숙박 지역을 검색하세요" style="width: 40%;">
		<button type="submit" class="btn btn-primary" style="margin-left: 10px;">검색</button>
	</form>
	
		<div class="text-center" >
			<input type="button" class="btn btn-primary" id="datepicker" value="체크인" style="width: 10%; margin-bottom: 10px; margin-right: 30px;"/>		
			<input type="button" class="btn btn-primary" id="datepicker" value="체크 아웃" style="width: 10%; margin-bottom: 10px; margin-right: 30px;"/>
			<div class="btn-group text-center" style="margin-right: 30px;margin-bottom: 10px;">
				<a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#" style="width: 150%;"> 룸선택 <span class="caret"></span> </a>
				<ul class="dropdown-menu" role="planhotel" id="planhotel" aria-labelledby="planhotel">
					<li><a href="#">싱글</a></li>
					<li><a href="#">더블</a></li>
					<li><a href="#">패밀리</a></li>
					<li><a href="#">객실 여러개</a></li>
				</ul>
			</div>
			<div class="btn-group text-center" style="margin-right: 30px; margin-bottom: 10px;">
				<a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#" style="width: 150%;"> 숙박 요금 <span class="caret"></span> </a>
				<ul class="dropdown-menu" role="planhotel" id="planhotel" aria-labelledby="planhotel">
					<li><a href="#">50000</a></li>
					<li><a href="#">100000</a></li>
					<li><a href="#">150000</a></li>
					<li><a href="#">기타 금액</a></li>
				</ul>
			</div>
		</div>	
	<div class="container">
	</div>
</div>

<section class="section1">
	<div class="container clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="divider"></div>
			<div class="portfolio-centered">
				<div class="recentitems portfolio">
					<div class="portfolio-item col-lg-6 col-md-6 col-sm-6 col-xs-12 mockups">
						<div class="he-wrap tpl6 market-item">
							<img src="https://images.unsplash.com/photo-1523731407965-2430cd12f5e4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2501d73697239f0d5569c4cf39477389&auto=format&fit=crop&w=500&q=60" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">호텔 1</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_01.jpg"
										class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn">
										<a href="#">가격 1111</a>
									</div> <!-- portfolio_category -->
								</div> <!-- he bg -->
							</div> <!-- he view -->
						</div> <!-- he wrap -->
						<h3 class="title">원 숙박 업소</h3>
						<p>원 숙박 업소랍니다. 예약 하쉴분</p>
					</div><!-- end col-12 -->

					<div class="portfolio-item col-lg-6 col-md-6 col-sm-6 col-xs-12 web-design graphic-design">
						<div class="he-wrap tpl6 market-item">
							<img src="https://images.unsplash.com/photo-1520114878144-6123749968dd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a3429379fd77593fc373797e02359074&auto=format&fit=crop&w=500&q=60" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">숙박2</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_02.jpg"
										class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a>
									<a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn">
										<a href="#">가격 2222</a>
									</div><!-- portfolio_category -->
								</div><!-- he bg -->
							</div><!-- he view -->
						</div><!-- he wrap -->
						<h3 class="title">투 숙박 업소</h3>
						<p>투숙박 업소가 짱이지 예약갑시다</p>
					</div><!-- end col-12 -->

					<div class="portfolio-item col-lg-6 col-md-6 col-sm-6 col-xs-12 graphic-design">
						<div class="he-wrap tpl6 market-item">
							<img src="https://images.unsplash.com/photo-1519374086542-9ff30b72beec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1da0de9c8724bd72bd6a9d5c7c883a57&auto=format&fit=crop&w=500&q=60" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">숙박3</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_03.jpg"
										class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a> 
									<a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn">
										<a href="#">가격 3333</a>
									</div><!-- portfolio_category -->
								</div><!-- he bg -->
							</div><!-- he view -->
						</div><!-- he wrap -->
						<h3 class="title">삼숙박입니다.</h3>
						<p>다른데 비싸 그러니까 우리 숙박 가자 휴가철  할인 해줄게 </p>
					</div><!-- end col-12 -->

					<div class="portfolio-item col-lg-6 col-md-6 col-sm-6 col-xs-12 mockups">
						<div class="he-wrap tpl6 market-item">
							<img src="https://images.unsplash.com/photo-1518235506717-e1ed3306a89b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=066279b4eeec767c30adfbccf0fadfdc&auto=format&fit=crop&w=500&q=60" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">숙박4</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_04.jpg"
										class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a> 
									<a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn">
										<a href="#">가격 4444</a>
									</div><!-- portfolio_category -->
								</div><!-- he bg -->
							</div><!-- he view -->
						</div><!-- he wrap -->
						<h3 class="title">사숙박집</h3>
						<p>숙박이다 숙박이야 숙박합시다</p>
					</div><!-- end col-12 -->

					<div class="portfolio-item col-lg-6 col-md-6 col-sm-6 col-xs-12 web-design">
						<div class="he-wrap tpl6 market-item">
							<img src="https://images.unsplash.com/photo-1517511620798-cec17d428bc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a65984a12051e9753f748c5909faca97&auto=format&fit=crop&w=500&q=60" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">숙박5</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_05.jpg"
										class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a> 
									<a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn">
										<a href="#">가격 5555</a>
									</div> <!-- portfolio_category -->
								</div> <!-- he bg -->
							</div> <!-- he view -->
						</div> <!-- he wrap -->
						<h3 class="title">5숙박이네</h3>
						<p>올거면 오고 말거면 말고 예약할거면 하고 말거면 말고</p>
					</div> <!-- end col-12 -->

					<div class="portfolio-item col-lg-6 col-md-6 col-sm-6 col-xs-12 web-design">
						<div class="he-wrap tpl6 market-item">
							<img src="https://images.unsplash.com/photo-1517362467300-499a95b6d6ff?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=76e0af65019b752b4795f4e2ba2d3f95&auto=format&fit=crop&w=500&q=60" alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">숙박6</h3>
									<a data-rel="prettyPhoto" href="img/portfolio_06.jpg"
										class="dmbutton a2" data-animate="bounceInLeft">
										<i class="fa fa-search"></i></a> 
									<a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
									<div class="portfolio_category text-center a2" data-animate="fadeIn">
										<a href="#">가격 6666</a>
									</div> <!-- portfolio_category -->
								</div><!-- he bg -->
							</div> <!-- he view -->
						</div> <!-- he wrap -->
						<h3 class="title">육숙박집</h3>
						<p>새로 오픈 햇음 </p>
					</div> <!-- end col-12 -->

				</div>
				<!-- portfolio -->
			</div>
			<div class=" text-center">
		        <ul class="pagination">
		          <li><a href="#">«</a></li>
		          <li><a href="#">1</a></li>
		          <li><a href="#">2</a></li>
		          <li><a href="#">3</a></li>
		          <li><a href="#">»</a></li>
		        </ul>
		      </div>
			<!-- portfolio container -->
			<div class="divider"></div>
		</div><!-- end container -->
	</div>
</section>
