<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
		<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
		<div>
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th class="col-md-2 text-center">번호</th>
					<td>${record.no}</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">제목</th>
					<td>${record.title}</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">작성자</th>
					<td>${record.name}</td>
				</tr>

				<tr>
					<th class="col-md-2 text-center">등록일</th>
					<td>${record.postdate}</td>
				</tr>
				<tr>
					<th colspan="2" class="text-center">내용</th>
				</tr>
				<tr>
					<td colspan="2">${record.content}</td>
				</tr>

			</table>
		</div>
	</div>