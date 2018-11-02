<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<%@ include file="/WEB-INF/member/planner/after/logincheck.jsp" %>
<style>
	.footer {display:flex; position:absolute; bottom:0; width:100%;}
</style>
<section class="post-wrapper-top" style="margin-top: 70px;">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li>여행 플래너</li>
			</ul>
			<h2> 나의 여행계획 한눈에 보기 </h2>
		</div>
	</div>
</section>

<section class="section1">
	<div class="container">
		<div class="routeresult" style="background-color: yellow; display:inline-block; text-align: center; "></div>
		<div style="margin-top: 10px; height: 500px; background: url('https://d3b39vpyptsv01.cloudfront.net/0/0/1529656420875aoFUHIp5Eo.jpg');
			background-repeat: no-repeat; background-size: cover; background-position: center center; position: relative">
			<div style="position: absolute; top: 0px; left: 0px; width: 100%; height: 300px; background: #000; opacity: 0.25; 
				filter: alpha(opacity = 25);">
			</div>



			<div style="position: absolute; top: 40px; left: 50px; width: 500px; height: 200px; z-index: 9; valign:">
				<div style="margin-top: 6px; margin-right: 20px; float: left; padding-top: 6px; text-align: center; border: 1px solid #fff;
					border-radius: 30px; width: 60px; height: 60px;">
					<font style="font-size: 20pt; font-weight: 600; color: #fff">
						${days }</font><font style="font-size: 9pt; font-weight: 500; color: #fff">일</font>
				</div>

				<div style="float: left; width: 400px;">
					<div
						style="margin-top: 0px; padding-top: 0px; padding-right: 15px;">
						<font style="color: #fff; font-size: 18pt; font-weight: 600;">${id } 님의 여행계획~!</font>
					</div>
					<font style="color: #fff; font-size: 13pt; font-weight: 500;"> ♬ ${reviewtitle } ♬</font>
				</div>
				<div style="clear: both"></div>
			</div>


			<div
				style="position: absolute; top: 40px; right: 50px; width: 500px; height: 400px; z-index: 9;">
				<div class="rt_left"
					style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">헬싱키</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">탈린</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">리가</font>
					<div
						style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; bottom: 0px; left: 0px; height: 25px; width: 50%; border-right: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div class="rt_left"
					style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<div style="padding-top: 29px; font-size: 8pt; color: #fff">샤울레이</div>
					<div
						style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; top: 0px; left: 0px; height: 24px; width: 50%; border-right: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px; margin-top: -2px;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">빌니우스</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">바르샤바</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; bottom: 0px; right: 0px; height: 25px; width: 50%; border-left: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div class="rt_left"
					style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<div style="padding-top: 29px; font-size: 8pt; color: #fff">크라쿠프</div>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 24px; width: 50%; border-left: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px; margin-top: -2px;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">부다페스트</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: left; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">류블랴나</font>
					<div
						style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; bottom: 0px; left: 0px; height: 25px; width: 50%; border-right: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div class="rt_left"
					style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<div style="padding-top: 29px; font-size: 8pt; color: #fff">블레드</div>
					<div
						style="position: absolute; top: 0px; left: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; top: 0px; left: 0px; height: 24px; width: 50%; border-right: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff; margin-right: 2px; margin-top: -2px;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">자그레브</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 100%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff;">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div class="rt_left"
					style="float: right; width: 33.33%; height: 54px; text-align: center; position: relative">
					<font style="font-size: 8pt; color: #fff">플리트비체</font>
					<div
						style="position: absolute; top: 0px; right: 0px; height: 25px; width: 50%; border-bottom: 3px solid #fff;"></div>
					<div
						style="position: absolute; width: 100%; text-align: center; top: 14px; color: #fff">
						<img src="/Planit/images/plan/KoreanFlag.png" width="15px"
							style="border-radius: 7px;">
					</div>
				</div>
				<div style="clear: both"></div>
				<div style="clear: both"></div>
				<div style="clear: both"></div>
			</div>

		</div>



	</div>
</section>

<script>

</script>