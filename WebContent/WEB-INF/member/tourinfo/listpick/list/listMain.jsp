<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--*************************************
상단 내용 시작 
***************************************  -->
<div class="freature-content">
	<div class="review-left" ></div>
	<!-- nav bar와 사이 벌어지기 위해  -->
	<div class="row" style="padding-top: 60px;"></div>
	<div class="row">
		<div class="col-sm-8  col-sm-offset-2">
			<div style="">
				<textarea class="textarea_inp" rows="1" cols="30" placeholder="키워드를 입력하세요 "></textarea>
			</div>
			<!-- 하얀색 줄  -->
			<div style="background-color: white; width:80%; height: 2px; margin-left: 10%;margin-right: 10%"></div>
		</div>
		<div>
		</div>
	</div>
</div>
<div style="margin-top: 40px"></div>

<!--*************************************

***************************************  -->
<div class="col-sm-10 col-sm-offset-1 ">
	<div style="padding-top: 20px" position="pixed">
		<div class='menu'>
			<ul>
				<li class='active sub'><a href='#'>직접선택</a>
					<ul>
						<li class='sub'><a href='#'>서울</a></li>
						<li class='sub'><a href='#'>인천</a></li>
						<li class='sub'><a href='#'>경기도</a></li>
						<li class='sub'><a href='#'>경상도</a></li>
						<li class='sub'><a href='#'>강원도</a></li>
						<li class='sub'><a href='#'>전라도</a></li>
						<li class='sub'><a href='#'>충청도</a></li>
						<li class='sub'><a href='#'>제주도</a></li>
					</ul></li>
				<li class='active sub'><a href='#'>관광지</a>
					<ul>
						<li class='sub'><a
							href='<c:url value="/tourinfo/tdview/tourDetail.it"/>'>관광지정보</a></li>
						<li class='sub'><a
							href='<c:url value="/tourinfo/tdview/notice.it"/>'>축제행사</a></li>
						<li class='sub'><a
							href='<c:url value="/tourinfo/tdview/qna.it"/>'>한국 관광100선</a></li>
						<li class='sub'><a href='#'>웰니스 관광25</a></li>
						<li class='sub'><a href='#'>방방곡곡</a></li>
					</ul></li>
				<li class='active sub'><a href='#'>맛집!</a>
					<ul>
						<li class='sub'><a
							href='<c:url value="/tourinfo/tdview/foodDetail.it"/>'>음식점 정보</a></li>
						<li class='sub'><a href='#'>맛집랭킹</a></li>
					</ul></li>
				<li class='active sub'><a href='#'>숙박!</a>
					<ul>
						<li class='sub'><a
							href='<c:url value="/tourinfo/tdview/sleepDetail.it"/>'>숙소 정보</a></li>
						<li class='sub'><a href='#'>숙소랭킹</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>
<!-- 여행지추천/숙박/리뷰/맛집 -->
<div class="col-sm-10 col-sm-offset-1 ">
<div class="panel panel-info">
	<div class="panel-heading"></div>
	<div class="panel-body">
		<script>
			$(function() {
				$("#tabMenu a").click(function() {
					$(this).tab('show');
				});
			});
		</script>
		<ul class="nav nav-tabs nav-justified" id="tabMenu">
			<li class="active"><a href="#menu1">여행지 추천</a></li>
			<li><a href="#menu2">맛집</a></li>
			<li><a href="#menu3">숙박</a></li>
			<li><a href="#menu4">리뷰</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade in active" id="menu1">
				<figure class="snip1482">
					<figcaption>
						<h2>Norman Gordon</h2>
						<p>You don't get to be mom if you can't fix everything just
							right.</p>
					</figcaption>
					<a href="#"></a>
					<img src="<c:url value='../../../../images/nam.PNG'/>"
						alt="sample45" />
				</figure>
				<figure class="snip1482 ">
					<figcaption>
						<h2>Desmond Eagle</h2>
						<p>Until you stalk and overrun, you can't devour anyone.</p>
					</figcaption>
					<a href="#"></a>
					<img src="<c:url value='../../../../images/busan.jpg'/>"
						alt="sample59" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img src="<c:url value='../../../../images/dol.PNG'/>"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img src="<c:url value='../../../../images/dae.PNG'/>"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img src="<c:url value='../../../../images/ho.PNG'/>"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<div>
					<span style="font-size: 1.2em; color: red"><a
						href="<c:url value='/tourinfo/tdview/tourDetail.it'/>">더보기&nbsp;+</a></span>
				</div>
			</div>


			<div class="tab-pane fade" id="menu2">
				<figure class="snip1483">
					<figcaption>
						<h2>Norman Gordon</h2>
						<p>You don't get to be mom if you can't fix everything just
							right.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample45.jpg"
						alt="sample45" />
				</figure>
				<figure class="snip1483 hover">
					<figcaption>
						<h2>Desmond Eagle</h2>
						<p>Until you stalk and overrun, you can't devour anyone.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample59.jpg"
						alt="sample59" />
				</figure>
				<figure class="snip1483">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<div>
					<span style="font-size: 1.2em; color: red"><a
						href="<c:url value='/tourinfo/tdview/foodDetail.it'/>">더보기&nbsp;+</a></span>
				</div>
			</div>
			<div class="tab-pane fade" id="menu3">
				<figure class="snip1484">
					<figcaption>
						<h2>Norman Gordon</h2>
						<p>You don't get to be mom if you can't fix everything just
							right.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample45.jpg"
						alt="sample45" />
				</figure>
				<figure class="snip1484 hover">
					<figcaption>
						<h2>Desmond Eagle</h2>
						<p>Until you stalk and overrun, you can't devour anyone.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample59.jpg"
						alt="sample59" />
				</figure>
				<figure class="snip1484">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1484">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1484">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1484">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1484">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1484">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<div>
					<span style="font-size: 1.2em; color: red"><a
						href="<c:url value='/tourinfo/tdview/sleepDetail.it'/>">더보기&nbsp;+</a></span>
				</div>
			</div>
			<div class="tab-pane fade" id="menu4">
				<figure class="snip1485">
					<figcaption>
						<h2>Norman Gordon</h2>
						<p>You don't get to be mom if you can't fix everything just
							right.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample45.jpg"
						alt="sample45" />
				</figure>
				<figure class="snip1485 hover">
					<figcaption>
						<h2>Desmond Eagle</h2>
						<p>Until you stalk and overrun, you can't devour anyone.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample59.jpg"
						alt="sample59" />
				</figure>
				<figure class="snip1485">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1485">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1485">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1485">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1485">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
				<figure class="snip1485">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample60.jpg"
						alt="sample60" />
				</figure>
			</div>
		</div>
	</div>
</div>
</div>

<script>
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
</script>
<!-- 여행지추천/숙박/리뷰/맛집 -->
<div class="col-sm-10 col-sm-offset-1">
	<div class="col-xs-4">
		<a href="" class="thumbnail"> <img
			src="<c:url value='../../../../images/dae.PNG'/>" alt="...">
		</a>
	</div>
	<div class="col-xs-4">
		<a href="" class="thumbnail"> <img
			src="<c:url value='../../../../images/dae.PNG'/>" alt="...">
		</a>
	</div>
	<div class="col-xs-4">
		<a href="" class="thumbnail"> <img
			src="<c:url value='../../../../images/dae.PNG'/>" alt="...">
		</a>
	</div>
</div>
<div class="col-sm-10 col-sm-offset-1">
	<div class="col-xs-4">
		<a href="" class=""> <img
			src="<c:url value='../../../../images/dae.PNG'/>" alt="...">
		</a>
	</div>
	<div class="col-xs-4">
		<a href="" class="thumbnail"> <img
			src="<c:url value='../../../../images/dae.PNG'/>" alt="...">
		</a>
	</div>
	<div class="col-xs-4">
		<a href="" class=""> <img
			src="<c:url value='../../../../images/dae.PNG'/>" alt="...">
		</a>
	</div>
</div>


<!-- ============================================================================ -->

