<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" href="https://365ok.co.kr/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/skin/board/basic/style.css?ver=171222">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/default.css?ver=171222">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/animate.min.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/owl.carousel.css">
<link rel="stylesheet" href="https://365ok.co.kr/theme/ok/css/main.css">
<script src="https://365ok.co.kr/theme/ok/js/jquery-2.2.4.min.js"></script>

<div id="main" class="container">
<!--*********************************** 
 		 공지사항 글씨 / 이미지
 ***********************************-->
			<section class="sub-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">공지사항</h1>
						</div>
					</div>
				</div>
			</section>
			<!-- End sub title -->
  
<!-- 게시판 목록 시작 { -->
<section class="service-area pt-50 pb-50" id="lecture">

<!--*********************************** 
 		게시글 수
 ***********************************-->
    <div id="bo_btn_top">
        <div id="bo_list_total">
            <span>Total 37건</span>
            1 페이지
        </div>

            </div>


    <form name="fboardlist" class="form" id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="notice">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="sst" value="wr_num, wr_reply">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">
<!--*********************************** 
 		 공지사항 테이블
 ***********************************-->
    <table class="table table-striped table-hover">
        <thead>
        <tr>
                        <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th class="p-1 text-right pr-2"><a href="/bbs/board.php?bo_table=notice&amp;sop=and&amp;sst=wr_datetime&amp;sod=desc&amp;sfl=&amp;stx=&amp;sca=&amp;page=1">날짜  <i class="fa fa-sort" aria-hidden="true"></i></a></th>
        </tr>
        </thead>
        <tbody>
                <tr class="">
                        <td class="td_num2">
            37            </td>

            <td class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">

                    <a href="<c:url value='/planit/search/tourinfo/NoticeView.it'/>">
                        공지사항              </a>

                </div>

            </td>
            <td class="p-1 text-right pr-2">08-20</td>

        </tr>
                <tr class="">
                        <td class="td_num2">
            36            </td>

            <td class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">

                    <a href="<c:url value='/planit/search/tourinfo/NoticeView.it'/>">
                        초중고 코딩교육은 https://365ok.co.kr 에서 시작하세요..                    </a>

                </div>

            </td>
            <td class="p-1 text-right pr-2">06-20</td>

        </tr>
                <tr class="">
                        <td class="td_num2">
            35            </td>

            <td class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">

                    <a href="<c:url value='/planit/search/tourinfo/NoticeView.it'/>">
                        파이썬 프로그래밍 강좌 개설 기념                    </a>

                </div>

            </td>
            <td class="p-1 text-right pr-2">06-11</td>

        </tr>
                <tr class="">
                        <td class="td_num2">
            34            </td>

            <td class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">

                    <a href="<c:url value='/planit/search/tourinfo/NoticeView.it'/>">
                        1년 호스팅 무료 서비스 및 테마 무료설치 지원 안내                    </a>

                </div>

            </td>
            <td class="p-1 text-right pr-2">05-21</td>

        </tr>
                
     
                        </tbody>
        </table>

    
    </form>

<!--*********************************** 
 		게시글 검색
 ***********************************-->
    <div class="text-center">

        <form name="fsearch" method="get" class="form-inline">
        <input type="hidden" name="bo_table" value="notice">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sop" value="and">
        <label for="sfl" class="sound_only">검색대상</label>
        <div class="default-select mr-2" id="default-select">
        <select name="sfl" id="sfl">
            <option value="wr_subject">제목</option>
            <option value="wr_content">내용</option>
            <option value="wr_subject||wr_content">제목+내용</option>
        </select>
      </div>
        <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
        <input type="text" name="stx" value="" required id="stx" class="form-control mr-2" placeholder="검색어를 입력해주세요">
        <button type="submit" value="검색" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
        </form>
    </div>
    <!-- } 게시판 검색 끝 -->
</section>




<!-- 페이지 -->
<nav class="pg_wrap"><span class="pg"><span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
<a href="./board.php?bo_table=notice&amp;page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
<a href="./board.php?bo_table=notice&amp;page=3" class="pg_page">3<span class="sound_only">페이지</span></a>
<a href="./board.php?bo_table=notice&amp;page=3" class="pg_page pg_end">맨끝</a>
</span></nav>


</div>



