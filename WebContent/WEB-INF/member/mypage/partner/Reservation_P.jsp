<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
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
	});
</script>
</head>
<body>
	<div class="container" style="padding-top: 50px">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-4">
						<h2>
							Reservation <b>Details</b>
						</h2>
					</div>
					<div class="col-sm-6" style="float: right;">
					 <a href="#deleteEmployeeModal"
							class="btn btn-danger" data-toggle="modal"><i
							class="material-icons">&#xE15C;</i> <span>Delete</span></a>
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
							<label>Status</label> <select class="form-control">
								<option>Any</option>
								<option>PAID</option>
								<option>REFUND</option>
								<option>PENDING</option>
								<option>CANCEL</option>
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
						<th>#</th>
						<th>Customer</th>
						<th>Room</th>
						<th>Order Date</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><span class="custom-checkbox"> 
						<input type="checkbox" id="checkbox1" name="options[]" value="1">
								<label for="checkbox1"></label>
						</span></td>
						<td>1</td>
						<td><a href="#"><img src="/examples/images/avatar/1.jpg"
								class="avatar" alt="Avatar"> Michael Holz</a></td>
						<td><a href="<c:url value='/mypage/partner/Reservation_detail.it'/>">하늘나라 1호실</a></td>
						<td>Jun 15, 2017</td>
						<td><span class="status text-success">&bull;</span> PAID</td>
						<td><a href="#editEmployeeModal" class="edit"
							data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Reply">&#xE254;</i></a> <a
							href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
								class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					<tr>
						<td><span class="custom-checkbox"> <input
								type="checkbox" id="checkbox2" name="options[]" value="1">
								<label for="checkbox2"></label>
						</span></td>
						<td>2</td>
						<td><a href="#"><img src="/examples/images/avatar/2.jpg"
								class="avatar" alt="Avatar"> Paula Wilson</a></td>
						<td>Madrid</td>
						<td>Jun 21, 2017</td>
						<td><span class="status text-info">&bull;</span> Shipped</td>
						<td><a href="#editEmployeeModal" class="edit"
							data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Reply">&#xE254;</i></a> <a
							href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
								class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					<tr>
						<td><span class="custom-checkbox"> <input
								type="checkbox" id="checkbox3" name="options[]" value="1">
								<label for="checkbox3"></label>
						</span></td>
						<td>3</td>
						<td><a href="#"><img src="/examples/images/avatar/3.jpg"
								class="avatar" alt="Avatar"> Antonio Moreno</a></td>
						<td>Berlin</td>
						<td>Jul 04, 2017</td>
						<td><span class="status text-danger">&bull;</span> Cancelled</td>
						<td><a href="#editEmployeeModal" class="edit"
							data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Reply">&#xE254;</i></a> <a
							href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
								class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					<tr>
						<td><span class="custom-checkbox"> <input
								type="checkbox" id="checkbox4" name="options[]" value="1">
								<label for="checkbox4"></label>
						</span></td>
						<td>4</td>
						<td><a href="#"><img src="/examples/images/avatar/4.jpg"
								class="avatar" alt="Avatar"> Mary Saveley</a></td>
						<td>New York</td>
						<td>Jul 16, 2017</td>
						<td><span class="status text-warning">&bull;</span> Pending</td>
						<td><a href="#editEmployeeModal" class="edit"
							data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Reply">&#xE254;</i></a> <a
							href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
								class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					<tr>
						<td><span class="custom-checkbox"> <input
								type="checkbox" id="checkbox5" name="options[]" value="1">
								<label for="checkbox5"></label>
						</span></td>
						<td>5</td>
						<td><a href="#"><img src="/examples/images/avatar/5.jpg"
								class="avatar" alt="Avatar"> Martin Sommer</a></td>
						<td>Paris</td>
						<td>Aug 04, 2017</td>
						<td><span class="status text-success">&bull;</span> Delivered</td>
						<td><a href="#editEmployeeModal" class="edit"
							data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Reply">&#xE254;</i></a> <a
							href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i
								class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
				</tbody>
			</table>
			<!--
***************************************************************************************
페이징 처리
***************************************************************************************
  -->
			<div class="clearfix">
				<div class="hint-text">
					Showing <b>5</b> out of <b>25</b> entries
				</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item"><a href="#" class="page-link">3</a></li>
					<li class="page-item active"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">6</a></li>
					<li class="page-item"><a href="#" class="page-link">7</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
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
								<h4 class="modal-title">Reply</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</div>
							<div class="modal-body">

								<div class="form-group" style="height: 100px;">
									<label>Message</label> <input type="text" class="form-control"
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
</body>
</html>
