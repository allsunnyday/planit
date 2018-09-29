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
<!--************************************** 
 	삽입
 **************************************-->
 <jsp:include page="topMenu.jsp" flush="false" />


  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
<!--************************************** 
 	FAQ / 1:1문의 / ?    세개 이미지버튼
 **************************************-->
        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="dmbox">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a class="" href="#"><i class="dm-icon fa fa-question fa-3x"></i></a>
              </div>
            </div>
            <h4>FAQ</h4>
            <p>ㄱㅏ장많이 물어보는 질문</p>
          </div>
        </div>
        <!-- end dmbox -->

        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="dmbox">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a class="" href="#"><i class="dm-icon fa fa-envelope-o fa-3x"></i></a>
              </div>
            </div>
            <h4>1:1 문의</h4>
            <p>물어보세요(누르면 모달창이나 글쓰는창으로)</p>
          </div>
        </div>
        <!-- end dmbox -->

        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="dmbox">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a class="" href="#"><i class="dm-icon fa fa-random fa-3x"></i></a>
              </div>
            </div>
            <h4>?</h4>
            <p>?</p>
          </div>
        </div>
        <!-- end dmbox -->

        <div class="clearfix"></div>
        <div class="divider"></div>

        <div class="general-title text-center">
          <h3>Support Forum</h3>
          <p>We are here to help you with everything regarding your product.</p>
          <hr>
        </div>

        <div class="text-center">
          <form id="bbsearch" class="form-inline">
            <input type="text" class="form-control" placeholder="Search on support forums">
            <button type="submit" class="btn btn-primary">Search</button>
          </form>
        </div>

        <div class="clearfix"></div>
        <div class="divider"></div>

<!--************************************** 
 	FAQ 아코디언으로 
 **************************************-->
        <div class="general-title text-center">
          <h3>FAQ </h3>
        </div>

		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingOne">
		      <h4 class="panel-title">
		        <a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
		         		질문내용1
		        </a>
		      </h4>
		    </div>
		    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
		      <div class="panel-body">
		        		답변1답변1답변1답변1답변1답변1
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingTwo">
		      <h4 class="panel-title">
		        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		         			질문2
		        </a>
		      </h4>
		    </div>
		    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
		      <div class="panel-body">
		        		답변2답변2답변2답변2
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingThree">
		      <h4 class="panel-title">
		        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		         	질문3
		        </a>
		      </h4>
		    </div>
		    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
		      <div class="panel-body">
		        답변3답변3답변3답변3답변3답변3
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingFour">
		      <h4 class="panel-title">
		        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
		         	질문4
		        </a>
		      </h4>
		    </div>
		    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
		      <div class="panel-body">
		         답변444444444444444444444
		      </div>
		    </div>
		  </div>
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="headingFive">
		      <h4 class="panel-title">
		        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
		         	질문5
		        </a>
		      </h4>
		    </div>
		    <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
		      <div class="panel-body">
		      답변5
		      </div>
		    </div>
		  </div>
		</div>

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
    <script src="https://code.jquery.com/jquery-latest.js"></script> 
 
  <div class="dmtop">Scroll to Top</div>
</body>
