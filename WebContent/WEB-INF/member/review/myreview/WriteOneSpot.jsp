<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<style>
	#imgs_wrap img{
		width: 120px;
		height:130px;
	}
	
	.input_wrap{
		padding-top: 10px;
		text-align: right;
	}
	
	.imgs_block{
		color:#fff;
	}
	
	.text_block{
		margin-top: 10px;
		
	}
	
	.text-wrap{
		padding: 10px;
	}
</style>
<script type="text/javascript">
	//이미지 정보를 담을 배열
	var sel_files=[];
	//현재 선택된 파일 수를 담을 배열
	var file_count=0;
	
	$(function(){
		$('#input_imgs').on("change", handleImgFileSelect);
		if(sel_files.length==0){
			console.log('no-image');
		}
		else{
			$('.no-image').css('display', 'none');
		}
	});
	
	//[사진 추가]버튼 클릭시 이벤트 처리
	function fileUploadAction(){
		console.log("fileUploadAction");
		$('#input_imgs').click();
	}
	
	function handleImgFileSelect(e){
		//이미지 정보들을 초기화
		//sel_files=[];
		//$('.imgs_wrap').empty();
		
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		var index =0;
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			
			sel_files.push(f);
			
			var reader = new FileReader();
			reader.onload = function(e){
				var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction('"+index+"');\" id=\"img_id_"+index+"\">"+
							"<img alt=\"\" src=\""+e.target.result+"\" data-file=\""+f.name+"\" class=\"selProductFile\" title=\"click to remove\" style='width:150px; height:180px; margin:0 10px 10px 0; border:1px dotted #444'></a>";
				$('.imgs_wrap').append(html);
				index++;
			};
			reader.readAsDataURL(f);
		});
		$('.no-image').css('display', 'none');
	}
	
	function submitAction(){
		var data = new FormData();
		
		for(var i=0, len=sel_files.length; i<len; i++){
			var name="image_"+i;
			data.append(name, sel_files[i]);
		}
		data.append("image_count", sel_files.length);
		
		console.log("이미지 업로드 하기 전 ")
		console.log("data"+data);
		for (var pair of data.entries()) {
		    console.log(pair[0]+ ', ' + pair[1]); 
		}
	}
	
	function deleteImageAction(index){
		console.log("index:"+index);
		sel_files.splice(index, 1);
		var img_id = "#img_id_"+index;
		$(img_id).remove();
		if(sel_files.length==0){
			console.log('no-image');
			$('.no-image').css('display', '');
		}
		console.log(sel_files);
	}

</script>

<!--**********************************************************
리뷰작성페이지 step2
하나의 일정에 대한 리뷰를 작성한다.
************************************************************** -->
<div id="nav" style="padding-top: 60px"></div>
<section id="intro"
	style="background: url( <c:url value='/images/main/slide1.jpg'/> ) center center no-repeat fixed;">
	<div class="container">
		<div class="ror">
			<div class="col-md-8 col-md-offset-2">
			<!-- review title 클릭시 변경할 수있는 모달 만들기(미 변경시 플래너와 동일한 이름)  -->
				<h1 class="review-title">사진작가의 서울 유랑기</h1>
				<p>2018.05.09 - 2018.11.15</p>
			</div>
		</div>
		<div class="col-md-2">
			<nav class="portfolio-filter clearfix">
				<ul>
					<li><a href="javascript:" onclick="submitAction();" class="dmbutton up_button" data-filter="*">저장하기</a></li>
					<li><a href="#" class="dmbutton" data-filter="*">나가기</a></li>
				</ul>
			</nav>
		</div>
	</div>
</section>
<!--*************************************************************
		본문 시작
****************************************************************  -->
<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="general-title text-center">
				<h3>1일차</h3>
				<hr>
			</div>
			<div class=" col-sm-12 first">
				<!--############일정에 관한 개요를 보여준다.   -->
				<div class="testimonial">
					<img data-effect="slide-bottom" class="alignleft img-circle"
						src="http://tong.visitkorea.or.kr/cms/resource/92/2030892_image2_1.jpg"
						alt="">
					<p>서울 반포대교에 설치된 분수인 달빛무지개분수는 반포대교 570m 구간 양측 총 1천140m에 380개 노즐을
						설치해 수중펌프로 끌어올린 한강물을 약 20m 아래 한강 수면으로 떨어뜨리는 새로운 개념의 분수이다</p>
					<div class="testimonial-meta">
						<h4>
							반포 달빛무지개<small><a href="#">자세히 보기</a></small>
						</h4>
					</div>
				</div>
				<!--일정에 관한 개요를 보여준다.############   -->
				<!--############사용자가 입력하는 공간  -->
				<div class="col-sm-12 input_wrap">
					<a href="javascript:" onclick="fileUploadAction();" class="dmbutton2" data-filter="*">사진추가</a>
					<input type="file" id="input_imgs" multiple style="display:none;"  />
				</div>
				
				<!--사용자가 입력하는 공간############이미지-->
				<div class="col-sm-offset-1 col-sm-10 imgs_block">
					<!-- 이미지가 없을 시에는 아래의 no-image가 보인다.  -->
					<div class="no-image text-center" style='width:100%; height:180px;padding-top:60px;background-color: #e6e6e6;'><h1 class="review-title">사진을 추가해주세요</h1></div>
					<!-- 사용자가 이미지를 추가할 시에는 아래 imgs_wrap 다이브 사이에 추가된다.   -->
					<div class="imgs_wrap">
						<img id="img" />
					</div>
				</div>
				<!--사용자가 입력하는 공간##########글  -->
				<div class="col-sm-offset-1 col-sm-10 text_block">
					<p>글을 클릭하시면 수정할 수 있어요!</p>
					<!-- <a href="javascript:" onclick="edit()" class="dmbutton2">수정</a> 
					<a href="javascript:" onclick="save()" class="dmbutton2">완료</a> -->
					<hr>
				</div>
				<div class="col-sm-offset-1 col-sm-10 ">
					<div class="text-wrap" >
						<div class="summernote">소중한 순간을 기록해 보세요</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>

<script>
	var edit = function() {
	  $('.summernote').summernote({
		  focus: true,
		  airMode: true,
		  placeholder: '소중한 순간을 기록해보세요!'
		 /*  popover: {
			    air: [
			      ['color', ['color']],
			      ['font', ['bold', 'underline', 'clear']]
			    ]
			  } */
		  });
	};

	var save = function() {
	  var markup = $('.summernote').summernote('code');
	  $('.summernote').summernote('destroy');
	};
	
	
	$(function(){
		
		$('.summernote').click(function(){
			var content=$('.summernote').html(); 
			console.log('content'+content);
			if(content=='소중한 순간을 기록해 보세요'){
				$('.summernote').html('');
			}
			edit();
			$('.text-wrap').css('border', '1px solid #cecece');
		});
		
		$(document).on('blur', '.summernote', function(){
			save();
			$('.text-wrap').css('border', 'none');
		});
	});
</script>
<!-- <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet"> -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
