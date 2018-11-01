<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<!-- 아이콘을 위한 css -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<style type="text/css">
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	margin: 30px auto;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-wrapper .btn {
	float: right;
	border-radius: 3px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-wrapper .btn:hover {
	color: #333;
	background: #f2f2f2;
}

.table-wrapper .btn.btn-primary {
	color: #fff;
	background: #03A9F4;
}

.table-wrapper .btn.btn-primary:hover {
	background: #03a3e7;
}

.table-title .btn {
	font-size: 13px;
	border: none;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

.table-title {
	color: #fff;
	background: #4b5366;
	padding: 16px 25px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th {
	width: 200px;}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 80px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #F44336;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.view {
	width: 30px;
	height: 30px;
	color: #2196F3;
	border: 2px solid;
	border-radius: 30px;
	text-align: center;
}

table.table td a.view i {
	font-size: 22px;
	margin: 2px 0 0 1px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.status {
	font-size: 30px;
	margin: 2px 2px 0 0;
	display: inline-block;
	vertical-align: middle;
	line-height: 10px;
}

.text-success {
	color: #10c469;
}

.text-info {
	color: #62c9e8;
}

.text-warning {
	color: #FFC107;
}

.text-danger {
	color: #ff5b5b;
}

/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}

#Partner-First-Parter-RoomStatus {
	display: inline-block;
	border-radius: 10px;
	background-color: darkgray;
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
/* footer가 꺠지는것을 방지하는 css */
.footer {position:relative; bottom:0; width:100%;}
</style>
<script>
	/* summernote를 위한 */
	$(document).ready(function() {
	  $('#summernote').summernote({
		  lang: 'ko-KR',
		  height: 100,
		  placeholder: "얼마나 멋진 이벤트인지 설명해주세요! SummerNote의 멋진 기능을 사용하면 더 멋지겠죠 ^_^",
		  focus: true,
	        callbacks: {
	          onImageUpload: function(files, editor, welEditable) {
	            for (var i = files.length - 1; i >= 0; i--) {
	              sendFile(files[i], this);
	            }
	          }
	        }
		});
	});
	
	function sendFile(file, el) {
	      var form_data = new FormData();
	      form_data.append('file', file);
	      $.ajax({
	        data: form_data,
	        type: "POST",
	        url: '<c:url value="/planit/summernote/UploadImage.it"/> ',
	        cache: false,
	        contentType: false,
	        enctype: 'multipart/form-data',
	        processData: false,
	        dataType:'text',
	        success: function(data) {
	        	var json = JSON.parse(data);
	        	console.log(json.filename);
	          $(el).summernote('editor.insertImage', "/Planit/Upload/Partner/"+json.filename);
	        },
	        error:function(request, status, error){
	        	console.log(request, status, error);
	        }
	      });
	    }

	
	
	
	$.ajax({
		  url: 'https://api.github.com/emojis',
		  async: false 
		}).then(function(data) {
		  window.emojis = Object.keys(data);
		  window.emojiUrls = data; 
		});
	
	$(".hint2emoji").summernote({
		  height: 100,
		  toolbar: false,
		  placeholder: 'type starting with : and any alphabet',
		  hint: {
		    match: /:([\-+\w]+)$/,
		    search: function (keyword, callback) {
		      callback($.grep(emojis, function (item) {
		        return item.indexOf(keyword)  === 0;
		      }));
		    },
		    template: function (item) {
		      var content = emojiUrls[item];
		      return '<img src="' + content + '" width="20" /> :' + item + ':';
		    },
		    content: function (item) {
		      var url = emojiUrls[item];
		      if (url) {
		        return $('<img />').attr('src', url).css('width', 20)[0];
		      }
		      return '';
		    }
		  }
		});
		
	/* 실시간 띄워주기용 */
    $(function() {    	
        setInterval(function() {
            $("#systime").text(new Date());
        }, 1000);
    });
    
    var submit = function() {//form 안에 정보 전송
		$('#frm').submit();
	}
    
</script>
<div class="container-fluid">
	<div class="col-md-3" style="width: 300px">
		<div style="padding-top: 50px;">
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
	</div>
<div class="col-md-9">
	<div class="container-fluid" style="padding-top: 50px">
		<div class="table-wrapper">
		<div class="table-title">
			<div class="row">
				<div class="col-sm-4">
					<h2>이미 요청된 이벤트를 개선해주세요~</h2>
				</div>
				<div class="col-sm-6" style="float: right;">
					<a onclick="submit();" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Update</span></a>
				</div>
			</div>
		</div>
		<!-- table-->
									
		<form action="<c:url value='/mypage/partner/Update_RequestEvent.it'/>" id="frm" method="post">
			<input type="hidden" name="req_no" value="${record.req_no}"/>
			<table class="table table-striped table-hover table-bordered">
						
						<tr>
							<th>Title</th>
							<td><input type="text" class="form-control" id="title" name="title" placeholder="열고싶은 이벤트 제목을 입력하세요" value="${record.title}"></td>
						</tr>
						<tr>
							<th>Content</th>
							<td><textarea class="form-control" name="content" id="summernote" placeholder="얼마나 멋진 이벤트인지 설명해주세요! SummerNote의 멋진 기능을 사용하면 더 멋지겠죠 ^_^" style="width: 900px">${record.content}</textarea>
							</td>
						</tr>
						<tr>
							<th>Period</th>
							<td><input type="text" class="form-control" id="period" name="period" placeholder="원하는 이벤트기간을 적어주세요" value="${record.period}"></td>
						</tr>
						<tr>
							<th>ReqDate</th>
							<td id="systime"></td>
						</tr>
			</table>
		</form>
		</div>
		</div>
		</div>
	</div>
</body>
</html>
