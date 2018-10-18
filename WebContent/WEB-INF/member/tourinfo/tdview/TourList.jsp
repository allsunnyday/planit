<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--************************************
네비게이터가 필요
*************************************** -->

<style>
img{
max-width: 100%;
	width: 600px;
	max-height: 100%;
	height : 280px;
}

.ov{
	filter:grayscale(100%) 
	}

</style>
 <script>//이걸 지우면 기능들이 안먹혀요..

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




<!--************************************ 상단 리스트페이지 네브바 페이지 삽입*************************************** -->
<jsp:include page="topMenu.jsp" flush="false" />
<!--************************************ 실제 컨텐츠  section 시작*************************************** -->
    <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>
		<c:choose>
            <c:when test="${cat1 == 'total'}">관광지정보</c:when>
            <c:when test="${cat1 == 'event'}">축제/행사</c:when>
            <c:otherwise>error!</c:otherwise>
		</c:choose>7
		</li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 관광지(총 ${totalRecordCount}개)</h2>
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
			
<!-- ****************************************지역별 버튼 areacode 선택**************************************** -->
			<div class="wrapper text-center">
			<form id="justAction" action="#" method="GET" name="searchForm" class="form-inline">
			<div class="form-group" >
				<select name="areaCode" id="areaCode" class="dmbutton2" title="조회지역" style="display: inline-block;">
						<option value="">지역선택</option>
						<option value="">전체</option>

						<option value="1" >서울</option>
						

						<option value="2" >인천</option>

						<option value="3" >대전</option>
						

						<option value="4" >대구</option>
						

						<option value="5" >광주</option>
						

						<option value="6" >부산</option>
						

						<option value="7" >울산</option>
						

						<option value="8" >세종특별자치시</option>
						

						<option value="31" >경기도</option>
						

						<option value="32" >강원도</option>
						

						<option value="33" >충청북도</option>
						

						<option value="34" >충청남도</option>
						

						<option value="35" >경상북도</option>
						

						<option value="36" >경상남도</option>
						

						<option value="37" >전라북도</option>
						

						<option value="38" >전라남도</option>
						

						<option value="39" >제주도</option>
						

				</select>
				</div>
<!-- *************************************** cat2 선택  **************************************** -->
				<div data-type="multiple" class="form-group" style="display: inline-block;" >
					<ul class="jetmenu ">
						<li><button name="all" value="" class="button ov" type="button">전체</button></li>
						<li>
						<button name="category" value="A01" class="button " type="button">자연</button>
						</li>
						<li>
						<button name="category" value="A03" class="button " type="button">체험</button>
						</li>
						<li>
						<button name="category" value="B01" class="button " type="button">문화시설</button>
						</li>
						<li>
						<button name="category" value="DDD" class="button " type="button">레포츠</button>
						</li>
						<li>
						<button name="category" value="A02" class="button " type="button">역사</button>
						</li>
						<li>
						<button name="category" value="J02" class="button " type="button">테마</button>
						</li>
						<li>
						<button name="category" value="E01" class="button " type="button">쇼핑</button>
						</li>

					</ul>
					
				</div>
				<div class="form-group" >
					<button type="submit" class="dmbutton2" value="조회">조회</button>
					<a class="dmbutton2 ov" href="#" onclick="">조회순</a>
                	<a class="dmbutton2" href="#" onclick="">제목순</a>
				</div>
				
				<!-- <input type="hidden" name="gotoPage" value=""/>
				<input type="hidden" name="listType" value="cdesc"/>
				<input type="hidden" name="cid" value=""/>
				<input type="hidden" name="out_service" value=""/> -->
			</form>
		</div>
		<div class="divider"></div>

<!-- **********************************관광지 사진과 마우스 올리면 디테일로 넘어가게**************************************** -->	
			<div class="portfolio-centered">
				<div id="showBox" class="recentitems portfolio">
				
				<c:forEach var="record" items="${tour}" >
					<div  class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="he-wrap tpl6 market-item">
							<c:if test="${empty record.firstimage }">
			                <img src="<c:url value='/Upload/Tour/tempimage.png'/>" alt="">
			                </c:if>
			                <c:if test="${not empty record.firstimage }">
			                <img src='${record.firstimage}' alt="">
			                </c:if>
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
						<h3 class="title">${record.title} <small> ${record.cat2kor}</small></h3>
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

 <script>//이걸 지우면 기능들이 안먹혀요..

	var search=function(){
		$('#frm').submit();
	};

	$(function(){
		<c:if test="${not empty searchColumn}">
		$(".chooseColumn").html($("option[value=${searchColumn}").html());
		</c:if>
		
	});


</script>

