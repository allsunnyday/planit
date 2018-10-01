<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section>
	<script>
		$(document.body).click(function() {
			if ($("#second-text").is(":hidden")) {
				$("#second-text").slideDown("slow");
			}
		});
	</script>
	<style>
.containerrr {
	margin-top: 100px;
	margin-bottom: 500px;
}

label>input { /* HIDE RADIO */
	visibility: hidden; /* Makes input not-clickable */
	position: absolute; /* Remove input from document flow */
}

label>input+img { /* IMAGE STYLES */
	cursor: pointer;
	border: 2px solid transparent;
}

label>input:checked+img { /* (RADIO CHECKED) IMAGE STYLES */
	border: 2px solid #f00;
}
img{
	
}
</style>
<section class="section1">
	<div class="containerrr">
		<div class="container">
			<div>
				<h2>선호도조사<small>나에게 꼭맞는 여행선택하기</small></h2>
			</div>
			<div class="col-md-12">
			<!-- *************************************
			여행테마별 나누기
			****************************************** -->
				<div id="Preference-Theme">
					<div>
						<h5>여행테마별</h5>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_theme" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_theme" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_theme" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_theme" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
				</div>
			<!-- *************************************
			관광지별 나누기
			****************************************** -->
				<div id="Preference-Theme">
					<div>
						<h5>관광지</h5>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_tour" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_tour" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_tour" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_tour" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
				</div>
			<!-- *************************************
			액티비티별 나누기
			****************************************** -->
				<div id="Preference-Theme">
					<div>
						<h5>액티비티</h5>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_activity" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_activity" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_activity" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_activity" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
				</div>
			<!-- *************************************
			특색별 나누기
			****************************************** -->
				<div id="Preference-Theme">
					<div>
						<h5>특색</h5>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_distinct" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_distinct" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_distinct" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
					<div class="col-md-3" >
						<label> <input type="radio" name="radio_distinct" value="small" /> <img
							src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
						</label>
					</div>
				</div>
			</div>

		</div>
</section>
		<!-- <div class="contain">
<span>
    <input type="radio" name="test" value="1">
    <label></label>   
</span>
<span>
    <input type="radio" name="test" value="2">
    <label></label>   
</span>
<span>
    <input type="radio" name="test" value="3">
    <label></label>  
</span>
</div> -->


	</div>

</section>