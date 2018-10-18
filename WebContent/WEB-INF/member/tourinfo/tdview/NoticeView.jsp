<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" href="https://365ok.co.kr/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/skin/board/basic/style.css?ver=171222">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/default.css?ver=171222">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/animate.min.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/owl.carousel.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/main.css">
<script src="https://365ok.co.kr/theme/ok/js/jquery-2.2.4.min.js"></script>
<!-- 익스 버전 9이하에서 접속시 나타나는 버전 업그레이드 권유 메세지 -->
		<!--[if lt IE 11] >
		<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
		<![endif]-->



<!-- 콘텐츠 시작 { -->

<div id="main" class="container">

       <section class="sub-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">공지사항</h1>
						</div>
					</div>
				</div>
			</section>
			<!-- End sub title -->
  
<script src="https://365ok.co.kr/js/viewimageresize.js"></script>

<!-- 게시물 읽기 시작 { -->

<section class="service-area pt-50 pb-50" id="lecture">

    <header>
        <h4 id="bo_v_title">
                        <span class="bo_v_tit" style="font-size:1.5em">
           ${noticeview.title }</span>
        </h4>
    </header>

    <section id="bo_v_info">
        <h2>페이지 정보</h2>
        <span class="sound_only">번호</span> <strong><span class="sv_member">${noticeview.no }</span></strong>
        <span class="sound_only">작성자</span> <strong><span class="sv_member">${noticeview.name }</span></strong>
        <span class="sound_only">조회</span><strong><i class="fa fa-eye" aria-hidden="true"></i> 28회</strong>
        <strong class="if_date"><span class="sound_only">작성일</span><i class="fa fa-clock-o" aria-hidden="true"></i> ${noticeview.postdate }</strong>

    </section>

<section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>

        <div id="bo_v_img">
</div>

        <!-- 본문 내용 시작 { -->
        <div id="bo_v_con" style="font-size:1.5em">${noticeview.content }</div>

<div>
<div class="col-md-10">
  			<table width=28%>
             	<tr >
	             	<td style="font-size:1.6em"><i class="fa fa-caret-up"></i>  이전글 &nbsp; :</td>
	             	<td style="font-size:1.6em"><a href="<c:url value='#'/>">${noticeview.title}</a></td>
             	</tr>
				<tr>
					<td style="font-size:1.6em"><i class="fa fa-caret-down"></i>  다음글 &nbsp; :</td>
	             	<td style="font-size:1.6em"><a href="<c:url value='#'/>">${noticeview.title}</a></td>
             	</tr>             
             </table>
</div>

     <div class="col-md-2">
    		<div id="bo_v_top">
	     	   <ul class="bo_v_right">
	        		<ul class="bo_v_com">
	          			 <li><a href="<c:url value='/planit/search/tourinfo/Notice.it'/>" class="btn btn-danger border">
	          			 <i class="fa fa-list" aria-hidden="true"></i> 목록</a></li>
	            	</ul>
	           </ul>
           </div>
</div>
    
  </div>         
 
    

</section>
<!-- } 게시판 읽기 끝 -->

<script>
$(function() {
    // 이미지 리사이즈
    $("#bo_v_atc").viewimageresize();

}
</script>
<!-- } 게시글 읽기 끝 -->

</div>
<!-- } 콘텐츠 끝 -->



