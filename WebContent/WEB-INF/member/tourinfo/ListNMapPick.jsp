<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<style>
#listicon-align{
	display: block;
	margin-left: auto;
	margin-right: auto;
	
}
.footer {position:fixed; bottom:0; width:100%;}
</style>

<div class="container-fluid" style="padding-top: 100px; " >
    <div class="container clearfix">
    
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix" style="margin-top: 3%;">
      <!--
***************************************************************************************
List 메뉴
***************************************************************************************
  -->
        <div class="col-lg-6 col-md-6 col-sm-12">
          <div class="dmbox"  style="width: 500px; height: 435px"> 
            <div id="listicon-align" class="service-icon" style="width: 350px; height: 350px;">
              <div class="dm-icon-effect-1" data-effect="slide-bottom" >
                <a class="" href="<c:url value='/member/tourinfo/listpick/list/ListMain.it'/>">
                <img alt="listicon" src="<c:url value='/images/ListNMappick/listicon.png'/>">
                </a>
              </div>
            </div>
            <h4>List</h4>
            <p>Find your journey with well-organized list</p>
          </div>
        </div>
        <!-- end dmbox -->
 <!--
***************************************************************************************
Map 메뉴
***************************************************************************************
  -->
        <div class="col-lg-6 col-md-6 col-sm-12">
          <div class="dmbox">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a class="" href="<c:url value='/member/tourinfo/mappick/MapIllust.it'/>">
                <img alt="mapicon" src="<c:url value='/images/ListNMappick/mapicon.png'/>"></a>
              </div>
            </div>
            <h4>Map</h4>
            <p>Fun way to find your special place</p>
          </div>
        </div>
        <!-- end dmbox -->

        <div class="clearfix"></div>
        <div class="divider"></div>

        </div>
        <!-- /bbpress -->

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
