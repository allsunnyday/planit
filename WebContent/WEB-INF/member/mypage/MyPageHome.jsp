<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.mypage-content {

   /* margin-top: 100px; */
   /* border: 3px black solid; */
}

#mypage {
   display: inline-block;
   /*  border: 3px black solid;  */
}

#MY-edit {
   display: inline-block;
   /*  border: 3px black solid;  */
   float: right;
   /* padding-top: 30px; */
}

#MY-edit-button {
   background-colorl:whith;
   border: 1.5px rgb(53, 181, 157) solid;
   /*  background-color: lightgray; */
   color: rgb(53, 181, 157);
   align: right;
}

#MY-First {
   margin-top: 20px;
   padding-top: 10px;
   border-top: 2px rgb(53, 181, 157) solid;
   margin-bottom: 100px;
}

#MY-first-1, #MY-first-2 {
   /*    //height:15%; */
   /* border: 1px purple solid; */
   margin-top: 10px;
}

#MY-first-1-pictur, #MY-first-1-self {
   /* border: 1px pink solid; */
   font-size: 1.5em;
   height: 150%;
}


#MY-user-picture img {
   /* position: absolute; top:0; left: 0;
width: 100%;
height: 100%; */
   max-width: 100%;
   max-height: 100%;
   margin: auto;
   display: block;
}
#MY-First-content img,#MY-Second-content img{
position: absolute; top:0; left: 0;
width: 100%;
height: 100%;
}
#MY-user-picture {
   width: 150px;
   height: 150px;
   border-radius: 50%;
   border: 2px gray solid;
}

#MY-First-TotalContent{
      display: inline-block;
   border-radius: 10px;
/*    border: 3px gray dotted; */
   background-color: rgb(109, 213, 193);
}
#MY-First-Preference{
display: inline-block;
   border-radius: 10px;
   border:1px rgb(109, 213, 193) dashed;
}

#MY-first-2-Like {
   display: inline-block;
   border-radius: 10px;
/*    border: 3px gray dotted; */
   background-color: rgb(109, 213, 193);
}

#MY-first-2-inform ul, #MY-first-2-Like ul {
   list-style: none;
   display: inline;
}

#MY-first-2-planer, #MY-first-2-review {
   /* border: 1px pink solid; */
   border-right: 1px lightgray solid;
   display: inline-block;
}

#MY-first-2-zzim {
   display: inline-block;
}

#MY-first-informtable td:first-child {
   font-size: 1.0em;
   font-weight: bold;
   color: white;
   text-indent: 10px;
   text-align:left;
}

#MY-first-informtable td:last-child  {
   font-weight: lighter;
   font-size: 1.0em;;
   color: white;
   text-align:  right;
   
}

#MY-first-2-Like {
   /* background-color:white; */
   margin-top: 20px;
}

#ulLike li:nth-child(n + 2) {
   padding-top: 5px;
   font-weight: lighter;
   font-size: 1.2em;;
   color: rgb(109, 213, 193);
   text-indent: 10px;
   display: inline-block;
}

 #MY-Second, #MY-Third, #MY-Forth {
   /* margin-top: 60px; */
   padding-top: 10px;
   border-top: 2px rgb(53, 181, 157) solid;
   margin-bottom: 130px;
}

#MY-First-content div, #MY-Second-content div, #Third-content div,
   #MY-Forth-content div {
/*    margin-top: 20px; */
   height: 170px;
}
#MY-First-name,#MY-Second-name,
#MY-Third-name,#MY-Forth-name{
   display:inline-block;
}
.MY-More-Button{
   display:inline-block;
   float: right;
   margin-top:-5px;
}
.MY-More-Button button {
   color:rgb(53, 181, 157);
   
}
</style>
<!-- *******************************************
   베이지색 검색창 달린 거
************************************************ -->
 <section class="post-wrapper-top" style="margin-top:65px;">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.html">My Page</a></li>
          <li>${id }</li>
        </ul>
        <h2>MY Page Home</h2>
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
<!--*************************************
   왼쪽에 달린 프로필 사진 및 기타등등 
*****************************************  -->
  <section class="section1">
        <div class="col-md-2 col-md-offset-1" style="margin-top:25px;">
        <div>
          <div class="teammembers">
            <div class="he-wrap tpl2">
            	<c:if test="${not empty memberRecord.profile}" var="result">
            	<img src="<c:url value='/Upload/Member/${memberRecord.profile}'/>" alt="프로필 사진">
            	</c:if>
            	<c:if test="${not result}">
              <img src="<c:url value='/images/mypage/default-profille.jpg'/>" alt="프로필 사진">
              </c:if>
              <div class="he-view">
            
              </div>
            </div>
            <!-- he wrap -->
            <div class="teammembers-meta">
              <h4>${sessionScope.id}</h4>
            </div>
            <div id="MY-first-1-self-detail">
                     <p>
                        <span class="glyphicon glyphicon-map-marker" aria-hidden="true">
                        <c:if test="${not empty sessionScope.userid}">${sessionScope.userid}</c:if>
                        <c:if test="${empty sessionScope.userid}">Plan:It</c:if>
                           님의&nbsp자기소개입니다</span>
                     <p>${memberRecord.self}
                     </p>


         </div>

            
            <div class="teamskills" >
            <div id="MY-First-TotalContent" style="width:90%;">
                   <table id="MY-first-informtable" style="width:90%;">
                   <tr>
                      <td>Planner</td>
                      <td>00</td>
                   </tr>
                   <tr>
                   <td>Review</td>
                      <td>00</td>
                   </tr>
                   <tr>
                      <td>Like</td>
                      <td>00</td>
                   </tr>
                   <tr>
                      <td>Star Point</td>
                      <td>0000</td>
                  <!--  </tr>
                	<tr style="border-top:1px white dashed;">
                	<td colspan="2"> 선호사항</td>
                	</tr>
                       -->
                   </table>
                
                </div>
              
            </div>
            <!-- ***********************8
            선호도 조사 들어갈 부분
            *****************************8 -->
            <div id="MY-First-Preference" style="width:90%;" >
            	<table id="MY-first-prefertable" style="width:90%; padding:10px;">
            		<tr>
            			<td>1</td>
            			<td>2</td>
            			<td>3</td>
            			<td>4</td>
            		</tr>
            	
            	</table>
            
            </div>
          </div>
          <!-- end teammembers -->
        </div>
</div>
<!-- ************************************
   마이페이지 홈 내용
   -수정폼이동,플래너 및 리뷰 요약, 기타 등등
***************************************** -->
<div class="container-fluid ">
      <div class="content col-md-7">
   <div class="mypage-content">
      <div class="mypagemenu">
         <div id="mypage">
         <!--    <h2>MY PAGE</h2> -->
         </div>
         <div id="MY-edit">
            <!-- 회원정보 수정폼으로 이동 -->
            <!-- <button type="submit" class="btn btn-default" id="MY-edit-button">회원정보수정</button> -->
         <%--    <a href="<c:url value='/planit/mypage/MyPageEditProfile.it' />" class="btn btn-default" id="MY-edit-button">회원정보수정</a> --%>
         <div class="dropdown">
              <button class="btn btn-default dropdown-toggle" type="button" id="MY-edit-button" data-toggle="dropdown" aria-expanded="true">
                회원정보수정
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" role="menu" aria-labelledby="MY-edit-button">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/MyPageEditProfile.it' />">프로필 수정</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/MyPageEditPassword.it' />">비밀번호 변경</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/MyPagePassCheck.it' />">비밀번호 확인 페이지(임시)</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/planit/mypage/Preference.it' />">선호도조사(임시)</a></li>
                
              </ul>
              
            </div><!-- dropdown -->
         </div><!-- MY-edit -->
      </div><!-- mypagemenu -->
      
      <!-- ------------------------- -->
      <!--        start First       -->
      <!-- ------------------------- -->
      <div class="row" id="MY-First">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-First-name">My Planer</div>
         <div class="MY-More-Button">
             <a class="btn btn-link" href="<c:url value='/planit/mypage/detail/Planner.it'/>"><span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="First-line" style="height:300px;">
            <div id="MY-First-content" class="col-md-12">
   <!-- **********************************
      최신 플래너 요약보기/마우스 오버 추가
   **************************************** -->
                 <div class="portfolio-centered">
                   <div class="recentitems portfolio">
         			
                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mockups">
                       <div class="he-wrap tpl6 market-item">
                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
                         <div class="he-view">
                           <div class="bg a0" data-animate="fadeIn">
                             <h3 class="a1" data-animate="fadeInDown">Project Name</h3>
                             <a data-rel="prettyPhoto" href="img/portfolio_01.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                             <a href="single-portfolio-2.html" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                             <div class="portfolio_category text-center a2" data-animate="fadeIn">
                               <a href="gallery-portfolio.html#">Item Category</a>
                             </div>
                             <!-- portfolio_category -->
                           </div>
                           <!-- he bg -->
                         </div>
                         <!-- he view -->
                       </div>
                       <!-- he wrap -->
                     </div>
                     <!-- end col-12 -->
         
                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 web-design graphic-design">
                       <div class="he-wrap tpl6 market-item">
                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
                         <div class="he-view">
                           <div class="bg a0" data-animate="fadeIn">
                             <h3 class="a1" data-animate="fadeInDown">Project Name</h3>
                             <a data-rel="prettyPhoto" href="img/portfolio_02.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                             <a href="single-portfolio-2.html" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                             <div class="portfolio_category text-center a2" data-animate="fadeIn">
                               <a href="gallery-portfolio.html#">Item Category</a>
                             </div>
                             <!-- portfolio_category -->
                           </div>
                           <!-- he bg -->
                         </div>
                         <!-- he view -->
                       </div>
                       <!-- he wrap -->
                     </div>
                     <!-- end col-12 -->
         
                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 graphic-design">
                       <div class="he-wrap tpl6 market-item">
                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
                         <div class="he-view">
                           <div class="bg a0" data-animate="fadeIn">
                             <h3 class="a1" data-animate="fadeInDown">Project Name</h3>
                             <a data-rel="prettyPhoto" href="img/portfolio_03.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                             <a href="single-portfolio-2.html" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                             <div class="portfolio_category text-center a2" data-animate="fadeIn">
                               <a href="gallery-portfolio.html#">Item Category</a>
                             </div>
                             <!-- portfolio_category -->
                           </div>
                           <!-- he bg -->
                         </div>
                         <!-- he view -->
                       </div>
                       <!-- he wrap -->
                     </div>
                     <!-- end col-12 -->
         
                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mockups">
                       <div class="he-wrap tpl6 market-item">
                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
                         <div class="he-view">
                           <div class="bg a0" data-animate="fadeIn">
                             <h3 class="a1" data-animate="fadeInDown">Project Name</h3>
                             <a data-rel="prettyPhoto" href="img/portfolio_04.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                             <a href="single-portfolio-2.html" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                             <div class="portfolio_category text-center a2" data-animate="fadeIn">
                               <a href="gallery-portfolio.html#">Item Category</a>
                             </div>
                             <!-- portfolio_category -->
                           </div>
                           <!-- he bg -->
                         </div>
                         <!-- he view -->
                       </div>
                       <!-- he wrap -->
                     </div>
                     <!-- end col-12 -->
         
                     <!-- end col-12 -->
         
                     
                     <!-- end col-12 -->
         
                     <!-- end col-12 -->
         
                   </div>
                   <!-- portfolio -->
                    </div> 
         
               
   
               </div>
   

         </div>


      </div>
      <!-- ---------------------- -->
      <!--       end First        -->
      <!-- ---------------------- -->
      <!-- ------------------------- -->
      <!--        start Second       -->
      <!-- ------------------------- -->
      <div class="row" id="MY-Second">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-Second-name">My Review</div>
         <div class="MY-More-Button">
             <a href="<c:url value='/planit/mypage/detail/Review.it'/>" class="btn btn-link">
             <span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="Second-line" style="height:300px;">
            <div id="MY-Second-content" class="col-md-12" style="height:300px;">
   <!-- **********************************
      최신 플래너 요약보기/마우스 오버 추가
   **************************************** -->
                 <div class="portfolio-centered">
                   <div class="recentitems portfolio">
         			<c:if test="${empty homeReviewList }">
         				<div>
         					<h2>당신만의 멋진 리뷰를 작성해주세요</h2>
         				</div>
         			</c:if>
         			<c:if test="${not empty homeReviewList }">
         				<c:forEach var="list" items="${homeReviewList}" varStatus="loop">
	                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mockups">
	                       <div class="he-wrap tpl6 market-item">
	                       <c:if test="${empty list.firstimage }" var="result">
	                         <img src="<c:url value='/images/main/slide2.jpg'/>" alt="">
	                       </c:if>
	                       <c:if test="${not result }">
							<img src="<c:url value='/Upload/Review/${list.firstimage}'/>" style="height:230px" alt="">
	                       </c:if>
	                         <div class="he-view">
	                           <div class="bg a0" data-animate="fadeIn">
	                             <h3 class="a1" data-animate="fadeInDown">${list.title}(${list.series })</h3>
	                             <a data-rel="prettyPhoto" href="<c:url value='/planit/review/ReviewView.it?review_id=${list.review_id}'/>" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
	                             <a href="single-portfolio-2.html" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
	                             <div class="portfolio_category text-center a2" data-animate="fadeIn">
	                               <!-- <a href="gallery-portfolio.html#">Item Category</a> -->
	                             </div>
	                             <!-- portfolio_category -->
	                           </div>
	                           <!-- he bg -->
	                         </div>
	                         <!-- he view -->
	                       </div>
	                       <!-- he wrap -->
	                     </div>
	                     <!-- end col-12 -->
                     </c:forEach>
         			</c:if>
                  
                   <!-- portfolio -->
                    </div> 
         
               
   
               </div>
   


         </div>


      </div>
      <!-- ---------------------- -->
      <!--       end Second        -->
      <!-- ---------------------- -->
      <!-- ------------------------- -->
      <!--        start Third      -->
      <!-- ------------------------- -->
      <div class="row" id="MY-Third">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-Third-name">My Liked</div>
         <div class="MY-More-Button">
             <a href="<c:url value='/planit/mypage/detail/Liked.it'/>" class="btn btn-link" ><span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="Third-line" style="height:300px;">
            <div id="Third-content" class="col-md-12">
               <!-- 찜해제버튼 추가 -->
               <div id="MY-Third-ZZim-table">
                  <table class="table">
                     <tr>
                        <td class="col-md-2 ">ZZim No.</td>
                        <!-- 찜번호 -->
                        <td class="col-md-1 ">분류</td>
                        <td class="col-md-3 col-md-offset-1">제목</td>
                        <td class="col-md-2 col-md-offset-2">작성자</td>
                        <td class="col-md-2 col-md-offset-2">ZZim날짜</td>

                     </tr>
                     <tr>
                        <td>00</td>
                        <!-- 찜번호 -->
                        <td><span class="glyphicon glyphicon-edit"></span></td>
                        <td>리뷰 ZZim</td>
                        <td>Plan:It</td>
                        <td>2018.01.01</td>

                     </tr>
                     <tr>
                        <td>00</td>
                        <!-- 찜번호 -->
                        <td><span class="glyphicon glyphicon-calendar"></span></td>
                        <td>플래너 ZZim</td>
                        <td>Plan:It</td>
                        <td>2018.01.01</td>

                     </tr>
                  </table>
               </div>
            </div>


         </div>


      </div>
      <!-- ---------------------- -->
      <!--       end Third         -->
      <!-- ---------------------- -->
      <!-- ------------------------- -->
      <!--        start Third      -->
      <!-- ------------------------- -->
      <div class="row" id="MY-Forth">
         <!--  내가 작성한 플래너 들어갈 div -->
         <div id="MY-Forth-name">My Q&A</div>
         <div class="MY-More-Button">
         
             <a href="<c:url value='/planit/mypage/detail/Q&A.it'/>" class="btn btn-link"><span class="glyphicon glyphicon-plus">더보기 </span></a>
            </div>
         <div id="Forth-line" style="height:300px;">
            <div id="MY-Forth-content" class="col-md-12">
               <div id="MY-Forth-Q&A-table">
                  <table class="table" style="text-align: center">
                     <tr>
                        <td class="col-md-1 " >번호</td>
                        <!-- 찜번호 -->
                        <!-- <td class="col-md-1 ">분류</td> -->
                        <td class="col-md-3 col-md-offset-2" >제목</td>
                        <td class="col-md-2 col-md-offset-2" >날짜</td>
                        <td class="col-md-2 col-md-offset-2">진행여부</td>
                        

                     </tr>
                     <c:if test="${empty requestScope.homeQnAList }" var="isEmpty">
					<tr>
						<td colspan="4" style="text-align: center">등록된 게시물이 없어요</td>
					</tr>
					</c:if>
					<c:if test="${not isEmpty }">
						<c:forEach var="list" items="${homeQnAList}" varStatus="loop">
							<tr>
								<%-- <td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td> --%>
								<td>${list.ask_no}</td>
								<td class="text-left">
								<a href="#">${list.title }</a>
								</td>
								<td>${list.askdate}</td>
								<td>${list.status}</td>
							</tr>
						</c:forEach>
					</c:if>
           <!--           <tr>
                        <td>00</td>
                        <td>정보수정</td>
                        <td>관광지 정보수정 문의</td>
                        <td>2018.01.01</td>
                        <td>문의 접수</td>

                     </tr>
                     <tr>
                        <td>00</td>
                        <td>그냥문의</td>
                        <td>제목뭘루하지</td>
                        <td>2018.01.01</td>
                        <td>처리 중</td>

                     </tr> -->
                  </table>
               </div>




            </div>


         </div>


      </div>
      <!-- ---------------------- -->
      <!--       end Third         -->
      <!-- ---------------------- -->


   </div>
   <!--  end mypage-content -->

</div>
<!--  end container --> 
</div>  `
</div>
</section>