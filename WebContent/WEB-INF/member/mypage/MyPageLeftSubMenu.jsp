<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="col-md-2 col-md-offset-1" style="margin-top:25px;">
		<div class="teammembers">
            <div class="he-wrap tpl2" style="overflow: hidden;height:150px">
            	<img src="<c:url value='/Upload/Member/${sessionScope.memberRecord.profile}'/>" alt="프로필 사진"  height="100%">            	
            </div>
            <!-- he wrap -->
            <div class="teammembers-meta">
              <h4><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>${memberRecord.id}</h4>
            </div>
            <div id="MY-first-1-self-detail">
               	<br>
                <p>${memberRecord.self}</p>
         	</div>
            <div class="teamskills" >
          		<div id="MY-First-TotalContent" style="width:90%;">
                   <table id="MY-first-informtable" style="width:90%;">
	                   <tr>
	                      <td>Planner</td>
	                      <td>${plannerCount}</td>
	                   </tr>
	                   <tr>
	                   <td>Review</td>
	                      <td>${reviewCount}</td>
	                   </tr>
	                   <tr>
	                      <td>Like</td>
	                      <td>${likedCount}</td>
	                   </tr>
	                   <tr>
	                      <td>Star Point</td>
                      <td>${sessionScope.starcount}</td>
                   </table>
                </div>
            </div>
			<!-- *********************  선호도 조사 들어갈 부분         *****************************8 -->
			<hr>
			<h4>나의 관심사</h4>
            <div id="" class="" style="padding: 1px"  >
           		<c:if test="${empty memberPreferList }" var="result">
           			<a style="color: #fff">플래닛을 즐겨주세요</a>
           		</c:if>	
           		<c:if test="${not result }">
           			<c:forEach var="list" items="${memberPreferList}" varStatus="loop">
           				<a class="dmbutton2" style="border-color: #cecece">${list.KOR}</a><!-- 왜 안나오지 -->
           			</c:forEach>
           		</c:if>
            </div>
          </div>
          <!-- end teammembers -->
	</div>