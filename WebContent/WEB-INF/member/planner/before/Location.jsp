<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
button.btn {
	height: 52px;
    margin: 0;
    padding: 0 20px;
    vertical-align: middle;
    background: #8ec1cd;
    border: 0;
    font-family: 'Lato', sans-serif;
    font-size: 22px;
    font-weight: 400;
    line-height: 52px;
    color: #fff;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    text-shadow: none;
    -moz-box-shadow: none;
    -webkit-box-shadow: none;
    box-shadow: none;
    -o-transition: all .3s;
    -moz-transition: all .3s;
    -webkit-transition: all .3s;
    -ms-transition: all .3s;
    transition: all .3s;
</style>

<div class="container">
    <div class="row">
        <div class="col-sm-12 portfolio section-description wow fadeIn">
        	<h2> 여행지 선택 </h2>
            <div class="divider-1 wow fadeInUp"><span></span></div>	           
        </div>
    </div>
    <div class="row">
		<div class="col-sm-12 portfolio-masonry">
			<div class="col-sm-2 portfolio-box">
				<img src="/Planit/images/par01.jpg" alt="경기도" data-at2x="/Planit/images/par01.jpg">
				<div class="portfolio-box-text-container">
					<div class="portfolio-box-text">
						<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01"> 경기도 </a></p>
					</div>
				</div>
			</div>
		<div class="col-sm-2 portfolio-box">
			<img src="/Planit/images/par01.jpg" alt="충청북도" data-at2x="/Planit/images/par02.jpg">
				<div class="portfolio-box-text-container">
					<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">충청북도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="" data-at2x="/Planit/images/par03.jpg">
         		<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">충청남도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="강원도" data-at2x="/Planit/images/par04.jpg">
         		<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">강원도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="전라북도" data-at2x="/Planit/images/par05.jpg">
         		<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">전라북도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="전라남도" data-at2x="/Planit/images/par06.jpg">
        	 	<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">전라남도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="경상북도" data-at2x="/Planit/images/par07.jpg">
        	 	<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">경상북도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="경상남도" data-at2x="/Planit/images/par08.jpg">
        	 	<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">경상남도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="제주도" data-at2x="/Planit/images/par09.jpg">
         		<div class="portfolio-box-text-container">
        	 		<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">제주도</a></p>
         			</div>
         		</div>
         	</div>
		<div class="col-sm-2 portfolio-box">
         	<img src="/Planit/images/par01.jpg" alt="" data-at2x="/Planit/images/par10.jpg">
        	 	<div class="portfolio-box-text-container">
         			<div class="portfolio-box-text">
         				<p><a href="#" data-toggle="modal" data-target="#modalpardo01" data-modal-id="modalpardo01">서울특별시</a></p>
         			</div>
         		</div>
         	</div>	         
		</div>
    </div>    
	<div class="row">
		<div class="col-sm-12 contact-form wow fadeInLeft">
			<form role="form" action="#" method="get">
				<button type="submit" class="btn"> 다  음 </button>
			</form>
		</div>
	</div>
</div>	
<!-- container -->


<!-- MODAL -->
<!-- Large modal -->
<div id="modalpardo01" class="modal fade modal-center" tabindex="-1" role="dialog" aria-labelledby="dlogLabel" aria-hidden="true"
	>
  <div class="modal-dialog modal-center" >
		<div class="modal-content modal-center">
			<!-- 모달 헤더 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h3 class="modal-title" id="modal-login-label">City</h3>
				<p>추억을 남길 도시를 선택하세요</p>
			</div>
			<!-- 모달 바디 -->
			<div class="modal-body text-center">
				<form action="<c:url value='/planner/plan/route.it' />" method="post" class="" >
					<div class="row text-center" style="margin: 0 auto;">
						<div class="dropdown text-left col-md-3" >
							<a id="pardocity" data-toggle="dropdown" aria-haspopup="true" class="btn btn-default dropdown-toggle"
								aria-expanded="false"> 도시 선택 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="pardocity">
								<li><a href="#">평택</a></li>
								<li><a href="#">수원</a></li>
								<li><a href="#">안산</a></li>
							</ul>
						</div>
						<div class="col-md-5" style="width: 250px;">				
						<!-- <label class="sr-only" for="form-text"> 여행 도시 입력 </label> -->
		               	<input type="text" name="paldotext" style="font-size: 14px; margin: 0 auto;" 
		               		placeholder="여행 도시를 직접 입력해주세요" class="form-control" id="paldotext">
		               	</div>
	               	</div>
	               	<div class="row text-center" style="margin: 20px auto;">
						<div class="dropdown text-left col-md-3" >
							<a id="planday" data-toggle="dropdown" aria-haspopup="true" class="btn btn-default dropdown-toggle"
								aria-expanded="false"> 여행 일 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="planday">
								<li><a href="#">1일</a></li>
								<li><a href="#">2일</a></li>
								<li><a href="#">3일</a></li>
								<li><a href="#">4일</a></li>
								<li><a href="#">5일</a></li>
								<li><a href="#">6일</a></li>
								<li><a href="#">7일</a></li>
								<li><a href="#">8일이상</a></li>
							</ul>
						</div>
						<div class="col-md-5" style="width: 250px;">				
							<!-- <label class="sr-only" for="form-text"> 여행 도시 입력 </label> -->
			               	<input type="text" name="paldotext" style="font-size: 14px;" 
			               		placeholder="여행 일수를 입력해주세요" class="form-control" id="paldotext">               		
		               	</div>
	               	</div>	
	               	<div class="row text-center" style="text-align: center;">
	               		<div class="col-md-12" >
	               			<button type="submit" class="btn" style="font-size: 14px; width: auto" >다음 화면으로..</button>
               			</div>
               		</div>
               	</form>
			</div>
		</div>
	</div>
</div>

