<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">
  <!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

<body>
   <jsp:include page="topMenu.jsp" flush="false" />
   
    <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
        <li>
          <c:choose>
            <c:when test="${food=='foodinfo'}">맛있게 식사를!</c:when>
            <c:when test="${food=='foodrank'}">음식점 순위를 알아보자!</c:when>
            <c:when test="${food=='foodstreet'}">맛집 파헤치기!</c:when>
            <c:otherwise>조건을 만족하지 않는 경우</c:otherwise>
	     </c:choose>
        
        </li>
        </ul>
        <h2>PLAN-IT에 등록되어 있는 식당들</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->


<!--*********************************** 
 		 분류별로 표시하는 목록바
 ***********************************-->
  <section class="section1">
    <div class="container clearfix">
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="divider"></div>

        <nav class="portfolio-filter clearfix">
          <ul>
            <li><a href="#" class="dmbutton2" data-filter="*">모두보기(몇개인지 뿌려주기)</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".korea">한식</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".china">중식</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".western">양식</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".japan">일식</a></li>
          </ul>
        </nav>


<!--*********************************** 
 		각 음식점 정보 (data-rel 지워줘야 넘어감)
 ***********************************-->
        <div class="portfolio-centered">
          <div class="recentitems portfolio">

<c:forEach  var="record" items="${food}">
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 western">
              <div class="he-wrap tpl6 market-item">
                <img src="${record.firstimage}" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3>
                    <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>" 
                    class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">${record.title}</h3>
              <p>${record.addr1}</br>
              	문의:${record.tel}
              </p>
            </div>
            </c:forEach>
            <!-- end col-4 -->

<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 korea"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 japan"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 china"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 western"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 western"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 korea"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 japan"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->
            
<!--             <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 china"> -->
<!--               <div class="he-wrap tpl6 market-item"> -->
<%--                 <img src="<c:url value='/images/list/bibim.jpg'/>" alt=""> --%>
<!--                 <div class="he-view"> -->
<!--                   <div class="bg a0" data-animate="fadeIn"> -->
<!--                     <h3 class="big a1" data-animate="fadeInDown">비빔빱</h3> -->
<%--                     <a data-rel="" href="<c:url value='/planit/search/list/FoodView.it'/>"  --%>
<!--                     class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a> -->
<!--                     <div class="portfolio_category text-center a2" data-animate="fadeIn"> -->
<!--                     </div> -->
<!--                     portfolio_category -->
<!--                   </div> -->
<!--                   he bg -->
<!--                 </div> -->
<!--                 he view -->
<!--               </div> -->
<!--               he wrap -->
<!--               <h3 class="title">전주 성미당</h3> -->
<!--               <p>역대 대통령들이 찾은 전주 비빔밥 맛집!</br> -->
<!--             	  전북 전주시 완산구 전라감영5길 19-9</br> -->
<!--               	문의: 063-287-8800 -->
<!--               </p> -->
<!--             </div> -->
<!--             end col-4 -->


          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      <!-- end container -->
  </section>
  <!-- end section -->
<!--*********************************** 
 		페이징 준비중
 ***********************************-->
  <div>
  페이징
  </div>
  <div class="dmtop">Scroll to Top</div>
</body>
  