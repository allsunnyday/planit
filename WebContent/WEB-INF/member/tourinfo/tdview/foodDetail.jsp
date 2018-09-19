<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div style="padding-top: 70px">
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
						<li class='sub'><a href='<c:url value='/tourinfo/tdview/tourDetail.it'/>'>관광지정보</a></li>
						<li class='sub'><a href='<c:url value='/tourinfo/tdview/notice.it'/>'>축제행사</a></li>
						<li class='sub'><a href='#'>한국 관광100선</a></li>
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

<!-- 웹폰트를 안정적으로 불러오기위한 조치 -->
<script type="text/javascript" src="<c:url value='http://korean.visitkorea.or.kr/js/vk/kor/bz15/common/webfont.js'/>"></script>
<script type="text/javascript">
  WebFont.load({
    custom:{
        families:['Nanum Gothic'],
        urls:['/css/vk/kor/bz15/nanumweb.css']
    }
  });
</script>

<!--[if lt IE 9]>
<script type="text/javascript" src="/js/vk/kor/bz15/common/html5.js"></script>
<![endif]-->

<link href="/kor/favicon_kor.ico" rel="shortcut icon"/>

<link rel="stylesheet" type="text/css" href="<c:url value='http://korean.visitkorea.or.kr/css/vk/kor/bz15/common.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='http://korean.visitkorea.or.kr/css/vk/kor/bz15/layout.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='http://korean.visitkorea.or.kr/css/vk/kor/bz15/main.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='http://korean.visitkorea.or.kr/css/vk/kor/bz15/content.css'/>">

<link rel="stylesheet" type="text/css" href="<c:url value='http://korean.visitkorea.or.kr/css/vk/kor/bz15/mustgo.css'/>">


<!-- jquery -->
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/common-popup.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/common-scroll.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/topmenu.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/content.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/jquery/publish.js"></script>

<!-- 검색엔진 -->
<script type="text/javascript" src="/js/vk/kor/bz15/ksearch/front/js/search.js"></script>
<script type="text/javascript" src="/js/vk/kor/bz15/ksearch/front/js/pagenav.js"></script>    
<script type="text/javascript" src="/js/vk/kor/bz15/ksearch/front/js/akc.js"></script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-92880258-1', 'auto');
  ga('send', 'pageview');

</script>

<body>




<script type="text/javascript">
(function(){

	var param = $("#popupzone");
	var btn = param.find(".buttonSet button");
	var obj = param.find(".wrapper");

	var today = param.find(".todayClose");

	var data = true;
	var delay = 1000;

	function movement(){
		var param ="#popupzone",
			obj = ".item",
			btn = ".control",
			interval = 5000,
			speed = 1000,
			viewSize = 2,
			moreSize = 0,
			dir = "x",
			data = 0,
			auto = true,
			hover = true,
			method = "easeInOutCubic",
			op1 = false;

		stateScrollObj(param,obj,btn,interval,speed,viewSize,moreSize,dir,data,auto,hover,method,op1);
	}

	var OPEN = function(){
		
		if($("#popupzone .item").size() > 0){

			obj.stop(true,false).css({opacity:0}).delay(delay).show().animate({height:120,opacity:1},300,'easeOutCubic');
			param.find('[data-type="open"]').stop(true,false).fadeOut(150);
			param.find('[data-type="close"]').stop(true,false).fadeIn(150);

			movement();
		}
	}

	var CLOSE = function(){
		obj.stop(true,false).animate({height:0,opacity:0},300,'easeOutCubic',function(){ $(this).hide(); });
		param.find('[data-type="close"]').stop(true,false).fadeOut(150);
		param.find('[data-type="open"]').stop(true,false).fadeIn(150);
	}

	//------------

	var key = function(){
		return {
			get:getCookie("popuplayer")
		}
	}

	function setDay(){
		var d = new Date();
		d.setTime(d.getTime() + (arguments[0]*24*60*60*1000));

		return d.toUTCString();
	}

	function setCookie(){
		if(key().get != 1){
	    	document.cookie = "popuplayer=1;path=/;expires="+setDay(1);
	    	today.addClass("selected");
			CLOSE();
			data = false;
	    }else{
	    	document.cookie = "popuplayer=0;path=/";
	    	today.removeClass("selected");
	    }
	}

	// 쿠키 확인
	if(key().get != 1){
		OPEN(); 
		today.removeClass("selected");
	}else{ 
		data = false;
		today.addClass("selected");
	}

	//------------

	btn.on("click",function(){
		delay = 0;
		if(data == false){ 
			OPEN();
			data = true;
		}else{
			CLOSE();
			data = false;
		}
	});

	today.on("click",function(){
		setCookie();

	});

}());
</script>



  <header id="header">
		<script type="text/javascript">
		(function(){
			var lang = $("a[href='#language']");
			function _in(event){
				var tobj = $(this).next();
				if(tobj.css("display") != "block"){
					tobj
						.css({"display":"block"})
							.stop(true,false).animate({opacity:1},300,"easeOutCubic");
				}else{
					tobj
						.stop(true,false)
							.animate({opacity:0},300,"easeOutCubic",function(){ 
								$(this).css({"display":"none"});
							 });
				}
				event.preventDefault(); 
			}
			function _out(){
				lang.next()
					.stop(true,false)
							.animate({opacity:0},300,"easeOutCubic",function(){ 
								$(this).css({"display":"none"});
							 });
			}
			
			//-----

			lang.on("click",_in);
			lang.parent().on("mouseleave",_out);
			lang.next().find("a").last().on("focusout",_out);
		}());
		</script>

	<script type="text/javascript" src="/js/vk/kor/bz15/jquery/gsearch.js"></script>

  </header>

</nav>
<script type="text/javascript">
(function(){

	var param = "#gnb",
		obj = ".th2",
		btn = ".th1>a",
		wrap = "#animate",
		elem = 99,
		dur = 0,
		meth = "easeInOutCubic",
		mno = "";

	gnb(param,obj,btn,wrap,elem,dur,meth,mno);


	$.each($(btn),function(index){
		$(this).addClass("num"+(index+1));
	});


	var target = $(".functionTh3");

	function _in(){

		$(this).addClass("ov");

		$(this).next()
			.stop(true,true)
			.animate({height:$(this).next().find(".th3").outerHeight(true)},300,"easeInOutCubic");
		  //.animate({height:$(".th3").outerHeight(true)},300,"easeInOutCubic");

	}

	function _out(){
		target
			.stop(true,true)
			.animate({height:0},300,"easeInOutCubic");

		target.prev().removeClass("ov");
	}


	target.prev()
		.on("mouseenter focusin",_in);

	target.prev().parent()
		.on("mouseleave",_out);
	
}());
</script>


<div id="curtain">
	<div id="container">


<script type="text/javascript" src="/js/vk/kor/bz15/jquery/location.js"></script>  
	<section id="content">
	<!-- 본문 시작 -->
		<h1 class="hide">본문시작</h1>
<h2 class="hide">숙박업소정보 게시글 목록 입니다</h2>
<script type="text/javascript">
function goPage(str) {
	var form = document.searchForm;
	form.cid.value= "";
	form.gotoPage.value= str;
	form.submit();
}

function goOrderList(str) {
	var form = document.searchForm;
	form.cid.value= "";
	form.gotoPage.value= "";
	form.listType.value= str;
	form.submit();
}

function goRead(cid) {
	var form = document.searchForm;
	form.cid.value= cid;
	form.submit();
}
</script>
<div class="doc w_stay">
	<div class="searchWrap type3">
		<!--
		<a class="link_button" href="http://korean.visitkorea.o
		r.kr/kor/bz15/w_stay/w_stay_list_kq.jsp?areaCode=&category=kq&gotoPage=&listType=rdesc&cid=&out_service=" target="_blank">KQ링크</a>
		-->
		<script type="text/javascript">
		(function(){
			var parent = ".search_tab",
				btn = ".search_tab button";

			requiredTagSearch(parent,btn);
		}());
		</script>
	</div>

	<div class="whereWrap">

		<ul>

			<li><a href="w_stay_view.jsp?cid=2560508&gotoPage=">
				<p class="region"><span>남동구</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/19/2560519_image2_1.jpg" alt="그랜드팰리스호텔(인천)">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>그랜드팰리스호텔(인천)</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 인천 남동구</li>
					<li>전화번호 : 032-440-9999</li>
					<li>객실수 : 215</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2558830&gotoPage=">
				<p class="region"><span>평창군</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/19/2558819_image2_1.jpg" alt="AM호텔">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>AM호텔</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 강원도 평창군</li>
					<li>전화번호 : 1855-2866</li>
					<li>객실수 : 365실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2557959&gotoPage=">
				<p class="region"><span>춘천시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/38/2557938_image2_1.JPG" alt="호텔정관루">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>호텔정관루</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 강원도 춘천시</li>
					<li>전화번호 : 031-580-8000</li>
					<li>객실수 : 본관 44객실, 별관 13동</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2557922&gotoPage=">
				<p class="region"><span>문경시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/46/2557846_image2_1.jpg" alt="이너스 호텔">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>이너스 호텔</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 경상북도 문경시</li>
					<li>전화번호 : 054-572-8800</li>
					<li>객실수 : 41실</li>
					</ul>
				</div>
			</a></li>
		
		</ul>

		<ul>

			<li><a href="w_stay_view.jsp?cid=2556500&gotoPage=">
				<p class="region"><span>제주시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/79/2556479_image2_1.JPG" alt="제주마중">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>제주마중</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 제주도 제주시</li>
					<li>전화번호 : 010-8326-9116</li>
					<li>객실수 : 4</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2555815&gotoPage=">
				<p class="region"><span>구례군</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/04/2555804_image2_1.jpg" alt="구례자연드림파크 휴펜션">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>구례자연드림파크 휴펜션</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 전라남도 구례군</li>
					<li>전화번호 : 061-783-2200</li>
					<li>객실수 : 16객실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2555842&gotoPage=">
				<p class="region"><span>구례군</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/35/2555835_image2_1.JPG" alt="구례자연드림파크 휴센터">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>구례자연드림파크 휴센터</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 전라남도 구례군</li>
					<li>전화번호 : 061-783-2200</li>
					<li>객실수 : 30객실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2555664&gotoPage=">
				<p class="region"><span>창원시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/40/2555640_image2_1.jpg" alt="엠스테이호텔 창원">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>엠스테이호텔 창원</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 경상남도 창원시</li>
					<li>전화번호 : 1522-6300</li>
					<li>객실수 : 357객실</li>
					</ul>
				</div>
			</a></li>
		
		</ul>

		<ul>

			<li><a href="w_stay_view.jsp?cid=2555413&gotoPage=">
				<p class="region"><span>수영구</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/16/2555416_image2_1.jpg" alt="호텔런더너">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>호텔런더너</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 부산 수영구</li>
					<li>전화번호 : 051-755-0055</li>
					<li>객실수 : 45실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2554731&gotoPage=">
				<p class="region"><span>홍성군</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/08/2554608_image2_1.JPG" alt="암행어사 게스트하우스(관광두레 주민사업체)">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>암행어사 게스트하우스(관광두레 주민...</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 충청남도 홍성군</li>
					<li>전화번호 : 041-977-0700</li>
					<li>객실수 : 4실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2553197&gotoPage=">
				<p class="region"><span>동해시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/98/2553198_image2_1.jpg" alt="무코바란(관광두레 주민사업체)">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>무코바란(관광두레 주민사업체)</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 강원도 동해시</li>
					<li>전화번호 : 033-532-2043</li>
					<li>객실수 : 3</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2553181&gotoPage=">
				<p class="region"><span>순천시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/82/2553182_image2_1.jpg" alt="호텔여기어때 순천점">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>호텔여기어때 순천점</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 전라남도 순천시</li>
					<li>전화번호 : 061-722-5601</li>
					<li>객실수 : 40실</li>
					</ul>
				</div>
			</a></li>
		
		</ul>

		<ul>

			<li><a href="w_stay_view.jsp?cid=2553047&gotoPage=">
				<p class="region"><span>태백시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/23/2553023_image2_1.JPG" alt="태백 라마다호텔">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>태백 라마다호텔</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 강원도 태백시</li>
					<li>전화번호 : 1899-1301</li>
					<li>객실수 : 305실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2552837&gotoPage=">
				<p class="region"><span>서귀포시</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/95/2552795_image2_1.jpg" alt="제주 스카브로호텔">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>제주 스카브로호텔</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 제주도 서귀포시</li>
					<li>전화번호 : 064-738-1551</li>
					<li>객실수 : 40실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2552762&gotoPage=">
				<p class="region"><span>횡성군</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/28/2552728_image2_1.jpg" alt="러브하우스펜션">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>러브하우스펜션</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 강원도 횡성군</li>
					<li>전화번호 : 033-344-2860</li>
					<li>객실수 : 7실</li>
					</ul>
				</div>
			</a></li>
		
			<li><a href="w_stay_view.jsp?cid=2552651&gotoPage=">
				<p class="region"><span>종로구</span></p>
				<div class="pic">

					<img src="http://tong.visitkorea.or.kr/cms/resource/34/2552634_image2_1.jpg" alt="메이플레이스 호텔 서울 동대문">
					<span><img src="http://tong.visitkorea.or.kr/img/vk/kor/bz15/where/img_ov.png" alt="오버이미지"></span>

				</div>
				<div class="cnt">
					<h3><b>메이플레이스 호텔 서울 동대문</b> <span>숙박시설</span></h3>
					<ul>
					<li>지역 : 서울 종로구</li>
					<li>전화번호 : 02-742-8080</li>
					<li>객실수 : 107실</li>
					</ul>
				</div>
			</a></li>
		</ul>
	</div>
</div>

<!-- This page is generated by CMS -->
	<!-- 본문 끝 -->
	</section>


	</div>
</div>



<!--AceCounter-Plus Log Gathering for AceTag Manager V.9.2.20170103--> 
<script type="text/javascript"> 
var _AceTM = (function (_j, _s, _b, _o, _y) { 
 var _uf='undefined',_pmt='',_lt=location;var _ap = String(typeof(_y.appid) != _uf ? _y.appid():(isNaN(window.name))?0:window.name);var _ai=(_ap.length!=6)?(_j!=0?_j:0):_ap;if(typeof(_y.em)==_uf&&_ai!=0){var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0]; 

 var _cn={tid:_ai+_s,hsn:_lt.hostname,hrf:(document.referrer.split('/')[2]),dvp:(typeof(window.orientation)!=_uf?(_ap!=0?2:1):0),tgp:'',tn1:_y.uWorth,tn2:0,tn3:0,tw1:'',tw2:'',tw3:'',tw4:'',tw5:'',tw6:'',tw7:_y.pSearch};_cn.hrf=(_cn.hsn!=_cn.hrf)?_cn.hrf:'in';for(var _aix in _y){var _ns=(_y[_aix])||{}; 

 if(typeof(_ns)!='function'){_cn.tgp=String(_aix).length>=3?_aix:'';_cn.tn2=_ns.pPrice;_cn.tn3=_ns.bTotalPrice;_cn.tw1=_ns.bOrderNo;_cn.tw2=_ns.pCode;_cn.tw3=_ns.pName;_cn.tw4=_ns.pImageURl;_cn.tw5=_ns.pCategory;_cn.tw6=_ns.pLink;break;};};_cn.rnd=(new Date().getTime());for(var _alx in _cn){ 

 var _ct=String(_cn[_alx]).substring(0,128);_pmt+=(_alx+"="+encodeURIComponent((_ct!=_uf)?_ct:'')+"&");};_y.acid=_ai;_y.atid=_cn.tid;_y.em=_cn.rnd;_sc.src=((_lt.protocol.indexOf('http')==0?_lt.protocol:'http:')+'//'+_b+'/'+_o)+'?'+_pmt+'py=0';_sm.parentNode.insertBefore(_sc,_sm);};return _y; 

})(107655,'DO-10-A', 'atm.acecounter.com','ac.js',window._AceTM||{}); 
</script> 
<!--AceCounter-Plus Log Gathering for AceTag Manager End --> 

<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtp4.acecounter.com','8080','AH2A40488765963','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
<noscript><img src='http://gtp4.acecounter.com:8080/?uid=AH2A40488765963&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End -->

<script type="text/javascript">
function sendRecommendSubmit(path,func_name,tag,tagCode,tagCond,kind,sort)
{
	var f = document.sendRecommendForm;
	f.func_name.value = func_name;
	f.tag.value = tag;
	f.tagCode.value = tagCode;
	f.tagCond.value = tagCond;
	f.kind.value = kind;
	f.sort.value = sort;
	f.action = path;
	f.submit();
}
</script>



