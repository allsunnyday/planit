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
h4{
	color:rgb(53, 181, 157);
}
.Preference-Theme{
	/* border-top: 2px rgb(53, 181, 157) solid; */
	margin-bottom:100px;
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
				<div class="Preference-Theme">
					<div>
						<h4>여행테마별</h4>
					</div>
					<div class="col-md-12">
						<!-- 가족 -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="family" /> <img
								src="<c:url value='/images/member/Preference/Preference_family.JPG'></c:url>">
							</label>
						</div>
						<!-- alone -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="alone" /> <img
								src="<c:url value='/images/member/Preference/Preference_alone.JPG'></c:url>">
							</label>
						</div>
						<!-- couple -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="couple" /> <img
								src="<c:url value='/images/member/Preference/Preference_couple.JPG'></c:url>">
							</label>
						</div>
						<!-- walk -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="walk" /> <img
								src="<c:url value='/images/member/Preference/Preference_walk.JPG'></c:url>">
							</label>
						</div>
						<!-- camping -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="camping" /> <img
								src="<c:url value='/images/member/Preference/Preference_camping.JPG'></c:url>">
							</label>
						</div>
						<!-- hilling -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="hilling" /> <img
								src="<c:url value='/images/member/Preference/Preference_hilling.JPG'></c:url>">
							</label>
						</div>
						<!-- eating -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_theme" value="eating" /> <img
								src="<c:url value='/images/member/Preference/Preference_eating.JPG'></c:url>">
							</label>
						</div>
					</div>
				</div>
			<!-- *************************************
			관광지별 나누기
			****************************************** -->
				<div class="Preference-Theme">
					<div>
						<h4>관광지</h4>
					</div>
					<div class="col-md-12">
						<!-- nature -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="nature" /> <img
								src="<c:url value='/images/member/Preference/Preference_nature.JPG'></c:url>">
							</label>
						</div>
						<!-- history -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="history" /> <img
								src="<c:url value='/images/member/Preference/Preference_history.JPG'></c:url>">
							</label>
						</div>
						<!-- vacation -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="vacation" /> <img
								src="<c:url value='/images/member/Preference/Preference_vacation.JPG'></c:url>">
							</label>
						</div>
						<!-- experience -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="experience" /> <img
								src="<c:url value='/images/member/Preference/Preference_experience.JPG'></c:url>">
							</label>
						</div>
						<!-- industry -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="industry" /> <img
								src="<c:url value='/images/member/Preference/Preference_industry.JPG'></c:url>">
							</label>
						</div>
						<!-- build -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="build" /> <img
								src="<c:url value='/images/member/Preference/Preference_build.JPG'></c:url>">
							</label>
						</div>
					</div>
				</div>
			<!-- *************************************
			액티비티별 나누기
			****************************************** -->
				<div class="Preference-Theme">
					<div>
						<h4>액티비티</h4>
					</div>
					<div class="col-md-12">
						<!-- culture -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="culture" /> <img
								src="<c:url value='/images/member/Preference/Preference_culture.JPG'></c:url>">
							</label>
						</div>
						<!-- festival -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="festival" /> <img
								src="<c:url value='/images/member/Preference/Preference_festival.JPG'></c:url>">
							</label>
						</div>
						<!-- water -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="water" /> <img
								src="<c:url value='/images/member/Preference/Preference_water.JPG'></c:url>">
							</label>
						</div>
						<!-- run -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="run" /> <img
								src="<c:url value='/images/member/Preference/Preference_run.JPG'></c:url>">
							</label>
						</div>
						<!-- fly -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="fly" /> <img
								src="<c:url value='/images/member/Preference/Preference_fly.JPG'></c:url>">
							</label>
						</div>
						<!-- mix -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="mix" /> <img
								src="<c:url value='/images/member/Preference/Preference_mix.JPG'></c:url>">
							</label>
						</div>
						<!-- concert -->
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_tour" value="concert" /> <img
								src="<c:url value='/images/member/Preference/Preference_concert.JPG'></c:url>">
							</label>
						</div>
					</div>
				</div>
			<!-- *************************************
			특색별 나누기
			****************************************** -->
				<div class="Preference-Theme">
					<div>
						<h4>특색</h4>
					</div>
					<div class="col-md-12">
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_distinct" value="shopping" /> <img
								src="<c:url value='/images/member/Preference/Preference_shopping.JPG'></c:url>">
							</label>
						</div>
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_distinct" value="hotel" /> <img
								src="<c:url value='/images/member/Preference/Preference_hotel.JPG'></c:url>">
							</label>
						</div>
						<div class="col-md-3" >
							<label> <input type="radio" name="radio_distinct" value="restaurant" /> <img
								src="<c:url value='/images/member/Preference/Preference_restaurant.JPG'></c:url>">
							</label>
						</div>
					</div>
				</div>
			</div>
			<input type="submit" value="저장" class="btn btn-default"/>
		</div><!-- end container -->
		
	</section>
		


	</div>

</section>