<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.Partnerpage-content {
	/* margin-top: 100px; */
	/* border: 3px black solid; */
	
}

#Partnerpage {
	display: inline-block;
	/*  border: 3px black solid;  */
}

#Partner-edit {
	display: inline-block;
	/*  border: 3px black solid;  */
	float: right;
	/* padding-top: 30px; */
}

#Partner-edit-button {
	background-color: whith;
	border: 1.5px black solid;
	/*  background-color: lightgray; */
	color: black;
	align: right;
}

#Partner-First {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px black solid;
	margin-bottom: 100px;
}

#Partner-First-1, #Partner-First-2 {
	/* 	//height:15%; */
	/* border: 1px purple solid; */
	margin-top: 10px;
}

#Partner-First-1-pictur, #Partner-First-1-self {
	/* border: 1px pink solid; */
	font-size: 1.5em;
	height: 150%;
}

#Partner-user-picture img {
	/* position: absolute; top:0; left: 0;
width: 100%;
height: 100%; */
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}

#Partner-First-content img, #Partner-Second-content img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

#Partner-user-picture {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px gray solid;
}

#Partner-First-Parter-RoomStatus {
	display: inline-block;
	border-radius: 10px;
	/* 	border: 3px gray dotted; */
	background-color: darkgray;
}

#Partner-First-2-Like {
	display: inline-block;
	border-radius: 10px;
	/* 	border: 3px gray dotted; */
	background-color: rgb(109, 213, 193);
}

#Partner-First-informtable td:first-child {
	font-size: 0.8em;
	/* font-weight: bold; */
	color: darkgray;
	text-align: left;
	align: left;
}

#Partner-First-informtable td:last-child {
	font-weight: lighter;
	font-size: 0.8em;
	color: black;
	text-align: left;
	/* 	align:right; */
	align: left;
}

.Partner-First-2-zzim {
	display: inline-block;
}

#Partner-First-Roomtable td:First-child {
	font-size: 1.0em;
	font-weight: bold;
	color: white;
	text-indent: 10px;
	text-align: left;
}

#Partner-First-Roomtable td:nth-child(2n) {
	font-weight: lighter;
	font-size: 1.0em;;
	color: white;
	/* 	align:right; */
	text-indent: 10px;
}

#Partner-First-2-Like {
	/* background-color:white; */
	margin-top: 20px;
}

#Partner-Second, #Partner-Forth, #Partner-Third {
	/* margin-top: 60px; */
	padding-top: 10px;
	border-top: 2px black solid;
	margin-bottom: 130px;
}

#Partner-First-content div, #Partner-Second-content div, #Third-content div,
	#Partner-Third-content div {
	/* 	margin-top: 20px; */
	height: 170px;
}

#Partner-First-name, #Partner-Second-name, #Partner-Forth-name,
	#Partner-Third-name {
	display: inline-block;
}

.Partner-More-Button {
	display: inline-block;
	float: right;
	margin-top: -5px;
}

.Partner-More-Button button {
	color: rgb(53, 181, 157);
}
</style>
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
	
	//var review_content_id = ${reviewContent.RE_CO_ID};
	//저장 성공시 WriteReview페이지로 이동
	// var success_action = "<c:url value='/review/myreview/Write.it?planner_id="+${reviewContent.PLANNER_ID}+"&review_id="+${reviewContent.REVIEW_ID}+"'/> ";
	// 이미 이미지가 있는 경우
	//var image= '${reviewContent.IMAGE}';
	//console.log(review_content_id+":"+image);
	
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
		
		var files = e.target.files;  //filelist객체 
		console.log('files='+files);
		var filesArr = Array.prototype.slice.call(files);
		
		var index =0;
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			if(sel_files.length<5){
			sel_files.push(f);
			
			var reader = new FileReader();
			reader.onload = function(e){
				var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction('"+index+"');\" id=\"img_id_"+index+"\">"+
							"<img alt=\"\" src=\""+e.target.result+"\" data-file=\""
							+f.name+"\" class=\"selProductFile\" title=\"click to remove\" style='width:150px; height:180px; margin:0 10px 10px 0; border:1px dotted #444'></a>";
				$('.imgs_wrap').append(html);
				index++;
			};
			reader.readAsDataURL(f);
			}
			else{
				alert("사진은 최대 6장까지 등록가능합니다");
			}
		});
		$('.no-image').css('display', 'none');
		
	}
	
	
	function submitAction(){
		var formdata = new FormData();
		
		for(var i=0, len=sel_files.length; i<len; i++){
			var name="review_"+i; 
			formdata.append(name, sel_files[i]);  // 이미지을 새롭게 변경하여 저장하기 
		}
		formdata.append("image_count", sel_files.length);  //사진 개수 저장
		
		console.log("이미지 업로드 하기 전 ")
		// 이미지를 
		console.log("data"+formdata);
		/* console.log("summernote"+$('.summernote').summernote('code')); */
		
		// 사용자가 입력한 값 
		formdata.append("content", $('.summernote').summernote('code').trim());  //작성된 글 저장
		/* for (var pair of formdata.entries()) {
		    console.log(pair[0]+ ', ' + pair[1]); 
		} */
		// insert key 값
		formdata.append("re_co_id", review_content_id);
		
		// 이미 올린 이미지가 있는경우
		formdata.append("preimage", image);
		
		$.ajax({
			type:'POST',
			url: '<c:url value="/review/write/UploadReview.it"/>',
			dataType:'text',
			data: formdata,
			contentType:false,
			processData: false,  //중요!!
			/*  enctype:'multipart/form-data',  */
			 success: function(data){
				 console.log(data);
				 if(confirm('성공적으로 저장되었습니다.')){
					 location.replace(success_action);
				 }
			 },
			 error:function(data){
					/*
						서버로부터 비정상적인 응답을 받았을 때 호출되는 콜백함수
						data : 에러 메세지 
					*/
					console.log('error!'+data);
				}
		});
		
	}
	
	function deleteImageAction(index){
		console.log("index:"+index);
		sel_files.splice(index, 1);  //splice함수로 해당 이미지가 포함된 인덱스 삭제 
		var img_id = "#img_id_"+index;
		$(img_id).remove();
		if(sel_files.length==0){
			console.log('no-image');
			$('.no-image').css('display', '');
		}
		console.log(sel_files);
	}

	var deletePreImage = function(alt, index){
		//var alt = $(this).attr('id');
		var del = alt+'<*>';
		console.log(del);
		image = image.replace(del, '');
		console.log(image);
		$('#preimage'+index).remove();
	};
</script>

<!-- *******************************************
	베이지색 검색창 달린 거
************************************************ -->
<section class="post-wrapper-top" style="margin-top: 65px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="index.html">Partner Page</a></li>
				<li>${partnerRecord.p_id }</li>
			</ul>
			<h2>Partner Page Home</h2>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->
			<div class="search-bar">
				<form action="" method="get">
					<fieldset>
						<input type="image" src="img/pixel.gif" class="searchsubmit"
							alt="" /> <input type="text" class="search_text showtextback"
							name="s" id="s" value="Search..." />
					</fieldset>
				</form>
			</div>
			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
<!-- end post-wrapper-top -->
<!--*************************************
	왼쪽에 달린 프로필 사진 및 기타등등 
*****************************************  -->
<section class="section1">
	<div class="col-md-2 col-md-offset-1" style="margin-top: 25px;">
		<div>
			<div class="teammembers">
				<div class="he-wrap tpl2">
					<img src="<c:url value='/images/mypage/default-profille.jpg'/>"
						alt="프로필 사진">
					<div class="he-view"></div>
				</div>
				<!-- he wrap -->
				<div class="teammembers-meta">
					<h4>Plan:It</h4>
				</div>
				<div id="Partner-First-1-self-detail">
					<p>
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
							(주)회사이름추가하기</span>
					<div class="Partner-First-PartnerInform">

						<table id="Partner-First-informtable" style="width: 110%;">
							<tr>
								<td>사업자번호</td>
								<td>${partnerRecord.business_no }</td>
							</tr>
							<tr>
								<td>대표자</td>
								<td>${partnerRecord.name }</td>
							</tr>
							<tr>
								<td>주소</td>
								<td>${partnerRecord.address }</td>
							</tr>
							<tr>
								<td>전화</td>
								<td>${partnerRecord.tel }</td>
							</tr>



						</table>

					</div>


					<div class="teamskills">
						<div id="Partner-First-Parter-RoomStatus" style="width: 100%;">
							<table id="Partner-First-Roomtable" style="width: 100%;">
								<tr>
									<td>Total Room</td>
									<td>00</td>
								</tr>
								<tr>
									<td>Resting room</td>
									<td>00</td>
								</tr>
								<tr>
									<td>Reserved room</td>
									<td>00</td>
								</tr>
								<tr>
									<td>Star Point</td>
									<td>00</td>
								</tr>


							</table>
						</div>
					</div>

				</div>
			</div>
			<!-- end teammembers -->
		</div>
	</div>
	<!-- ************************************
	마이페이지 홈 내용
	-수정폼이동,플래너 및 리뷰 요약, 기타 등등
***************************************** -->
	<div class="container-fluid ">
		<div class="content col-md-8">
			<div class="Partnerpage-content"></div>
			<!-- end container -->
			<section class="section1">
				<div class="container clearfix">
					<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

						<form id="registerform" method="post" name="registerform" enctype="multipart/form-data"
							action="<c:url value='/planit/member/partner/RoomResistForm.it'></c:url>">
							<div class="col-lg-5 col-md-5 col-sm-12">
								<h4 class="title">
									<span>Room Picture</span>
								</h4>
								
								<div>	
									<div class="col-sm-12 input_wrap">
										<a href="javascript:" onclick="fileUploadAction();" class="dmbutton2" >사진추가</a>
										<input type="file" id="input_imgs" name="roomimages" multiple="multiple" style="display:none;"  />
									</div>
									<div class="col-sm-offset-1 col-sm-10 imgs_block">
										<!-- 이미지가 없을 시에는 아래의 no-image가 보인다.  -->
										<c:if test="${empty imageMap}">
											<div class="no-image text-center" style='width:100%; height:180px;padding-top:60px;background-color: #e6e6e6;'><h1 class="review-title">사진을 추가해주세요</h1></div>
											<!-- 사용자가 이미지를 추가할 시에는 아래 imgs_wrap 다이브 사이에 추가된다.   -->
										</c:if>
										<div class="imgs_wrap">
											<c:forEach var="imgs"  items="${imageMap}"  varStatus="loop">
												<a href="javascript:" onclick="deletePreImage('${imgs.value}', ${loop.index});" id="preimage${loop.index}" >
												<img alt="${imgs.value}" src="<c:url value='/Upload/Review/${imgs.value}'/> " class="selProductFile" title="click to remove" style='width:150px; height:180px; margin:0 10px 10px 0; border:1px dotted #444'></a>
											</c:forEach>
											<img id="img" />
										</div>
									</div>
								
								</div>

							</div>
							<!-- end login -->

							<div class="col-lg-5 col-md-5 col-sm-12">
								<h4 class="title">
									<span>Register Form</span>
								</h4>
<!-- 상품이름 -->
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="상품의 이름을 입력해주세요" name="roomtitle" id="roomtitle">

								</div>

								<!-- 상품 유형 트윈룸인지 등등 -->
								<div class="form-group">
									<label for="cardnumber">Type of Room 1<span
										class="required">*</span></label> <select class="form-control">
										<option>스탠다드</option>
										<option>디럭스</option>
										<option>스위트</option>
									</select>
								</div>
								<div class="form-group">
									<label for="cardnumber">Type of Room 2<span
										class="required">*</span></label> <select class="form-control">
										<option>싱글</option>
										<option>더블</option>
										<option>트윈</option>
										<option>트리플</option>
										<option>패밀리</option>
									</select>
								</div>
								<div class="form-group">
									<label for="cardnumber">Room Size1<span class="required">*</span></label>
									<input type="text" class="form-control"
										placeholder="평수을 입력해주세요(평수)" id="roomsize1" name="roomsize1">
								</div>
								<div class="form-group">
									<label for="cardnumber">Room Size2<span class="required">*</span></label>
									<input type="text" class="form-control"
										placeholder="평수을 입력해주세요(평방미터)" id="roomsize2" name="roomsize2">
								</div>
								<div class="form-group">
									<label for="cardnumber">Quantity<span class="required">*</span></label>
									<input type="text" class="form-control" name="roomcount"
										id="roomcount" placeholder="수량을 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">기준인원<span class="required">*</span></label>
									<input type="text" class="form-control" name="roombasecount"
										id="roombasecount" placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">최대인원<span class="required">*</span></label>
									<input type="text" class="form-control" name="roommaxcount"
										id="roommaxcount" placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">비수기 평일<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roomoffseasonminfee1" id="roomoffseasonminfee1"
										placeholder="숫자만 입력해주세요">
								</div>
								<div class=form-group>
									<label for="cardnumber">비수기 주말<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roomoffseasonminfee2" id="roomoffseasonminfee2"
										placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">성수기 평일<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roompeakseasonminfee1" id="roompeakseasonminfee1"
										placeholder="숫자만 입력해주세요">
								</div>
								<div class="form-group">
									<label for="cardnumber">성수기 주말<span class="required">*</span></label>
									<input type="text" class="form-control"
										name="roompeakseasonminfee2" id="roompeakseasonminfee2"
										placeholder="숫자만 입력해주세요">
								</div>

								<div class="form-group">
									<label for="cardnumber">Option 1<span class="required">*</span></label>
									<div>
										<input type="checkbox" value="Y" id="roombathfacility" name="roombathfacility"> 목욕시설
										<input type="checkbox" value="Y" id="roombath" name="roombath">욕조
										<input type="checkbox" value="Y" id="roomhometheater" name="roomhometheater"> 홈시어터
										<input type="checkbox" value="Y" id="roomaircondition" name="roombathfacility"> 에어컨
										<input type="checkbox" value="Y" id="roomtv" name="roomtv"> TV
										<input type="checkbox" value="Y" id="roompc" name="roompc">PC
										<input type="checkbox" value="Y" id="roomcable" name="roomcable"> 케이블
									</div>
								</div>
								<div class="form-group">
									<label for="cardnumber">Option 2<span class="required">*</span></label>
									<div >
										<input type="checkbox" value="Y" id="roominternet" name="roominternet"> 인터넷
										<input type="checkbox" value="Y" id="roomrefrigerator" name="roomrefrigerator"> 냉장고
										<input type="checkbox" value="Y" id="roomtoiletries" name="roomtoiletries"> 세면도구
										<input type="checkbox" value="Y" id="roomsofa" name="roomsofa"> 소파
										<input type="checkbox" value="Y" id="roomcook" name="roomcook">취사용춤
										<input type="checkbox" value="Y" id="roomtable" name="roomtable"> 테이블
										<input type="checkbox" value="Y" id="roomhairdryer" name="roomhairdryer"> 드라이기
									</div>
								</div>
								<div class="form-group">
									<label for="cardnumber">RoomIntro<span class="required">*</span></label>
									<!-- 룸 소개 -->
									<textarea class="form-control" id="roomintro" name="roomintro" placeholder="객실소개를 입력해주세요">
									</textarea>
									</div>
								<div class="form-group">
									<input type="submit" class="button btn-block" value="등록"/>
								</div>
								</div>
						</form>
					</div>
				</div>
				<!-- end register -->
			</section>
		</div>
		<!-- end content -->
	</div>

</section>
<!-- end section -->
