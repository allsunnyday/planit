<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="<c:url value='../../../../js/swiper.css'/>">
<script src="<c:url value='../../../../js/swiper.js'/>"></script>
<script src="<c:url value='../../../../js/swiper.jquery.min.js'/>"></script>
<script src="<c:url value='../../../../js/swiper.jquery.js'/>"></script>


<style>
body {
	font-family: "Lucida Sans Typewriter", "Lucida Console", Monaco,
		"Bitstream Vera Sans Mono", monospace;
	margin: 0px;
	padding: 50px;
	background: #e1e1e1;
}

.menu {
	position: relative;
	height: 44px;
	background: #2b2f3a;
	width: auto;
}

.menu ul {
	list-style: none;
	padding: 0;
	margin: 0;
	line-height: 1;
}

.menu>ul {
	position: relative;
	display: block;
	background: #2b2f3a;
	width: 100%;
	z-index: 500;
}

.menu:after, .menu>ul:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}

.menu.align-right>ul>li {
	float: right;
}

.menu.align-center ul {
	text-align: center;
}

.menu.align-center ul ul {
	text-align: left;
}

.menu>ul>li {
	display: inline-block;
	position: relative;
	margin: 0;
	padding: 0;
}

.menu>ul>#menu-button {
	display: none;
}

.menu ul li a {
	display: block;
	font-family: Helvetica, sans-serif;
	text-decoration: none;
}

.menu>ul>li>a {
	font-size: 14px;
	font-weight: bold;
	padding: 15px 20px;
	color: #fff;
	text-transform: uppercase;
	-webkit-transition: color 0.25s ease-out;
	-moz-transition: color 0.25s ease-out;
	-ms-transition: color 0.25s ease-out;
	-o-transition: color 0.25s ease-out;
	transition: color 0.25s ease-out;
}

.menu>ul>li.sub>a {
	padding-right: 32px;
}

.menu>ul>li:hover>a {
	color: #ffffff;
}

.menu li.sub::after {
	display: block;
	content: "";
	position: absolute;
	width: 0;
	height: 0;
}

.menu>ul>li.sub::after {
	right: 10px;
	top: 20px;
	border: 5px solid transparent;
	border-top-color: #7a8189;
}

.menu>ul>li:hover::after {
	border-top-color: #ffffff;
}

.menu ul ul {
	position: absolute;
	left: -9999px;
	top: 70px;
	opacity: 0;
	-webkit-transition: opacity .3s ease, top .25s ease;
	-moz-transition: opacity .3s ease, top .25s ease;
	-ms-transition: opacity .3s ease, top .25s ease;
	-o-transition: opacity .3s ease, top .25s ease;
	transition: opacity .3s ease, top .25s ease;
	z-index: 1000;
}

.menu ul ul ul {
	top: 37px;
	padding-left: 5px;
}

.menu ul ul li {
	position: relative;
}

.menu>ul>li:hover>ul {
	left: auto;
	top: 44px;
	opacity: 1;
}

.menu.align-right>ul>li:hover>ul {
	left: auto;
	right: 0;
	opacity: 1;
}

.menu ul ul li:hover>ul {
	left: 170px;
	top: 0;
	opacity: 1;
}

.menu.align-right ul ul li:hover>ul {
	left: auto;
	right: 170px;
	top: 0;
	opacity: 1;
	padding-right: 5px;
}

.menu ul ul li a {
	width: 130px;
	border-bottom: 1px solid #eeeeee;
	padding: 10px 20px;
	font-size: 12px;
	color: #9ea2a5;
	background: #ffffff;
	-webkit-transition: all .35s ease;
	-moz-transition: all .35s ease;
	-ms-transition: all .35s ease;
	-o-transition: all .35s ease;
	transition: all .35s ease;
}

.menu.align-right ul ul li a {
	text-align: right;
}

.menu ul ul li:hover>a {
	background: #f2f2f2;
	color: #8c9195;
}

.menu ul ul li:last-child>a, .menu ul ul li.last>a {
	border-bottom: 0;
}

.menu>ul>li>ul::after {
	content: '';
	border: 6px solid transparent;
	width: 0;
	height: 0;
	border-bottom-color: #ffffff;
	position: absolute;
	top: -12px;
	left: 30px;
}

.menu.align-right>ul>li>ul::after {
	left: auto;
	right: 30px;
}

.menu ul ul li.sub::after {
	border: 4px solid transparent;
	border-left-color: #9ea2a5;
	right: 10px;
	top: 12px;
	-moz-transition: all .2s ease;
	-ms-transition: all .2s ease;
	-o-transition: all .2s ease;
	transition: all .2s ease;
	-webkit-transition: -webkit-transform 0.2s ease, right 0.2s ease;
}

.menu.align-right ul ul li.sub::after {
	border-left-color: transparent;
	border-right-color: #9ea2a5;
	right: auto;
	left: 10px;
}

.menu ul ul li.sub:hover::after {
	border-left-color: #ffffff;
	right: -5px;
	-webkit-transform: rotateY(180deg);
	-ms-transform: rotateY(180deg);
	-moz-transform: rotateY(180deg);
	-o-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.menu.align-right ul ul li.sub:hover::after {
	border-right-color: #ffffff;
	border-left-color: transparent;
	left: -5px;
	-webkit-transform: rotateY(180deg);
	-ms-transform: rotateY(180deg);
	-moz-transform: rotateY(180deg);
	-o-transform: rotateY(180deg);
	transform: rotateY(180deg);
}
</style>
<body>
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
						<li class='sub'><a href='<c:url value="/tourinfo/tdview/tourDetail.it"/>'>관광지정보</a></li>
						<li class='sub'><a href='<c:url value="/tourinfo/tdview/notice.it"/>'>축제행사</a></li>
						<li class='sub'><a href='<c:url value="/tourinfo/tdview/qna.it"/>'>한국 관광100선</a></li>
						<li class='sub'><a href='#'>웰니스 관광25</a></li>
						<li class='sub'><a href='#'>방방곡곡</a></li>
					</ul></li>
				<li class='active sub'><a href='#'>맛집!</a>
					<ul>
						<li class='sub'><a href='<c:url value="/tourinfo/tdview/foodDetail.it"/>'>음식점 정보</a></li>
						<li class='sub'><a href='#'>맛집랭킹</a></li>
					</ul></li>
				<li class='active sub'><a href='#'>숙박!</a>
					<ul>
						<li class='sub'><a href='<c:url value="/tourinfo/tdview/sleepDetail.it"/>'>숙소 정보</a></li>
						<li class='sub'><a href='#'>숙소랭킹</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</body>

<!-- 캐러셀 -->
<link rel="stylesheet"
	href="https://cd<c:url value='../../../../js/swiper.min.css'/>">
<style>
html, body {
	position: relative;
	height: 100%;
}

body {
	background: #eee;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 70px;
}

.swiper-container {
	width: 100%;
	height: 100%;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.image_i {
	width: 100%
}
</style>
<body>
	<!-- Swiper -->
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img class="image_i" style="object-fit: contain;"
					src="<c:url value='../../../../images/ho.PNG'/>">
			</div>
			<div class="swiper-slide">
				<img class="image_i"
					src="<c:url value='../../../../images/dol.PNG'/>">
			</div>
			<div class="swiper-slide">
				<img class="image_i"
					src="<c:url value='../../../../images/nam.PNG'/>">
			</div>
			<div class="swiper-slide">
				<img class="image_i"
					src="<c:url value='../../../../images/ho.PNG'/>">
			</div>
			<div class="swiper-slide">
				<img class="image_i"
					src="<c:url value='../../../../images/gang.PNG'/>">
			</div>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination"></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	</div>
	<!-- Swiper JS -->
	<script src="<c:url value='../../../../js/swiper.min.js'/>"></script>
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			pagination : {
				el : '.swiper-pagination',
				type : 'fraction',
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
		});
	</script>
</body>
<!-- 캐러셀 -->
<!-- 주석추가  -->
<!-- 여행지추천/숙박/리뷰/맛집 -->
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
					<img
						src="<c:url value='../../../../images/nam.PNG'/>"
						alt="sample45" />
				</figure>
				<figure class="snip1482 ">
					<figcaption>
						<h2>Desmond Eagle</h2>
						<p>Until you stalk and overrun, you can't devour anyone.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="<c:url value='../../../../images/busan.jpg'/>"
						alt="sample59" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="<c:url value='../../../../images/dol.PNG'/>"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="<c:url value='../../../../images/dae.PNG'/>"
						alt="sample60" />
				</figure>
				<figure class="snip1482">
					<figcaption>
						<h2>Benjamin Evalent</h2>
						<p>There's never enough time to do all the nothing you want.</p>
					</figcaption>
					<a href="#"></a>
					<img
						src="<c:url value='../../../../images/ho.PNG'/>"
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

<style>
.snip1482, .snip1483, .snip1484, .snip1485 {
	font-family: 'Fauna One', Arial, sans-serif;
	position: relative;
	float: left;
	margin: 10px 20px;
	min-width: 230px;
	max-width: 295px;
	min-height: 220px;
	width: 100%;
	color: #ffffff;
	text-align: right;
	line-height: 1.4em;
	background-color: #1a1a1a;
	font-size: 16px;
}

.snip1482 *, .snip1483 *, .snip1484*, .snip1485* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.35s ease;
	transition: all 0.35s ease;
}

.snip1482 img, .snip1483 img, .snip1484 img, .snip1485 img {
	position: absolute;
	right: 0%;
	top: 50%;
	opacity: 1;
	width: 100%;
	-webkit-transform: translate(0%, -50%);
	transform: translate(0%, -50%);
}

.snip1482 figcaption, .snip1483 figcaption, .snip1484 figcaption,
	.snip1485 figcaption {
	position: absolute;
	width: 50%;
	top: 50%;
	left: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	padding: 20px 0 20px 20px;
}

.snip1482 h2, .snip1482 p, .snip1483 h2, .snip1483 p, .snip1484 h2,
	.snip1484 p, .snip1485 h2, .snip1485 p {
	margin: 0;
	width: 100%;
	-webkit-transform: translateX(20px);
	transform: translateX(20px);
	opacity: 0;
}

.snip1482 h2, .snip1483 h2, .snip1484 h2, .snip1485 h2 {
	font-family: 'Playfair Display', Arial, sans-serif;
	text-transform: uppercase;
	margin-bottom: 5px;
}

.snip1482 p, .snip1483 p, .snip1484 p, .snip1485 p {
	font-size: 0.8em;
}

.snip1482 a, .snip1483 a, .snip1484 a, .snip1485 a {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: 1;
}

.snip1482:hover img, .snip1482.hover img, .snip1483:hover img, .snip1483.hover img,
	.snip1484:hover img, .snip1484.hover img, .snip1485:hover img,
	.snip1485.hover img {
	width: 55%;
	right: -10%;
}

.snip1482:hover figcaption h2, .snip1482.hover figcaption h2, .snip1482:hover figcaption p,
	.snip1482.hover figcaption p, .snip1483:hover figcaption h2, .snip1483.hover figcaption h2,
	.snip1483:hover figcaption p, .snip1483.hover figcaption p, .snip1484:hover figcaption h2,
	.snip1484.hover figcaption h2, .snip1484:hover figcaption p, .snip1484.hover figcaption p,
	.snip1485:hover figcaption h2, .snip1485.hover figcaption h2, .snip1485:hover figcaption p,
	.snip1485.hover figcaption p {
	-webkit-transform: translateX(0px);
	transform: translateX(0px);
	opacity: 1;
}
</style>
<script>
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
</script>
<!-- 여행지추천/숙박/리뷰/맛집 -->

<div class="col-md-12">
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
<div class="col-md-12">
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

