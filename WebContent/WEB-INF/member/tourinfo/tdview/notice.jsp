<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="http://images.jautour.com/jautour/styles/Content/popup_style.css" rel="stylesheet"/>
<link href="http://images.jautour.com/jautour/styles/Content/common2016.css" rel="stylesheet"/>
<link href="http://images.jautour.com/jautour/styles/Content/layout2016.css" rel="stylesheet"/>
<link href="http://images.jautour.com/jautour/styles/Content/main2016.css" rel="stylesheet"/>
<script  type="text/javascript" src="http://images.jautour.com/jautour/scripts/common.js"></script>
<script  type="text/javascript" src="/include/js/common2015.js"></script>
<script  type="text/javascript" src="http://images.jautour.com/jautour/scripts/swfobject.js"></script>
<script  type="text/javascript" src="/include/js/Js_common_2012.js"></script>
<script  type="text/javascript" src="/include/js/zoom.js"></script>
<link rel="stylesheet" type="text/css" href="http://images.jautour.com/jautour/styles/product/CSS/csqa.css" / >
<link rel="stylesheet" href="http://images.jautour.com/jautour/styles/ui/redmond/jquery.ui.all.css">
<script  type="text/javascript" src="http://images.jautour.com/jautour/scripts/jquery.js"></script>
<script type="text/javascript" src="http://images.jautour.com/jautour/scripts/2012NEW/jcarousellite_1.0.1.min.js"></script>
<script src="http://images.jautour.com/jautour/scripts/ui/jquery.ui.core.js"></script>
<script src="http://images.jautour.com/jautour/scripts/ui/jquery.ui.widget.js"></script>
<script src="http://images.jautour.com/jautour/scripts/ui/jquery.ui.datepicker.js"></script>
<script src="http://images.jautour.com/jautour/scripts/ui/jquery.ui.datepicker-ko.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="/Scripts/jquery.banner.js"></script>


<body >

<script type="text/javascript">
 function dsmBookmark() {
	        var title = "plan-it"; //고정타이틀을 원하시면 이곳에 입력해주세요
	        var url = "http://www.jautour.com"; //고정URL을 입력하고 싶으시면 이곳에 입력해주세요
	        
	        if (window.sidebar && window.sidebar.addPanel) { // Firefox
	            window.sidebar.addPanel(title, url, "");
	        }
	        else if (window.opera && window.print) { // Opera
	            var elem = document.createElement('a');
	            elem.setAttribute('href', url);
	            elem.setAttribute('title', title);
	            elem.setAttribute('rel', 'sidebar');
	            elem.click();
	        }
	        else if (document.all) { // Internet Explorer
	            window.external.AddFavorite(url, title);
	        }
	        else {
	            alert("Ctrl + D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	            return
	        }
	    };

		function searchWordClick(word) {
	        document.getElementById("topSearchWord").value = word;
	        TopSearchSubmit();
	    }
		
	  function sendmobile_call() {
		  var data_string = "";
		  $.ajax({
			  type: "GET",
			  url: "/Home/SendMobile",
			  data: data_string,
			  success: function (result) {
				  $("#sendmobile_parent").html(result);
			  }
		  });
	  }

	  function logout_call() {
	  
		  var data_string = "";
		  $.ajax({
			  type: "GET",
			  url: "/account/userAccountLogout.asp",
			  data: data_string,
			  success: function (result) {
			  
			  }
		  });
		  
		  var data_string = "";
		  $.ajax({
			  type: "GET",
			  url: "/member/logout?refererUrl=",
			  data: data_string,
			  success: function (result) {
				  
			  }
		  });		  
		  
	  }
	  
	  function sendmobile_close() {
		  $("#sendmobile_parent").html("");

	  }

		function TopSearchSubmit() {

          if ($("#topSearchWord").val() == "") {
              alert("검색어를 입력하세요");
              return;
          }
          else {

              var tmp = $("#topSearchWord").val();
              var pattern = /([^가-힣\x20^a-z^A-Z^0-9])/i;

              if (pattern.test(tmp)) {
                  alert('잘못된 검색어 입니다.');
                  return;
              }
              else {
                  $("#LayoutTopSearchForm").attr("action", "/product/productSearchList");
                  $("#LayoutTopSearchForm").submit();
              }
          }
      }
	
	function kkk()
	{
		if($("#WholeMeneArea").css("display") == "none")
		    {
				$("#WholeMeneArea").show();		
				$("#depth01").show();				
				$("#depth01_1").show();
				$("#aCategoryOpen").hide(); //카테고리 전체보기 숨기기
				$("#aCategoryClose").show(); //카테고리 전체닫기 보이기
			}else{
				$("#WholeMeneArea").hide();	
				$("#aCategoryClose").hide(); //카테고리 전체닫기 숨기기
				$("#aCategoryOpen").show(); //카테고리 전체보기 보이기				
			}
		
	}	
</script> 
<script type="text/javascript">	
	$gnb = $("#gnb").find("li");
	$gnb.hover(function(){ 
		var $this = $(this)
			, bottomLayer = $this.find('.wrap_depth_outer');
		if (bottomLayer.attr("id") != "gnb05_drop" && bottomLayer.attr("id") != "gnb06_drop" && bottomLayer.attr("id") != "gnb07_drop" && bottomLayer.attr("id") != "gnb09_drop" && bottomLayer.attr("id") != "gnb010_drop") {	//제주, 항공, 호텔 아니면 열리게					
			bottomLayer.show();
		}
	}	 
	,function(){
		var $this = $(this);
		$this.find('.wrap_depth_outer').hide();
	});   
	
	//전체보기
	$fullmenu = $("#fullmenu").find("li");
	$fullmenu.hover(function(){
		$(this).find('.depth_inner_wrap').show();
		$(this).addClass("on_1depth");   		
		$(".on_1depth").delegate("li","mouseover",function(){     //gnb 메뉴 2depth 마우스 오버시
			$(this).addClass("on");				
			$(this).find('.area_mn').show();
			
			var $_depth_01 = $(this)
				  , $_depth_01_index = $_depth_01.index()
		});
	},function(){
		$(this).find('.depth_inner_wrap').hide();
		$(this).removeClass("on_1depth");
		$(".on_1depth").delegate("li","mouseout",function(){
			$(this).find('.area_mn').hide(); 
			$(this).removeClass("on");	
		});	
	});	
</script>
<style>
    .select_a {color:#d61311;background:#f1f1f1;text-decoration:none;} /* 박사원 추가 메뉴 선택시*/
</style>

<!--E:header--> 
<div style="padding-top: 70px">
<!-- container s -->
<div id="container">

<!-- LNB / 좌측 배너 -->
<div class="leftArea">
<!--좌측메뉴-고객센터-->
		<div class="lnb_topTitle" >
		  <h2>공지사항</h2>
		</div>
          <!--서브좌측메뉴-->
          <div class="clearfix">
            <h2 class="hidden">LNB</h2>
            <nav class="lnb0">
            <div class="subMenuWrea">
              <ul class="ul_sub2Depth">
                <li class="subMtit childone">
                  <a title="알립니다">알립니다</a>
				  <ul class="ul_sub3Depth">
                    <li class="subS01"><a href="/customer/notice/list.asp" target="_self" title="PLAN-IT 공지사항">PLAN-IT 공지사항</a></li>
                  </ul>
                </li>
				<li class="subMtit childone">
                  <a href="/customer/faq/list.asp" title="궁금해요 자유투어">궁금해요 </a>
				  <ul class="ul_sub3Depth">
                    <li class="subS01"><a href="/customer/faq/list.asp" target="_self" title="자주하는 질문">자주하는 질문</a></li>
					<li class="subS01"><a href="/customer/telinfo/telMoneyinfo.asp" target="_self" title="부서별 연락처/팩스안내">부서별 연락처/팩스안내</a></li>
					<li class="subS01"><a href="/customer/info/location.asp" target="_self" title="찾아오시는 길">찾아오시는 길</a></li>
                  </ul>
                </li>
				<li class="subMtit childone">
                  <a href="/customer/travelpfaq/list.asp" title="1:1 맞춤상담">1:1 맞춤상담</a>
				  <ul class="ul_sub3Depth">
                    <li class="subS01"><a href="/customer/travelpfaq/list.asp" target="_self" title="일반여행 Q&A">일반여행 Q&A</a></li>
					<li class="subS01"><a href="/customer/travelbfaq/list.asp" target="_self" title="자유여행 Q&A">자유여행 Q&A</a></li>
					<li class="subS01"><a href="/customer/travelgfaq/list.asp" target="_self" title="골프여행 Q&A">골프여행 Q&A</a></li>
					<li class="subS01"><a href="/customer/travelhfaq/list.asp" target="_self" title="허니문여행 Q&A">허니문여행 Q&A</a></li>
					<li class="subS01"><a href="/customer/traveldfaq/list.asp" target="_self" title="국내여행 Q&A">국내여행 Q&A</a></li>
					<li class="subS01"><a href="/customer/travelafaq/list.asp" target="_self" title="항공권 Q&A">항공권 Q&A</a></li>
                  </ul>
                </li>
				<li class="subMtit childone">
                  <a href="/customer/praise/list.asp" title="고객의 의견">고객의 의견</a>
				  <ul class="ul_sub3Depth">
                    <li class="subS01"><a href="/customer/praise/list.asp" target="_self" title="칭찬합니다">칭찬합니다</a></li>
					<li class="subS01"><a href="/customer/inconvenience/inconvenience.asp" target="_self" title="이런 점 고쳐주세요">이런 점 고쳐주세요</a></li>
					<li class="subS01"><a href="/customer/offer/offer.asp" target="_self" title="제안합니다">제안합니다</a></li>
					<li class="subS01"><a href="/customer/alliance/write.asp" target="_self" title="제휴문의">제휴문의</a></li>
                  </ul>
                </li>
              </ul>
            </div>
            </nav>
          </div>
          <!--//서브좌측메뉴-->
		<!--//좌측메뉴-고객센터-->
</div>
<!-- LNB / 좌측 배너 -->
 

<!-- 컨텐츠 s -->
 
<div class="contentArea">
	<p class="csQaTop"><img src="http://images.jautour.com/jautour/images/customer/cs/csqa_top_n.gif" alt="공지사항자유투어의소식을 알려드립니다. 아래소식을 꼭 참고해 주세요  고객님들께 최고의 서비스를 제공할 수 있도록 노력하겠습니다." /></p>
            <!-- 검색하기 -->
 <form id="comments_form" name="comments_form" method="post" >  
            <!-- 검색하기 -->
 </form>
            
			<!-- 게시판 -->
 
			<table cellspacing="0" id="boardcontent" class="boardtype1" title="공지사항">
            <caption>
            공지사항
            </caption>
            <thead>
			<tr>
                <th scope="col" width="60" ><img src="http://images.jautour.com/jautour/images/customer/board_tit_1.gif" alt="번호" class="titTxt1" /></th>
                <th scope="col" width="90"><img src="http://images.jautour.com/jautour/images/customer/board_tit_2.gif" alt="분류"  class="titTxt2"/></th>
                <th scope="col" width="425"><img src="http://images.jautour.com/jautour/images/customer/board_tit_3.gif" alt="제목"  class="titTxt3"/></th>
                <th scope="col" width="84"><img src="http://images.jautour.com/jautour/images/customer/board_tit_5.gif" alt="작성일" class="titTxt5" /></th>
				<th scope="col" width="55"><img src="http://images.jautour.com/jautour/images/customer/board_tit_4.gif" alt="조회" class="titTxt4"/></th>
                
                
            </tr>
            </thead>
            <tbody>
            
						   <tr>
                <td class="num"><img src="http://images.jautour.com/jautour/images/customer/ico_notice.gif" alt="공지" /></td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=70681&col=&search=&bow=&gotoPage=1'>[당첨자 공지] 8월 여행후기 당첨자를 공지합니다.</a>&nbsp;</td>
                <td class="date">2018-09-03</td>
				<td class="hit">260</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1475</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=63493&col=&search=&bow=&gotoPage=1'>[당첨자 공지] 7월 여행후기 당첨자를 공지합니다.</a>&nbsp;</td>
                <td class="date">2018-08-01</td>
				<td class="hit">613</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1474</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=62236&col=&search=&bow=&gotoPage=1'>[당첨자 공지] 6월 여행후기 당첨자를 공지합니다.</a>&nbsp;</td>
                <td class="date">2018-07-04</td>
				<td class="hit">1195</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1473</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=60146&col=&search=&bow=&gotoPage=1'> [당첨자 공지]5월 여행후기 당첨자를 공지합니다</a>&nbsp;</td>
                <td class="date">2018-06-07</td>
				<td class="hit">1014</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1472</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=58503&col=&search=&bow=&gotoPage=1'>[당첨자 공지]4월 여행후기 당첨자를 공지합니다.</a>&nbsp;</td>
                <td class="date">2018-05-09</td>
				<td class="hit">1551</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1471</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=58300&col=&search=&bow=&gotoPage=1'>[당첨자공지]영화<레슬러> 예매권 이벤트 당첨자 공지</a>&nbsp;</td>
                <td class="date">2018-05-03</td>
				<td class="hit">2056</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1470</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=57815&col=&search=&bow=&gotoPage=1'> [당첨자 공지]3월 여행후기 당첨자를 공지합니다</a>&nbsp;</td>
                <td class="date">2018-04-03</td>
				<td class="hit">4893</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1469</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=57604&col=&search=&bow=&gotoPage=1'>(주)자유투어 제24기 결산공고 </a>&nbsp;</td>
                <td class="date">2018-03-20</td>
				<td class="hit">4853</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1468</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=57257&col=&search=&bow=&gotoPage=1'>외부감사인 선임보고</a>&nbsp;</td>
                <td class="date">2018-02-23</td>
				<td class="hit">8460</td>
              
            </tr>
            
            <tr> <td colspan="6" height="1" style="padding:0"><img src="http://images.jautour.com/jautour/images/customer/img_dotline.gif" height="1" alt=""/></td></tr>
						
						   <tr>
                <td class="num">1467</td>
                <td class="kind">PLAN-IT 공지</td>
                <td class="title"><a href='view.asp?b_idx=57256&col=&search=&bow=&gotoPage=1'>[당첨자 공지]11월~2월 동계성수기 기획전 이벤트 당첨자 공지</a>&nbsp;</td>
                <td class="date">2018-02-23</td>
				<td class="hit">2901</td>
              
            </tr>
             
						
          
            
            <tr>
            	<td colspan="6" class="btm"><img src="http://images.jautour.com/jautour/images/customer/board_btm_bg.gif" alt="" />
                </td>
            </tr>
            </tbody>
            
           
            </table>	
           
			<!--  게시판 -->
 
            
            <!-- 페이지Num -->
 
             
           <div class='paginate'> <a class='pre_end'><img src='http://images.jautour.com/jautour/images/customer/ico_pre_01.gif'  alt='맨앞'/></a><a class='pre'><img src='http://images.jautour.com/jautour/images/customer/ico_pre_02.gif' alt='이전' /></a> <strong>1</strong> <a href="?gotoPage=2&col=&search=&bow=" >2</a>  <a href="?gotoPage=3&col=&search=&bow=" >3</a>  <a href="?gotoPage=4&col=&search=&bow=" >4</a>  <a href="?gotoPage=5&col=&search=&bow=" >5</a>  <a href="?gotoPage=6&col=&search=&bow=" >6</a>  <a href="?gotoPage=7&col=&search=&bow=" >7</a>  <a href="?gotoPage=8&col=&search=&bow=" >8</a>  <a href="?gotoPage=9&col=&search=&bow=" >9</a>  <a href="?gotoPage=10&col=&search=&bow=" >10</a>  <a href="?gotoPage=11&col=&search=&bow=" class='next'><img src='http://images.jautour.com/jautour/images/customer/ico_next_02.gif' alt='다음' /></a> <a href="?gotoPage=148&col=&search=&bow=" class='next_end'><img src='http://images.jautour.com/jautour/images/customer/ico_next_01.gif' alt='맨뒤'  /></a></div> 
            <!-- 페이지Num -->
 
             
</div>
<!-- 컨텐츠 e -->
 
 
</div>


<script type="text/javascript" src="/include/js/zoom.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(window).scroll(function () {
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.    		
			
            if (position > 159) {
                $("#sideArea").addClass("quick_fixed_top");
            } else if (position < 161) {
                $("#sideArea").removeClass("quick_fixed_top");
                $("#sideArea").addClass("asdie - fixed");              
            }		

        });
				
		$(window).resize(function(){
			var widthsize = $(window).width();
			if(widthsize < 1180)
			{	
              $("#divFixedArea").removeClass("open");
              $("#divFixedArea").addClass("close");
              $("#divFixedArea_C").val("close");			
			}			

		   });
		
    })

    function zoom(str) {
        zoomUtil(str);
        $("#sideArea").addClass("quick_fixed_top");
        return false;
    }      			
</script>  

<!-- *) 공통 분석스크립트  -->
<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtc16.acecounter.com','8080','AS1A39223660095','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
<noscript><img src='http://gtc16.acecounter.com:8080/?uid=AS1A39223660095&je=n&' border=0 width=0 height=0></noscript>	
<!-- AceCounter Log Gathering Script End --> 
<!-- AceClick WebSite Gathering Script V0.9.20131114 -->
<script type="text/Javascript">
if(typeof(AMRS_GC)=='undefined'){
var AMRS_O=[];var AMRS_CK = new Image();var AMRS_GC='AG4A408192873';var AMRS_GD='mrsg.aceclick.co.kr';var AMRS_GP='8080';var AMRS_TI=(new Date()).getTime();
var AMRS_PR = location.protocol=="https:"?"https://"+AMRS_GD+":843":"http://"+AMRS_GD+":"+AMRS_GP; AMRS_CK.src = AMRS_PR+'/?cookie'; 
if(typeof(Array.prototype.push)!='undefined'){ AMRS_O.push(AMRS_CK);}
document.writeln("<scr"+"ipt type='text/Javascript' src='"+location.protocol+"//mrss.aceclick.co.kr/aceclick.js?rt="+AMRS_TI+"'></scr"+"ipt>");
}
</script>
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 968520006;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/968520006/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript>


<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"> </script> 
<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_36b10696e6f9";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>




</div>
</body>
<script type="text/javascript">

$("#bow").change(function(){
	  var strvalue="";	  
	  strvalue =  $("#bow option:selected").val();
		location.href="list.asp?bow="+strvalue;
});

function SearchSubmit(){
		if ($("#search").val()==""){
			alert("검색어를 입력하세요");
			return false;
		}else{
			$("#comments_form").attr("action","list.asp?col=b_title");
			$("#comments_form").submit();
		}
	}

</script>
<!-- etc LayOut -->
<!-- etc LayOut -->
<!-- LOGGER TRACKING SCRIPT V.40 FOR logger.co.kr / 17769 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
<!-- COPYRIGHT (C) 2002-2011 BIZSPRING INC. LOGGER(TM) ALL RIGHTS RESERVED. -->
<script type="text/javascript">var _TRK_LID="17769";var _L_TD="trk1.logger.co.kr";var _FC_TRK_CN="13480";</script>
<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";document.write(unescape("%3Cscript src='" + _CDN_DOMAIN +"/fs4/bstrk.js' type='text/javascript'%3E%3C/script%3E"));</script>
<noscript><img alt="Logger Script" width="1" height="1" src="http://trk1.logger.co.kr/tracker.tsp?u=17769&amp;js=N" /></noscript>
<!-- END OF LOGGER TRACKING SCRIPT -->


