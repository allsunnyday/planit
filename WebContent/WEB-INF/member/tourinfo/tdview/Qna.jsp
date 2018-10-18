<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/default.css?ver=171222">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/animate.min.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/owl.carousel.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/main.css">
<script src="https://365ok.co.kr/theme/ok/js/jquery-2.2.4.min.js"></script>
	
  <section class="section1">
    <div class="container clearfix" >
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
      
      <section class="sub-area relative" id="home" >
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center" >
						<div class="about-content col-lg-11" >
							<h1 class="text-white" >Q&A</h1>
						</div>
					</div>
				</div>
			</section>
			<!-- End sub title -->
      
      
<!--************************************** 
 	FAQ / 1:1문의 / ?    세개 이미지버튼
 **************************************-->
 <div style="padding-top:60px">
        <div class="col-lg-6 col-md-6 col-sm-12">
          <div class="dmbox" style="height:261px">
            <div class="service-icon" >
              <div class="dm-icon-effect-1" data-effect="slide-bottom" >
                <a class="" href="#target"><i class="dm-icon fa fa-question fa-3x" ></i></a>
              </div>
            </div>
            <h4>FAQ</h4>
            <p>ㄱㅏ장많이 물어보는 질문</p>
          </div>
        </div>
        <!-- end dmbox -->




        <div class="col-lg-6 col-md-6 col-sm-12">
          <div class="dmbox">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" class="btn btn-default" data-toggle="modal" href="#normalModal"><i class="dm-icon fa fa-envelope-o fa-3x"></i></a>
              </div>
            </div>
<!-- **************************************** 
			모달창
**************************************** -->  
			<h4>1:1 문의</h4>
	            <p>물어보세요</p>
	                   
            <div id="normalModal" class="modal fade">
             
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			     
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title">v질문v</h4>
			      </div>
			      <form method="post" action="<c:url value='/planit/search/tourinfo/askQna.it'/>">
			      	<input type="hidden" name="id" value="${id}"><!-- session id -->
				      <div class="modal-body">
					      <textarea name="title" id=title cols="100" rows="2" placeholder="제목을 입력하세요"></textarea>
					      <textarea name="content" id=content cols="100" rows="10" placeholder="내용을 입력하세요"></textarea>
				      </div>
			      
			      
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" disabled="disabled" data-dismiss="modal">보내는 날짜 : 2018-10-18</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			        <button type="submit" class="btn btn-primary">전송</button>
			 	</div>
			 </form>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
			
			</div>
<!-- **************************************** 
				모달창 끝
**************************************** -->
        </div>
        <!-- end dmbox -->

<!--         <div class="col-lg-4 col-md-4 col-sm-12"> -->
<!--           <div class="dmbox" style="height:261px"> -->
<!--             <div class="service-icon"> -->
<!--               <div class="dm-icon-effect-1" data-effect="slide-bottom"> -->
<!--                 <a class="" href="#"><i class="dm-icon fa fa-plane fa-3x"></i></a> -->
<!--               </div> -->
<!--             </div> -->
<!--             <a><h4>재밌는 여행을 위해</h4> -->
<!--             <p>신속한 답변을 드리겠습니다</p></a> -->
<!--           </div> -->
<!--         </div> -->
<!--         end dmbox -->

        <div class="clearfix"></div>
        <div class="divider"></div>


<!--************************************** 
 	FAQ 아코디언으로 
 **************************************-->
 
	<nav id="target"class="accordion arrows">
	
		<header  class="box">
			<label for="acc-close" class="box-title">F A Q</label>
		</header>
		<c:forEach var="record" items="${faq}" varStatus="loop">
			<input type="radio" name="accordion" id="cb${loop.index}" />
			<section class="box">
				<label class="box-title" for="cb${loop.index}">${record.title}</label>
				<label class="box-close" for="acc-close"></label>
				<div class="box-content">${record.content}
				</div>
			</section>
		</c:forEach>
		<input type="radio" name="accordion" id="acc-close" /> 

	</nav>
			
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
    <script src="https://code.jquery.com/jquery-latest.js"></script> 
 
  <div class="dmtop">Scroll to Top</div>

<style>
/****************************************
아코디언 css
**************************************/
.accordion {
	margin: auto;
	width: 900px;
}
.accordion input {
	display: none;
}
.box {
	position: relative;
	background: white;
    height: 64px;
    transition: all .15s ease-in-out;
}
.box::before {
    content: '';
    position: absolute;
    display: block;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    pointer-events: none;
    box-shadow: 0 -1px 0 #e5e5e5,0 0 2px rgba(0,0,0,.12),0 2px 4px rgba(0,0,0,.24);
}
header.box {
	background: #00BCD4;
	z-index: 100;
	cursor: initial;
	box-shadow: 0 -1px 0 #e5e5e5,0 0 2px -2px rgba(0,0,0,.12),0 2px 4px -4px rgba(0,0,0,.24);
}
header .box-title {
	margin: 0;
	font-weight: normal;
	
	font-size: 16pt;
	color: white;
	cursor: initial;
}
.box-title {
	width: calc(100% - 40px);
	height: 64px;
	line-height: 64px;
	padding: 0 20px;
	display: inline-block;
	cursor: pointer;
	-webkit-touch-callout: none;-webkit-user-select: none;-khtml-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;
}
.box-content {
	width: calc(100% - 40px);
	padding: 30px 20px;
	font-size: 11pt;
	color: rgba(0,0,0,.54);
	display: none;
}
.box-close {
	position: absolute;
	height: 64px;
	width: 100%;
	top: 0;
	left: 0;
	cursor: pointer;
	display: none;
}
input:checked + .box {
	height: auto;
	margin: 16px 0;
    box-shadow: 0 0 6px rgba(0,0,0,.16),0 6px 12px rgba(0,0,0,.32);
}
input:checked + .box .box-title {
	border-bottom: 1px solid rgba(0,0,0,.18);
}
input:checked + .box .box-content,
input:checked + .box .box-close {
	display: inline-block;
}
.arrows section .box-title {
	padding-left: 44px;
	width: calc(100% - 64px);
}
.arrows section .box-title:before {
	position: absolute;
	display: block;
	content: '\203a';
	font-size: 18pt;
	left: 20px;
	top: -2px;
	transition: transform .15s ease-in-out;
	color: rgba(0,0,0,.54);
}
input:checked + section.box .box-title:before {
	transform: rotate(90deg);
}

/****************************************
모달창 css
**************************************/
.modal.modal-wide .modal-dialog {
  width: 90%;
}
.modal-wide .modal-body {
  overflow-y: auto;
}

/* body { text-align: center; } */
body p { 
  max-width: 400px; 
  margin: 20px auto; 
}
#tallModal .modal-body p { margin-bottom: 900px }
</style>

<script>
//**************************************
//  모달창 스크립트
//**************************************
$(".modal-wide").on("show.bs.modal", function() {
  var height = $(window).height() - 200;
  $(this).find(".modal-body").css("max-height", height);
});





</script>