<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 아이콘을 위한 css -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

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
	color: #fff;
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

.show-entries select.form-control {
	width: 60px;
	margin: 0 5px;
}

.table-filter .filter-group {
	float: right;
	margin-left: 15px;
}

.table-filter input, .table-filter select {
	height: 34px;
	border-radius: 3px;
	border-color: #ddd;
	box-shadow: none;
}

.table-filter {
	padding: 5px 0 15px;
	border-bottom: 1px solid #e9e9e9;
	margin-bottom: 5px;
}

.table-filter .btn {
	height: 34px;
}

.table-filter label {
	font-weight: normal;
	margin-left: 10px;
}

.table-filter select, .table-filter input {
	display: inline-block;
	margin-left: 5px;
}

.table-filter input {
	width: 200px;
	display: inline-block;
}

.filter-group select.form-control {
	width: 110px;
}

.filter-icon {
	float: right;
	margin-top: 7px;
}

.filter-icon i {
	font-size: 18px;
	opacity: 0.7;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

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
	text-decoration: none;
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

/* 페이징 정렬 */
.pagination {
	float: center;
	margin: 0 0 5px;
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
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
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}

.custom-checkbox input[type="checkbox"] {
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}

.custom-checkbox label:before {
	width: 18px;
	height: 18px;
}

.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #02f7d8;
	background: #02f7d8; /* 체크후 색상 */
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
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

.footer {position:absolute;bottom:0; width:100%;}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// Activate tooltip
		$('[data-toggle="tooltip"]').tooltip();

		// Select/Deselect checkboxes
		var checkbox = $('table tbody input[type="checkbox"]');
		$("#selectAll").click(function() {
			if (this.checked) {
				checkbox.each(function() {
					this.checked = true;
				});
			} else {
				checkbox.each(function() {
					this.checked = false;
				});
			}
		});
		checkbox.click(function() {
			if (!this.checked) {
				$("#selectAll").prop("checked", false);
			}
		});
		
		$('#form-control').change(function() {
			if ($("#form-control option:selected").val() != 'All') {
				console.log($("#form-control option:selected").val());
				var selectedStatus = $("#form-control option:selected").val();
				var target = $('table tr[data-status="'+ $("#form-control option:selected").val() + '"]');
				$("table tbody tr").not(target).hide();
				target.fadeIn();
			} else {
				$("table tbody tr").fadeIn();
			}		
		});
		
		
	});
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
			<!-- end teammembers -->
		</div>
	</div>
	<div class="col-md-9">
		<div class="container-fluid" style="padding-top: 50px">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-4">
							<h2>
								Reservation <b>Details</b>
							</h2>
						</div>
						<div class="col-sm-6" style="float: right;">
							<a href="#deleteEmployeeModal" class="btn btn-danger"
								data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
						</div>
					</div>
				</div>
				<div class="table-filter">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-9">
							<button type="button" class="btn btn-primary">
								<i class="fa fa-search"></i>
							</button>
							<div class="filter-group">
								<label>Name</label> <input type="text" class="form-control">
							</div>

							<div class="filter-group">
								<label>Status</label> <select id="form-control">
									<option>All</option>
									<option>Paid</option>
									<option>Refund</option>
									<option>Pending</option>
									<option>Cancel</option>
								</select>
							</div>
							<span class="filter-icon"><i class="fa fa-filter"></i></span>
						</div>
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th><span class="custom-checkbox"> <input
									type="checkbox" id="selectAll"> <label for="selectAll"></label>
							</span></th>
							<th>No</th>
							<th>Customer</th>
							<th>Room</th>
							<th>Check-in</th>
							<th>Check-out</th>
							<th>Status</th>
							<th>Order Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${empty list}" var="isEmpty">
						<tr>
							<td colspan="7" style="text-align: center; font-size: large; font-weight: bold;">이벤트를 열어 당신의 상품을 알리는것어떠세요?</td>
						</tr>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:forEach var="record" items="${list}" varStatus="loop">
								<tr data-status="${record.status}">
									<td><span class="custom-checkbox"> <input
											type="checkbox" id="checkbox${loop.count}" name="options[]" value="1">
											<label for="checkbox1"></label>
									</span></td>
									<td>${record.reservation_id}</td>
									<td><a href="#"><img src="/examples/images/avatar/1.jpg"
											class="avatar" alt="Avatar">${record.name}</a></td>
									<td><a
										href="<c:url value='/mypage/partner/Reservation_detail.it?reservation_id=${record.reservation_id}'/>">
											${record.roomtitle}</a></td>
									<td>${record.checkin}</td>
									<td>${record.checkout}</td>
									<td><span class="status text-success">&bull;</span>${record.status}</td>
									<td>${record.bookdate}</td>
									<td><a href="#editEmployeeModal" class="edit"
										data-toggle="modal"><i class="material-icons"
											data-toggle="tooltip" title="Reply">&#xE254;</i></a> <a
										href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
											class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
				<!--
***************************************************************************************
페이징 처리
***************************************************************************************
  -->
				<div class="clearfix">
					<div class="hint-text">
						Showing <b>5</b> out of <b>${totalRecordCount}</b> entries
					</div>
					<div class="row" >
						<div class="col-md-12">${pagingString}</div>
					</div>
				</div>
				<!--
***************************************************************************************
Delete Modal
***************************************************************************************
  -->
				<div id="deleteEmployeeModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form>
								<div class="modal-header">
									<h4 class="modal-title">Delete Client</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<p>Are you sure you want to delete these Records?</p>
									<p class="text-warning">
										<small>This action cannot be undone.</small>
									</p>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-danger" value="Delete">
								</div>
							</form>
						</div>
					</div>
				</div>
				<!--
***************************************************************************************
Edit Modal
***************************************************************************************
  -->
				<div id="editEmployeeModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form>
								<div class="modal-header">
									<h4 class="modal-title">Change Status</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Message</label> <input style="height: 300px;" type="text" class="form-control"
											required>
									</div>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-info" value="REPLY">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
