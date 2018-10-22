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
	/* 	//height:15%; */
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
/* 	border: 3px gray dotted; */
	background-color: rgb(109, 213, 193);
}

#MY-first-2-Like {
	display: inline-block;
	border-radius: 10px;
/* 	border: 3px gray dotted; */
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
/* 수정됨 */
 #MY-Second, #MY-Third, #MY-Forth {
	 margin-top: 20px; 
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 130px;
}
/* 수정됨 */
#MY-First-content div, #MY-Second-content div, #Third-content div,
	#MY-Forth-content div {
 /* 	margin-top: 20px; */
	padding-top: 10px;
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
          <li><a href="index.html">Home</a></li>
          <li>사용자 아이디</li>
        </ul>
        <h2>Q&A</h2>
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
              <img src="<c:url value='/images/mypage/default-profille.jpg'/>" alt="프로필 사진">
              <div class="he-view">
            
              </div>
            </div>
            <!-- he wrap -->
            <div class="teammembers-meta">
              <h4>Plan:It</h4>
            </div>
            <div id="MY-first-1-self-detail">
							<p>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true">
									Plan:It님의&nbsp자기소개입니다</span>
							<p>어서오세요, Plan:It님!
							멋진 프로필을 등록해 
							자신만의 개성을 나타내보세요!
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
             			<td>00</td>
             		</tr>
             	
             			
             		</table>
             	
             	</div>
              
            </div>
          </div>
          <!-- end teammembers -->
        </div>
</div>
<!--*************************************
	마이페이지 이동버튼
*****************************************  -->
<div class="container-fluid ">
      <div class="content col-md-7">
	<div class="mypage-content">
		<div class="mypagemenu">
			<div id="mypage">
				<!-- <h2>MY PAGE</h2> -->
			</div>
			<div id="MY-edit">
				<!-- 회원정보 수정폼으로 이동 -->
				<!-- <button type="submit" class="btn btn-default" id="MY-edit-button">회원정보수정</button> -->
			<%-- 	<a href="<c:url value='/planit/mypage/MyPageEditProfile.it' />" class="btn btn-default" id="MY-edit-button">회원정보수정</a> --%>
			<div class="dropdown">
				  <button class="btn btn-link" type="button" id="MY-Planner-gotomypage" >
				  <a href="<c:url value='/planit/mypage/MyPageHome.it'></c:url>">
				   돌아가기
				    <span class="glyphicon glyphicon-log-out"></a></span>
				  </button>
				  
				  
				</div><!-- dropdown -->
			</div><!-- MY-edit -->
		</div><!-- mypagemenu -->
		
		
		
		
		
<!--*************************************
	Q&A 모아보기 뿌려주는 영역
*****************************************  -->		
		<div class="row" id="MY-Third">
			<!--  내가 작성한 플래너 들어갈 div -->
			<div id="MY-Third-name">My ZZim</div>
			
			<div id="Third-line">
				<div id="Third-content" class="col-md-12">
					<!-- 찜해제버튼 추가 -->
					<div id="MY-Third-ZZim-table">
						<table class="table" style="text-align: center">
	                     <tr>
	                        <td class="col-md-1 " >번호</td>
	                        <!-- 찜번호 -->
	                        <!-- <td class="col-md-1 ">분류</td> -->
	                        <td class="col-md-3 col-md-offset-2" >제목</td>
	                        <td class="col-md-2 col-md-offset-2" >날짜</td>
	                        <td class="col-md-2 col-md-offset-2">진행여부</td>
	                        
	
	                     </tr>
	                     <c:if test="${empty requestScope.QnAListDetail }" var="isEmpty">
						<tr>
							<td colspan="4" style="text-align: center">등록된 게시물이 없어요</td>
						</tr>
						</c:if>
						<c:if test="${not isEmpty }">
							<c:forEach var="list" items="${QnAListDetail}" varStatus="loop">
								<tr>
									<%-- <td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>  --%>
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
		
	<!--*************************************
	페이징 들어갈 영역
*****************************************  -->
		<!-- ------------------------- -->
		<!--        start Second       -->
		<!-- ------------------------- -->
	
	
	
		<!-- ---------------------- -->
		<!--       end Second        -->
		<!-- ---------------------- -->
		

	</div>
	<!--  end mypage-content -->

</div>
<!--  end container --> 
  <div class="row">
	<div>${pagingString}</div>
</div>
  
</div>
</section>