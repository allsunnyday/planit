<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="topmarginLay_a"></div>
<div class="container sub-layout">
	
	<!-- ***********************************************
		내용시작
	*************************************************** -->
	<div class="mod-custom-form-add">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<div class="p-title">
			<h3>1:1 문의</h3>
		</div>
		<p>&nbsp;</p>
		<form id="mod_type_formForm" class="form-horizontal"
			action="add_insert.php" method="post">
			<div class='q_number'>
				<div class='col-sm-12 clearfix'>
					<h3 class='pull-left' style='margin-bottom: 0px;'>
						<i class='fa fa-square'></i> 이름을 입력해 주세요
					</h3>
				</div>
				<div class='col-sm-12'></div>
				<div class="col-sm-12">
					<input type='text' name='qform[2]' class='form-control' value=''>
				</div>
			</div>
			<div class='q_number'>
				<div class='col-sm-12 clearfix'>
					<h3 class='pull-left' style='margin-bottom: 0px;'>
						<i class='fa fa-square'></i> 이메일을 입력해 주세요
					</h3>
				</div>
				<div class='col-sm-12'></div>
				<div class="col-sm-12">
					<input type='text' name='qform[0]' class='form-control' value=''>
				</div>
			</div>
			<div class='q_number'>
				<div class='col-sm-12 clearfix'>
					<h3 class='pull-left' style='margin-bottom: 0px;'>
						<i class='fa fa-square'></i> 문의사항을 선택해 주세요
					</h3>
				</div>
				<div class='col-sm-12'></div>
				<div class="col-sm-12">
					<div class="checkbox">
						<label><input type='checkbox' name='qform[1][]'
							value='관광지 문의'>관광지 문의</label><label><input
							type='checkbox' name='qform[1][]' value='숙박 문의'>숙박 문의</label><label><input
							type='checkbox' name='qform[1][]' value='식당 문의'>식당 문의</label><label><input
							type='checkbox' name='qform[1][]' value='기타문의'>기타문의</label>
					</div>
				</div>
			</div>
			<div class='q_number'>
				<div class='col-sm-12 clearfix'>
					<h3 class='pull-left' style='margin-bottom: 0px;'>
						<i class='fa fa-square'></i> 간단한 문의 내용이나 추가 사항을 입력해 주세요
					</h3>
				</div>
				<div class='col-sm-12'></div>
				<div class="col-sm-12">
					<textarea class='form-control' name='qform[3]'></textarea>
				</div>
			</div>
			<input type="hidden" name="no" value="8">
			<center>
				<a class="save btn btn-lg btn-primary" style="margin-top: 20px">SEND</a>
			</center>
			<input type="submit" class="submitBtn" style="display: none">
		</form>
		<p>&nbsp;</p>
	</div>


</div>

