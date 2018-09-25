<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.review-left {
	position: absolute;
	background-image: url(<c:url value = '/images/main/slide1.jpg'/>);
	z-index: -1;
	width: 100%;
	height: 466px;
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
}

.edit-ul {
	list-style: none;
}

textarea.textarea_inp {
	overflow-y: hidden;
	margin-top: 20%;
	background-color: transparent;
	color: #fff;
	font-family: Nanum Myeongjo;
	font-size: 44px;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, .4);
	text-align: center;
	line-height: 1.3;
	letter-spacing: 1px;
	border: none;
	text-decoration: none;
}

.ico_cover{
	margin-top: 20%;
	display: inline-block;
    background: url(<c:url value='/images/review/img_cover.png'/>) no-repeat;
    background-size: 40px auto;
    background-position: 50%;
    width: 40px;
    height: 36px;
    color: #fff;
}

.edit-ul{
	margin-top: 10%;
}

.edit-ul li{
	margin-bottom: 15px;
}

.route{
	padding: 10px;
}

.route-img-div{
	background-image: url(<c:url value='/images/main/slide2.jpg'/>);
	padding: 10px;
}

.tag_wrap{
	margin: 37px;
	width:100%;
	
}

.tag_box{
	margin: 0 auto;
	padding:32px 0;
	border-top:  1px solid #cecece;
	
}

.tag_title{
    float: left;
    width: 198px;
    font-family: Noto Sans KR;
    font-size: 18px;
    font-weight: 700;
    line-height: 34px;
    color: #5f5f5f;
    
}

.tag_list_box{
	float: left;
    width: auto;
    margin-top: -1px;
}

ul{
	list-style: none;
}

.tag_list {
    position: relative;
    margin: -20px;
}

.tag_input {
    float: left;
    padding: 0;
}
.tag_input .edit_textcont {
    height: 30px;
    margin: 20px 3px 3px;
}

.tag_input .edit_textcont input {
    width: 330px;
    height: 34px;
    color: #5f5f5f;
    border: none;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}


.div_help_btn{
	text-align: right;
	padding: 5px 20%;
}

.content_img{
	float: left;
	padding:20px;
	
}

.content_text{
	float:left;
	
	margin-top: 2%;
}

.content_box{
	padding: 10px 15%;
	
	overflow: hidden;
}

/*  */
.jpreview-image {
	width                   : 100px;
	height                  : 100px;
	margin: 10px;
	position                : relative;
	float                   : left;
	background-repeat       : no-repeat;
	background-position     : center center;
	-webkit-background-size : cover;
	-moz-background-size    : cover;
	-o-background-size      : cover;
	background-size         : cover;
}
.jpreview-container::after {
	content: ".";
    visibility: hidden;
    display: block; 
    clear: both;
}

.jpreview-image img {
	max-width: 100%;
	max-height: 100%
}
.jpreview-remove-btn {
	position: absolute;
	right: 5px;
	top: 5px;
	background-color: red;
	width: 10px;
	height: 10px;
}
</style>

<div class="freature-content">
	<div class="review-left"></div>
	<!-- 버튼 부분 -->
	<div class="row" style="padding-top: 60px;">
		
		<div class="row">
			<div class="" style="float: right; padding: 5px 20px">
				<button class="btn btn-link-3">나가기</button>
				<button class="btn btn-link-3">저장하기</button>
			</div>
		</div>
	</div>
	<!-- 버튼 부분 -->
	<!-- 제목 및 이미지 선택 -->
	<div class="row">
		<div class="col-sm-2">
			<ul class="edit-ul">
				<li><button class="btn">배경</button>	</li>
				<li><button class="btn">공유</button></li>
				<li><button class="btn">배경</button></li>
			</ul>
		</div>
		<div class="col-sm-8 ">
			<div style="">
				<textarea class="textarea_inp" rows="1" cols="30" placeholder="여행기 제목을 입력해주세요"></textarea>
			</div>
			<!-- 하얀색 줄  -->
			<div style="background-color: white; width:80%; height: 2px; margin-left: 10%;margin-right: 10%"></div>
		</div>
		<div>
		</div>
	</div>
</div>
<div style="margin-top: 50px"></div>

<div class="freature-content">
	<div class="row" style="background-color: white;">
		<div class=" col-sm-8 col-sm-offset-2">
			<!-- 설정한 코스를 뿌려주는 곳  -->
			<div class="row" style="padding: 10px;">
				<!-- 이미지 -->
				<div class="col-sm-4">
					<img alt="" src="<c:url value='/images/main/slide2.jpg'/> ">
					<div>
						소요시간 : 1시간
					</div>
				</div>
				<!-- 글씨 -->
				<div style="text-align: left;">
					<h4>대관령 목장</h4>
					<hr/>
					<p>
						위치:강원도 평창군 대관령면 꽃밭양지길 458-23
					</p>
				</div>
			</div>
			<div style="clear:both;"></div>
			<!-- summernote부분 -->
			<!-- <div class="row">
				<div id="summernote"><p>Hello Summernote</p></div>
			</div> -->
			
				
				<div class="row">
						<!-- <div class="content_img">
						</div> -->
						<!-- <div class="content_text">
							<textarea rows="5" cols="90" placeholder="글을 입력하세요 " style="border:none;"></textarea>
						</div> -->
						
						<div calss="summernote"></div>
				</div>	
				
			</div>
		</div>
	</div>
	<!-- editer -->
	<div>
		
	</div>
	<!-- 컨텐트 -->
	<div class="freature-content">
	<div class="row" style="background-color: white;">
		<div class=" col-sm-8 col-sm-offset-2">
			<!-- 설정한 코스를 뿌려주는 곳  -->
			<div class="row" style="padding: 10px;">
				<!-- 이미지 -->
				<div class="col-sm-4">
					<img alt="" src="<c:url value='/images/main/slide2.jpg'/> ">
					<div>
						소요시간 : 1시간
					</div>
				</div>
				<!-- 글씨 -->
				<div style="text-align: left;">
					<h4>대관령 목장</h4>
					<hr/>
					<p>
						위치:강원도 평창군 대관령면 꽃밭양지길 458-23
					</p>
				</div>
			</div>
			<div style="clear:both;"></div>
			<!-- summernote부분 -->
			<!-- <div class="row">
				<div id="summernote"><p>Hello Summernote</p></div>
			</div> -->
			
			
			<div class="row">
					<!-- <div class="content_img">
					</div> -->
					<!-- <div class="content_text">
						<textarea rows="5" cols="90" placeholder="글을 입력하세요 " style="border:none;"></textarea>
					</div> -->
					
					<div calss="summernote"></div>
			
		</div>
	</div>
	
	
	
<!-- 태그  -->
	<div class="tag_wrap" >
		<div class="tag_box">
			<div class="tag_title">#태그 (최대5개)</div>
			<div class="tag_list_box">
				<ul class="tag_list">
					<li>
						<div class="tag_input">
							<div class="edit_textcont">
								<input type="text" placeholder="태그명을 입력하고 스페이스바를 누르세요 ">
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>	
	</div>
	
	
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
</div>

<script>
    $(document).ready(function() {
        $('.summernote').summernote({
        	height: 100,
        	toolbar: false
        });
    });
    
</script>
