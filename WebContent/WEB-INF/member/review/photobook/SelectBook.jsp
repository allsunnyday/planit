<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<style>
	.footer{position:absolute; bottom:0; width:100%;}
</style>
<script>
	$(function(){
		$('.sample').click(function(e){
			console.log('clicked'+$(this).attr('title'))
			$('.sample').attr('data-toggle',"modal").attr('data-target', '#changebg')// data-toggle="modal" data-target="#changebg"
			$('.modalforsample').append('<div class="modal fade" id="changebg" tabindex="-1" role="dialog">'+
					'<div class="modal-dialog" role="document">'+
					'<div class="modal-content">'+
						'<div class="modal-header">'+
							'<h5 class="modal-title" id="changbglabel">sample</h5>'+
						'</div>'+
						'<div class="modal-body">'+
				        	'<div class="input-group">'+
							  '<div class="custom-file text-center">'+
							    '<img src="'+$('img.'+$(this).attr('title')).attr('src')+'" alt ="이미지">'+
							  '</div>'+
							'</div>'+
				      	'</div>'+
				     	 '<div class="modal-footer">'+
				       	 	'<button type="button" class="dmbutton2" data-dismiss="modal">닫기</button>'+
				        	
				      	'</div>'+
					'</div>'+
				'</div>'+
			'</div>');
		});
		
	});
</script>

<!--**********************************************************
포토북 디자인을 고르는 페이지   
************************************************************** -->
<div style="padding-top: 60px"></div>
<section class="section1">
	<div class="container clearfix">
	    <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
		
			<h3>포토북만들기 3 step </h3>
			
			<div class="f1-steps text-center">
				<div class="f1-progress">
					<div class="f1-progress-line" data-now-value="16.66"
						data-number-of-steps="3" style="width: 16.66%;"></div>
				</div>
				<div class="f1-step active">
					<div class="services_lists_boxes_icon_none text-center">
						<i class="fa fa-book fa-2x"></i>
					</div>
					<h4>디자인 고르기</h4>
				</div>
				<div class="f1-step">
					<div class="services_lists_boxes_icon_none text-center">
						<i class="fa fa-film fa-2x"></i>
					</div>
					<h4>미리보기</h4>
				</div>
				<div class="f1-step">
					<div class="services_lists_boxes_icon_none text-center">
						<i class="fa fa-download fa-2x"></i>
					</div>
					<h4>내보내기</h4>
				</div>
			</div>
	</div>
</div>
</section>

<section class="section1">
    <div class="container clearfix">
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="portfolio-centered">
          <div class="recentitems portfolio">
            <div class="modalforsample"></div><!-- 모달을 동적으로 추가하기 위한 다이브 -->
            
            <!-- 포토북 아이템 1  -->
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 free">
              <div class="he-wrap tpl6 market-item">
              <!-- img의 클래스명은 book테이블에서 가져온 book의 name값을 넣어준다.   -->
                <img class="basic" src="<c:url value='/Upload/Review/basic_sample.jpg'/> " alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="a1" data-animate="fadeInDown">bagic</h3>
                    <!-- 버튼의 타이틀은 img의 클래스명과 동일하게 작성한다 (모달에서 샘플을 띄워주기 위해서)   -->
                    <button title="basic" class="dmbutton a2 sample" data-animate="bounceInLeft"><i class="fa fa-search"></i></button>
                    <a href="<c:url value='/photobook/step2/Preview.it?review_id=${param.review_id}&name=BASIC'/> " class="dmbutton a2" data-animate="bounceInRight" ><i class="fa fa-link"></i>선택하기</a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                      <a href="#">free</a>
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
            </div>
            <!-- end col-12 -->


          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
      </div>
  </section>
  <!-- end section -->

