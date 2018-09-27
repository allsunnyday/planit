<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- end topbar -->
  <header class="header">
  <div style="padding-top:30px">
    <div class="container">
      <div class="site-header clearfix">
        <div class="col-lg-3 col-md-3 col-sm-12 title-area">
          <div class="site-title" id="title">
            <a href="#" title="">
            </a>
          </div>
        </div>
        <!-- title area -->
        <div class="col-lg-9 col-md-12 col-sm-12">
          <div id="nav" class="right">
            <div class="container clearfix">
              <ul id="jetmenu" class="jetmenu blue">
                <li ><a href="<c:url value='/member/tourinfo/listpick/list/listMain.it'/>">Home</a>
                </li>
                <li><a href="#">구석구석 떠나볼까</a>
                  <ul class="dropdown">
                    <li><a href="#">서울</a></li>
                    <li><a href="#">인천/경기도</a></li>
                    <li><a href="#">강원도</a></li>
                    <li><a href="#">경상도</a></li>
                    <li><a href="#">전라도</a></li>
                    <li><a href="#">충청도</a></li>
                    <li><a href="#">제주도</a></li>
                  </ul>
                </li>
                <li><a href="#">어디로 갈까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/tourDetail.it'/>">관광지 정보</a></li>
                    <li><a href="#">축제ο행사</a></li>
                    <li><a href="#">한국관광 100선</a></li>
                    <li><a href="#">웰니스 관광 25선</a></li>
                    <li><a href="#">방방곡곡 시티투어</a></li>
                  </ul>
                </li>
                <li><a href="#">무엇을 먹을까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/foodDetail.it'/>">음식점 정보</a></li>
                    <li><a href="#">맛집 랭킹!</a></li>
                    <li><a href="#">구석구석 맛골목</a></li>
                  </ul>
                </li>
                <li><a href="#">어디서 잘까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/sleepDetail.it'/>">숙박업소 정보</a></li>
                    <li><a href="#">숙박업소 랭킹!</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
          <!-- nav -->
        </div>
        <!-- title area -->
      </div>
      <!-- site header -->
    </div>
    <!-- end container -->
    </div>
  </header>
  <!-- end header -->