<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--*****************************************
	
*********************************************  -->
<div style="padding-top: 70px;"></div>
<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-8 col-md-8 col-sm-8 col-xs-12 col-sm-offset-2 clearfix">
        
        <div class="clearfix"></div>

        <div class="divider"></div>

        <h5 class="title">기업정보</h5>

        <form id="personalinfo" action="" name="personalinfo" method="post">
          <label for="email">Email Address <span class="required">*</span></label>
          <input type="text" name="name" id="email" class="form-control" placeholder="example@yoursite.com">
          <label for="fname">First Name <span class="required">*</span></label>
          <input type="text" name="fname" id="fname" class="form-control" placeholder="John">
          <label for="lname">Last Name </label>
          <input type="text" name="lname" id="lname" class="form-control" placeholder="DOE">
        </form>

        <div class="clearfix"></div>
        <div class="divider"></div>

        <h5 class="title">CART DETAILS</h5>

        <form id="cartinfo" action="" name="cartinfo" method="post">
          <label for="cardnumber">Card Number <span class="required">*</span></label>
          <input type="text" name="cardnumber" id="cardnumber" class="form-control" placeholder="Your card number">
          <label for="cvc">CVC <span class="required">*</span></label>
          <input type="text" name="cvc" id="cvc" class="form-control" placeholder="Security code">
          <label for="ncard">Name on the Card <span class="required">*</span></label>
          <input type="text" name="ncard" id="ncard" class="form-control" placeholder="Name on the card">
          <label for="ncard">Expiration (MM/YY) <span class="required">*</span></label>

          <div class="clearfix"></div>

          <select class="form-control" style="width:75px; float:left; margin-right:10px;">
					<option>01</option>
					<option>02</option>
					<option>03</option>
					<option>04</option>
					<option>05</option>
					<option>06</option>
					<option>07</option>
					<option>08</option>
					<option>09</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select>
          <select class="form-control" style="width:75px;float:left">
					<option>14</option>
					<option>15</option>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
				</select>
        </form>

        <div class="clearfix"></div>
        <div class="divider"></div>

        <h5 class="title">BILLING INFORMATION</h5>

        <form id="billinginfo" action="" name="billinginfo" method="post">
          <label for="baddress">Billing Address 1</label>
          <input type="text" name="baddress" id="baddress" class="form-control" placeholder="Address line 1">
          <label for="baddress1">Billing Address 2 (Optional)</label>
          <input type="text" name="baddress1" id="baddress1" class="form-control" placeholder="Address line 2">
          <label for="bcity">Billing City</label>
          <input type="text" name="bcity" id="bcity" class="form-control" placeholder="Your city">
          <label for="bzip">Zip / Postal Code </label>
          <input type="text" name="bzip" id="bzip" class="form-control" placeholder="Your ZIP or postal code">

          <div class="clearfix"></div>

          <select class="form-control">
					<option>United States</option>
					<option>Spain</option>
					<option>United Kingdom</option>
					<option>France</option>
					<option>Japan</option>
					<option>Brazil</option>
					<option>Other Country</option>
				</select>
          <select class="form-control">
					<option>Alabama</option>
					<option>Other City</option>
					<option>Other City</option>
					<option>Other City</option>
					<option>Other City</option>
					<option>Other City</option>
					<option>Other City</option>
					<option>Other City</option>
				</select>
          <br>
          <div class="clearfix"></div>
          <button class="button">SHOW TERMS</button>
          <div class="clearfix"></div>

          <label class="checkbox-inline">
                    <input id="inlineCheckbox3" type="checkbox" value="option1">
                    <strong>AGREE TO TERMS</strong>
                </label>

          <br><br>
          <div class="well"><strong>PURCHASE TOTAL:</strong> $18.00</div>
          <br>
          <button class="button large btn-block">PURCHASE THIS ITEM</button>
        </form>

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
