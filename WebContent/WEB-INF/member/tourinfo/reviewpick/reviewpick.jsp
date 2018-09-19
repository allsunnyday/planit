<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.stack__img {
	width: 400px;
	height: 300px;
	position: relative;
	display: block;
	flex: none;
}

.content__title {
	font-size: 0.85em;
	position: absolute;
	top: 18%;
	width: 5em;
	left: 2em;
	margin: 0.75em 0;
	color: #b0adad;
}
</style>
	<link href="https://fonts.googleapis.com/css?family=Overpass+Mono:400,700" rel="stylesheet">
		
	<link rel="stylesheet" href="<c:url value='/assets/css/demo.css'/> ">
	<link rel="stylesheet" href="<c:url value='/assets/css/normalize.css'/> ">
	
	<script src="<c:url value='/assets/js/anime.min.js'/> "></script>
	<script src="<c:url value='/assets/js/main.js'/> "></script>

<!-- body end  -->
	<script>document.documentElement.className = 'js';</script>
		<div style="padding-top: 100px">
		<main>
			<section class="content">
				<h2 class="content__title">★★베스트 리뷰★★</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">TAG</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">최 신 리 뷰</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_003</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_004</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_005</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_006</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_007</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_008</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content">
				<h2 class="content__title">_009</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
			<section class="content content--padded">
				<h2 class="content__title">_010</h2>
				<div class="grid grid--effect-hamal">
					<a href="#" class="grid__item grid__item--c1">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">우 정 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c2">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel2.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
					<a href="#" class="grid__item grid__item--c3">
						<div class="stack">
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__deco"></div>
							<div class="stack__figure">
								<img class="stack__img" src="<c:url value='/images/reviewpick/travel3.png'/>" alt="Image"/>
							</div>
						</div>
						<div class="grid__item-caption">
							<h3 class="grid__item-title">가 족 여 행</h3>
							<div class="column column--left">
								<span class="column__text">ID</span>
								<span class="column__text">Title</span>
								<span class="column__text">Postdate</span>
							</div>
							<div class="column column--right">
								<span class="column__text">톤톤</span>
								<span class="column__text">#강원도 #바다</span>
								<span class="column__text">2018.05.02</span>
							</div>
						</div>
					</a>
				</div>
			</section>
		</main>
		</div>
	
		<script>
		(function() {
			
			[].slice.call(document.querySelectorAll('.grid--effect-hamal > .grid__item')).forEach(function(stackEl) {
				new HamalFx(stackEl);
			});
		})();
		</script>