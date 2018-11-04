<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
.footer {position:absolute;bottom:0; width:100%;}
</style>
<%-- <jsp:include page="topMenu.jsp" flush="false" /> --%>
<jsp:include page="/WEB-INF/member/tourinfo/tdview/topMenu.jsp" flush="false" />
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-8 col-md-10 col-sm-8 col-xs-12 clearfix">

        <table class="table table-striped checkout" data-effect="fade">
          <thead>
            <tr>
              <th>Item Name</th>
              <th>Item Price</th>
              <th>Quantity</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><img width="50" src="img/recent_post_01.png" alt=""> <a href="#">MaxDash Bootstrap Theme</a></td>
              <td>$18.00</td>
              <td><input id="verify" class="form-control quantity" type="text" value="1" name=""></td>
              <td><a class="remove" href="#" title="Remove this item"></a></td>
            </tr>
          </tbody>
        </table>
        <div class="clearfix"></div>

      

        <div class="clearfix"></div>

        <div class="well text-right"><strong>TOTAL: $18.00</strong></div>

        <div class="clearfix"></div>

        <div class="clearfix"></div>
        <div class="divider"></div>

        <h5 class="title">PERSONAL INFORMATION</h5>

        <form id="personalinfo" action="" name="personalinfo" method="post">
          <label for="email">Email Address <span class="required">*</span></label>
          <input type="text" name="name" id="email" class="form-control" placeholder="example@yoursite.com">
          <label for="fname"> Name <span class="required">*</span></label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Name">
          <!-- <label for="lname">Tel</label>
          <input type="text" name="lname" id="lname" class="form-control" placeholder="Tel"> -->
     	

        <div class="clearfix"></div>
        <div class="divider"></div>

        <h5 class="title">BILLING INFORMATION</h5>
		<!-- 체크인 및 체크아웃 넣기 -->
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span>
			<input type="text" class="form-control" placeholder="checkin" id="datepicker" name="checkin">
		 </div>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span>
			<input type="text" class="form-control" placeholder="checkout" id="datepicker" name="checkout">
		 </div>
		
		<!-- 추가 요구사항 넣기 -->
          <br>
          <div class="clearfix"></div>
          <button class="button">SHOW TERMS</button>
          <div class="clearfix"></div>

          <label class="checkbox-inline">
                    <input id="inlineCheckbox3" type="checkbox" value="option 1">
                    <strong>AGREE TO TERMS</strong>
                </label>

          <br><br>
          <div class="well"><strong>PURCHASE TOTAL:</strong> $18.00</div>
          <br>
          <button class="button large btn-block">PURCHASE THIS ITEM</button>
        </form>

      </div>
      
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
