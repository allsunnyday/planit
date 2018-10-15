<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--************************************
네비게이터가 필요
*************************************** -->
<jsp:include page="topMenu.jsp" flush="false" />
<style>
img{
max-width: 100%;
	width: 600px;
	max-height: 100%;
	height : 280px;
}

</style>
<script>
<<<<<<< HEAD

=======
 <script>//이걸 지우면 기능들이 안먹혀요..
>>>>>>> refs/remotes/origin/Gilhyoung

var search=function(){
	$('#frm').submit();
};

$(function(){
	$('#frm').validate({rules:{
		searchWord:{
			required:true
			  //최소문자길이
		}
	},
	messages:{
		searchWord:{
			required:'검색어를 입력하세요'
			
		}
	}});
});

$(function(){
	<c:if test="${not empty searchColumn}">
	$(".chooseColumn").html($("option[value=${searchColumn}").html());
	</c:if>
	
});


</script>




<!--************************************
 아래 리스트 
*************************************** -->

    <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>
		<c:choose>
            <c:when test="${cat1 == 'total'}">관광지정보</c:when>
            <c:when test="${cat1 == 'event'}">축제/행사</c:when>
            <c:when test="${cat1 == 'well'}">웰니스관광 25선</c:when>
            <c:when test="${cat1 == 'best'}">한국관광100선</c:when>
            <c:when test="${cat1 == 'citytour'}">방방곡곡 시티투어</c:when>
            <c:otherwise>error!</c:otherwise>
		</c:choose>
		</li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 관광지</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->
	<div class="container clearfix">
		<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="divider"></div>
			
<!-- ****************************************
 		지역별 버튼
**************************************** -->

<div>
 	<nav class="portfolio-filter clearfix">
 	
          <ul>
           
            <li class="dropdown">
					<a class="dmbutton2"  data-toggle="dropdown" role="menu">
							도시별 보기&nbsp
					<span class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu" >
						<li><a href="#">서울</a></li>
						<li><a href="#">인천</a></li>
						<li><a href="#">수원</a></li>
						<li><a href="#">안산</a></li>
						<li><a href="#">일산</a></li>
						<li><a href="#">부산</a></li>
						<li><a href="#">강릉</a></li>
						<li><a href="#">춘천</a></li>
						<li><a href="#">대구</a></li>
						<li><a href="#">광주</a></li>
						<li><a href="#">목포</a></li>	
						<li><a href="#">제주도</a></li>
						<li><a href="#">...</a></li>					
					</ul>
				</li>

 			
 				 
            <li><a href="#" class="dmbutton2" data-filter="*">모두보기(몇개인지 뿌려주기)</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".s">서울</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".i">인천/경기도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".g">강원도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".7">경상도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".c">충청도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".j">전라도</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".je">제주도</a></li>
            <button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-danger" >인기순</button>
          </ul>
          
	</nav>
</div>


<!-- ****************************************
 	관광지 사진과 마우스 올리면 디테일로 넘어가게
**************************************** -->	
			<div class="portfolio-centered">
				<div id="showBox" class="recentitems portfolio">
				
				<c:forEach var="record" items="${tour}" >
					<div  class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="he-wrap tpl6 market-item">
							<img src='${record.firstimage}' alt="">
							<div class="he-view">
								<div class="bg a0" data-animate="fadeIn">
									<h3 class="big a1" data-animate="fadeInDown">자세히 보기</h3>
									<a data-rel="" 
									href="<c:url value='/planit/search/list/TourView.it?contentid=${record.contentid}'/> "
										class="dmbutton a2" data-animate="bounceInLeft"  >
										
										<i class="fa fa-search"></i></a>
									<div class="portfolio_category text-center a2"
										data-animate="fadeIn"></div>
									<!-- portfolio_category -->
								</div>
								<!-- he bg -->
							</div>
							<!-- he view -->
						</div>
						<!-- he wrap -->
						<h3 class="title">${record.title }</h3>
						<p>${record.addr1 }<br>
						문의: ${record.tel }</p>
					</div>
					</c:forEach>
					<!-- end col-4 -->
			</div>
			<!-- portfolio container -->
		<!-- end container -->
</div></div></div>


	<div class="row">
		<div class="col-md-12">${pagingString}</div>
	</div>

<div class="row">
	<div class="text-center">
		<form class="form-inline" method="post"
			action="<c:url value='#'/>">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="all">전체검색</option>
					<option value="title">관광지명</option>
					<option value="tel">전화번호</option>
				</select>
			</div>
			<div class="form-group" >
				<input type="text" name="searchWord" class="form-control" />
			</div>
			<button style="margin-bottom: 10px"type="submit" class="btn btn-primary">검색</button>

		</form>
	</div>
</div>



<!-- end section -->

