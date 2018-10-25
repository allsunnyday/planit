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
                <li ><a href="<c:url value='/member/tourinfo/listpick/list/ListMain.it'/>">Home</a>
                </li>
                <li><a href="#">어디로 갈까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/TourList.it?contenttype=12'/>">관광지 정보</a></li>
                    <li><a href="<c:url value='/tourinfo/tdview/TourList.it?cat1=event'/>">축제/행사</a></li>
                    <%-- <li><a href="<c:url value='/tourinfo/tdview/TourList.it?cat1=best'/>">한국관광 100선</a></li>
                    <li><a href="<c:url value='/tourinfo/tdview/TourList.it?cat1=well'/>">웰니스 관광 25선</a></li>
                    <li><a href="<c:url value='/tourinfo/tdview/TourList.it?cat1=citytour'/>">방방곡곡 시티투어</a></li> --%>
                  </ul>
                </li>
                <li><a href="#">무엇을 먹을까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/FoodList.it?contenttype=39'/>">음식점 정보</a></li>
                    <%-- <li><a href="<c:url value='/tourinfo/tdview/FoodList.it?food=foodrank'/>">맛집 랭킹!</a></li>
                    <li><a href="<c:url value='/tourinfo/tdview/FoodList.it?food=foodstreet'/>">구석구석 맛골목</a></li> --%>
                  </ul>
                </li>
                <li><a href="#">어디서 잘까</a>
                  <ul class="dropdown">
                    <li><a href="<c:url value='/tourinfo/tdview/SleepList.it?contenttype=36'/>">숙박업소 정보</a></li>
                    <%-- <li><a href="<c:url value='/tourinfo/tdview/SleepList.it?sleep=sleeprank'/>">숙박업소 랭킹!</a></li> --%>
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