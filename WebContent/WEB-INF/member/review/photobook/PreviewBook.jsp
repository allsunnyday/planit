<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<!--**********************************************************
포토북 디자인을 고르는 페이지   
************************************************************** -->
<style>
.footer {display:none;bottom:0; width:100%;}
body{background: #fff}
.reviewdesign{margin-bottom: 120px;}
.grid {
	background: silver;
	-webkit-column-count: 1;
	-webkit-column-gap: 10px;
	-webkit-column-fill: auto;
	-moz-column-count: 1;
	-moz-column-gap: 10px;
	-moz-column-fill: auto;
	column-count: 1;
	column-gap: 15px;
	column-fill: auto;
}

.grid-item {
	display: inline-block;
	background: #F8F8F8;
	margin: 0 0 10px;
	padding: 15px;
	padding-bottom: 5px;
	-webkit-column-break-inside: avoid;
	-moz-column-break-inside: avoid;
	column-break-inside: avoid;
}

hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid #ccc;
	margin: .5em 10px;
	padding: 0;
}

img {
	width: 100%
}

p {
	margin: 10px;
	font-size: .8em;
	font-family: arial;
	line-height: 1.5em;
}

@media ( min-width : 450px) {
	.grid {
		-webkit-column-count: 2;
		-moz-column-count: 2;
		column-count: 2;
	}
}

@media ( min-width : 650px) {
	.grid {
		-webkit-column-count: 3;
		-moz-column-count: 3;
		column-count: 3;
	}
}

@media ( min-width : 960px) {
	.grid {
		-webkit-column-count: 4;
		-moz-column-count: 4;
		column-count: 4;
	}
}


</style>


<div style="padding-top: 60px"></div>
<section class="section1">
	<div class="container clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix reviewdesign">
			<h3>포토북만들기 3 step</h3>

			<!-- <div class="f1-steps text-center">
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
				<div class="f1-step activated">
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
			</div> -->
			
			
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="widget" data-effect="slide-left">
					<h3 class="title">어떻게 편집하나요?</h3>
					<p>현재는 자동으로 사진을 정렬한 결과만 볼 수 있음</p>
					<p>앞으로 다이브태그를 클릭하면 사용자가 이미지를 다시 선택할 수 있도록 변경할 예정임</p>

				</div>
				<!-- end widget -->
			</div>
			<!-- large-6 -->

			<div class="col-lg-5 col-md-5 col-sm-12">
				<div class="widget" data-effect="slide-bottom">
					<h3 class="title">
						<i class="fa fa-laptop"></i> 더 많은 디자인을 원하나요?
					</h3>
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
					<h3 class="title">
						<i class="fa fa-cogs"></i> 포토북 만들기
					</h3>
					<!-- <a class="button small" href="#">내보내기</a> -->
					<button id="downpdf">내보내기</button>
				</div>
				<!-- end widget -->
			</div>
			<!-- large-6 -->
		</div>
	</div>
</section>

<style>
/* .footer { display:none; bottom:0; width:100%;}
section{margin-bottom: 120px;} */
.preview-wrapper {
	/* margin: 24px 0 0 105px;
		height: 480px; */
	padding-left: 5px;
}

.preview-item {
	/* float: left; */
	/* margin-left: 14px;
		margin-bottom: 14px; */
	/* margin: 0; */
	width: 750px;
	height: 760px;
	background-color: #fff;
	border: 1px pink dotted;
	display: inline-block;
}

.preview-item-text {
	display: inline-block;
	width: 730px;
	height: 760px;
	background-color: #fff;
	border: 1px pink dotted;
}

div{
overflow: hidden;
}
</style>


<section class="section1">
	
	<div class="container-photobook ">
      <div class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-lg-10 col-md-10 col-sm-10 ">
         <div class="preview-wrapper">
            
            <!-- 포토북 페이지 디자인1  -->
            <c:forEach var="item" items="${listMap}" varStatus="loop">

               <!-- 디자인 1 - 텍스트  -->
               <div class="preview-item-text" id="text_${loop.index}" style="background: url(<c:url value='/Upload/Review/${item.SAMPLEIMAGE}'/> ) no-repeat;background-size: 100% 100%" >
                  <div class="col-xs-12">
                     <div class="col-xs-12 text-center" style="margin-top: 90px">
                        <h2>${item.TITLE}</h2>
                        <h2>
                           <small>${item.ADDR1}</small>
                        </h2>
                        <!-- 관광지에 관한 이미지. 다른 사이트에 있는 이미지는 저장되지 않는다.  -->
                       <%--  <img alt="이미지" src="${item.FIRSTIMAGE}"
                           style="width: 200px; height: 180px"> --%>
                     </div>
                     <br>
                     <div class="col-sm-offset-2 col-sm-8" style="background-color: #fff; padding: 30px">${item.CONTENT}</div>

                  </div>
               </div>
               <c:if test="${not empty item.IMAGE }">
                  <!-- 디자인 1 - 이미지  -->
                  <div class="preview-item" id="image_${loop.index}" style="background: url(<c:url value='/Upload/Review/${item.SAMPLEIMAGE}'/> ) no-repeat;background-size: 100% 100%">
                     <%-- <img alt="" src="<c:url value='/Upload/Review/${item.SAMPLEIMAGE}'/> "> --%>
                     <div class="col-xs-12">${item.IMAGE}</div>
                  </div>
               </c:if>
            </c:forEach>
               <img alt="" src="">
            </div>
         </div>
         <form name="imgForm" id="imgForm">
         </form>
            <div>

      </div>
   </div>
	
</section>

<script>
	
	var size = ${listSize};
	console.log('size' + size);
	$(function() {
		/// 
		var src = $('.preview-item div div img:last').attr('src')
		console.log(src);
		//var contentCount = 
		//console.log('length'+contentCount.length);

		sethiddenvalue();
		
		$('#downpdf').click(function() {
			console.log('clicked button');
			downloadPdf();
			
		});

	});

	var sethiddenvalue=function(){
		var i=0;
		for (i=0; i<size; i++){
			console.log('create input tag]'+i);
			var html = '<input type="hidden" name="imgdata'+i+'" id="imgdata'+i+'"/>'
					+'<input type="hidden" name="imgtextdata'+i+'" id="imgtextdata'+i+'"/>';
			$('#imgForm').append(html);
			makeimagedata(i);
			makeimagedataforroute(i);
		}
		
		
	};
	
	function makeimagedata(index){
		console.log(index+'시작');
		html2canvas($('#image_'+index), {
			useCORS: true,
			onrendered : function(canvas) {
				
				if (typeof FlashCanvas != "undefined") {
					FlashCanvas.initElement(canvas);
				}
				var image = canvas.toDataURL("image/png");

				 $("#imgdata"+index).val(image);
				 console.log(image);
				 console.log('inside 중간값 ]'+index);
				 
			}
		});
		console.log(index+'끝');
	}
	
	
	function makeimagedataforroute(index){
		console.log(index+'시작[text]');
		html2canvas($('#text_'+index), {
			useCORS: true,
			onrendered : function(canvas) {
				
				if (typeof FlashCanvas != "undefined") {
					FlashCanvas.initElement(canvas);
				}
				var image = canvas.toDataURL("image/png");

				 $("#imgtextdata"+index).val(image);
				 console.log(image);
				 console.log('inside 중간값 ]'+index);
				 
			}
		});
		console.log(index+'끝[text]');
	}
	
	var downloadPdf = function() {
		var frm = new FormData();
		var index=0;
		for(var j=0; j<size;j++){
			console.log('넣을 데이터:'+$('#imgdata'+j).val());
			var name= 'imgdata'+index++;
			var textname = 'imgdata'+index++;
			var data=$('#imgdata'+j).val();
			var textdata=$("#imgtextdata"+j).val();
			frm.append( name , data);
			frm.append(textname, textdata);
		}
		frm.append('total', index);
		
		$.ajax({
            type: "post",
            /* data : $("form").serialize(), */
            data : frm, 
            url:'<c:url value="/planit/photobook/downloadByAjax.it"/>',
            error: function(request, error, status){        
                console.log(request,error,status);
            	alert("fail!!");
                
            },
            processData: false,
            contentType: false,
            success: function (data) {
                try{
                    console.log(data);
                    location.replace(' <c:url value="/planit/photobook/makeDownload.it?filename='+data+'"/>');
                }catch(e){                
                    alert('server Error!!');
                }
            }
        });

	};
</script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>