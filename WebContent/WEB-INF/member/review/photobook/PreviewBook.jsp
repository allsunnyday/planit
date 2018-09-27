<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--**********************************************************
포토북 디자인을 고르는 페이지   
************************************************************** -->
<div style="padding-top: 60px"></div>
<section class="section1">
	<div class="container clearfix">
	    <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

		<h3>포토북만들기 3 step</h3>

		<div class="f1-steps text-center">
			<div class="f1-progress">
				<div class="f1-progress-line" data-now-value="16.66"
					data-number-of-steps="3" style="width: 16.66%;"></div>
			</div>
			<div class="f1-step activated">
				<div class="services_lists_boxes_icon_none text-center">
					<i class="fa fa-book fa-2x"></i>
				</div>
				<h4>디자인 고르기</h4>
			</div>
			<div class="f1-step active">
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

<style>
	.preview-wrapper{
		/* margin: 24px 0 0 105px;
		height: 480px; */
		padding-left: 5px;
	}
	
	 .preview-item{
		/* float: left; */
		/* margin-left: 14px;
		margin-bottom: 14px; */
		margin:0;
		width: 750px;
		height: 760px;
		background-color: #fff;
		border: 1px pink dotted;
		display: inline-block; 
	}
	
	.preview-item-text{
		display: inline-block;
		width: 730px;
		height: 760px; 
		background-color: #fff;
		border: 1px pink dotted;
	}
</style>
<section class="section1">
	<div class="container clearfix">
	    <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
			 <div class="col-lg-4 col-md-4 col-sm-12">
		          <div class="widget" data-effect="slide-left">
		            <h3 class="title">어떻게 편집하나요?</h3>
		            <p>현재는 자동으로 사진을  정렬한 결과만 볼 수 있음</p>
		            <p>앞으로 다이브태그를 클릭하면 사용자가 이미지를 다시 선택할 수 있도록 변경할 예정임</p>
		            
		          </div>
		          <!-- end widget -->
		        </div>
		        <!-- large-6 -->
		
		        <div class="col-lg-5 col-md-5 col-sm-12">
		          <div class="widget" data-effect="slide-bottom">
		            <h3 class="title"><i class="fa fa-laptop"></i> 더 많은 디자인을 원하나요?</h3>
		            <ul class="check">
		              <li><a href="#">프리미엄 아이템을 구매하면 더 많은 디자인을 이용할 수 있습니다!</a></li>
		              <li>지금바로 구매하기<a href="#">click here</a></li>
		            </ul>
		          </div>
		          <!-- end widget -->
		        </div>
		        <!-- large-6 -->
		
		        <div class="col-lg-3 col-md-3 col-sm-12">
		          <div class="widget" data-effect="slide-right">
		            <h3 class="title"><i class="fa fa-cogs"></i> 포토북 만들기</h3>
		              <a class="button small" href="#">내보내기</a>
		          </div>
		          <!-- end widget -->
		        </div>
		        <!-- large-6 -->
					
		</div>
	</div>
</section>

<section >
	<div class="container-photobook clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="divider"></div>
			<div class="preview-wrapper">
				
				<!-- 포토북 페이지 디자인1  -->
				<!-- 디자인 1 - 이미지  -->
				<div class="preview-item" >
					<div class="col-xs-12">
						<div class="col-xs-10 col-xs-offset-1" style="background-color: pink; margin-top: 30px;height: 200px "></div>
						<div class="col-xs-5 col-xs-offset-1" style="background-color: pink; margin-top: 10px;height: 230px"></div>
						<div class="col-xs-5 " style="width:40%;background-color: pink; margin-top: 10px; margin-left:10px; height:  230px"></div>
						<div class="col-xs-10 col-xs-offset-1" style="background-color: pink; margin-top: 10px;height: 200px "></div>
						<div class="col-xs-12 text-center"><h2>한강 대교 </h2></div>
					</div>
				</div>
				<!-- 디자인 1 - 텍스트  -->
				<div class="preview-item-text" >
				</div>
				
				
				<!-- 포토북 페이지 디자인2  -->
				<div class="preview-item">
					<!-- 디자인 2 - 이미지  -->
					<div class="col-xs-12" style="padding: 0;">
						<div class="col-xs-5" style="background-color: pink;height: 200px; margin: 0; "></div>
						<div class="col-xs-5 col-xs-offset-1"  style="background-color: #fff;  ">
							<h2 class="title">서울, 구석구석</h2>
							<p>sdjkhfs djhfskfha sdfjhkalsdkj fsjdhfakdhlakfjhs fjhsdfk s'
							dfhskjhask fdjhfskhfskhfakjsh dhjks d jshkf asjd fas fsjkfha;
							sdhksjdhf sjdf sjdhf kajhdskjfh asjdhfskjhfkjs djdfja;skdh'
							djhfskjhdfskjd jdhfadk</p>
						</div>
						<div class="col-xs-offset-4 col-xs-5" style="width:60%;background-color: pink; height:  280px"></div>
						<div class="col-xs-4 col-xs-offset-1" style="background-color: pink; margin-top: 10px;height: 180px "></div>
						<div class="col-xs-4 col-xs-offset-1" style="background-color: white; margin-top: 10px;height: 180px ">
							<h5>halo</h5>
							<p>djhfsk dsjhfskhf jdhfksjhfkdjhfskjhfskfjhksdjhfskdhjfks
							djfhskdjfhskjdhf skdjfhskjdhfdjhf djhfsk hfdskhfksjhfdksdhf'djfhs
							dkfsjkhdf sjd fsjdhfkshdfkjdhfskhfskjdhfskdjhfk</p>
						</div>
					</div>
				</div>
				<!-- 디자인 2 - 텍스트  -->
				<div class="preview-item-text" >
				</div>
				
				
				<!-- 포토북 페이지 디자인3  -->
				<div class="preview-item" >
					<!-- 디자인 3 - 이미지  -->
					<div class="col-xs-12">
						<div class="col-xs-5 col-xs-offset-1" style="background-color: pink; margin-top: 100px;height: 275px "></div>
						<div class="col-xs-5 " style="background-color: skyblue;margin-top: 100px;height: 275px"></div>
						<div class="col-xs-5 col-xs-offset-1" style="background-color: skyblue; height:  275px"></div>
						<div class="col-xs-5" style="background-color: pink; height: 275px "></div>
					</div>
				</div>
				<!-- 디자인 3 - 텍스트  -->
				<div class="preview-item-text" >
				</div>
				
				
				<!-- 포토북 페이지 디자인4  -->
				<div class="preview-item">
					<!-- 디자인 4 - 이미지  -->
					<div class="col-xs-12" style="padding: 0;">
						<div class="col-xs-5" style="background-color: pink;height: 275px; margin: 0; "></div>
						<div class="col-xs-7 " style="background-color:skyblue; margin:0; padding-left:10px; height: 275px"></div>
						<div class="col-xs-7" style="background-color: skyblue; margin-top: 200px; height:  275px"></div>
						<div class="col-xs-5" style="background-color: pink;margin-top: 200px;  height: 275px "></div>
					</div>
				</div>
				<!-- 디자인 4 - 텍스트  -->
				<div class="preview-item-text" >
				</div>
				
				
				<!-- 포토북 페이지 디자인5  -->
				<div class="preview-item" >
					<div class="col-xs-12">
						<div class="col-xs-10 col-xs-offset-1" style="background-color: pink; margin-top: 30px;height: 200px "></div>
						<div class="col-xs-5 col-xs-offset-1" style="background-color: pink; margin-top: 10px;height: 230px"></div>
						<div class="col-xs-5 " style="width:40%;background-color: pink; margin-top: 10px; margin-left:10px; height:  230px"></div>
						<div class="col-xs-10 col-xs-offset-1" style="background-color: pink; margin-top: 10px;height: 200px "></div>
						<div class="col-xs-12 text-center"><h2>한강 대교 </h2></div>
					</div>
				</div>
				<!-- 디자인 1 - 텍스트  -->
				<div class="preview-item-text" >
				</div>
			</div>
		</div>
	</div>
</section>