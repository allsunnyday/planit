<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 아이콘을 위한 css -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

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
}
</style>

	<div class="container" style="padding-top: 50px">
		<div class="table-wrapper">
		<div class="table-title">
			<div class="row">
				<div class="col-sm-4">
					<h2>Reservation</h2>
				</div>

				<div class="col-sm-6" style="float: right;">
					<a href="#deleteEmployeeModal" class="btn btn-danger"
						data-toggle="modal"> <span>Delete</span></a>
				</div>

			</div>

		</div>
		<!-- table-->

		<table class="table table-striped table-hover table-bordered">

			<tr>
				<th>번호</th>
				<td>1004</td>
			</tr>
			<tr>
				<th>고객 정보</th>
				<td><a href="#"> <img src="/examples/images/avatar/2.jpg"
						class="avatar" alt="Avatar"> Paula Wilson
				</a></td>
			</tr>
			<tr>
				<th>예약 상품</th>
				<td><a href="#">하늘나라 1층 3호실</a></td>
			</tr>
			<tr>
				<th>예약 날짜</th>
				<td>2018/10/08 - 2018/10/12</td>
			</tr>
			<tr>
				<th>status</th>
				<td><span class="status text-success">&bull;</span> Replied</td>
			</tr>
			<tr>
				<th>status</th>
				<td><span class="status text-success">&bull;</span> paid</td>
			</tr>
			<tr>
				<th>요청 메세지</th>
				<td>아침에 조식 신청 하지않겠습니다. </td>
			</tr>

		</table>


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

		
		</div>
	</div>
</body>
</html>
