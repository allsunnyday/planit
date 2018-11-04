<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/member/planner/after/loading.jsp" %>
<!-- 제이쿼리 유효성검증용 플러그인 -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
  <script>

	$(function(){
		$('#partnerJoinForm').validate({rules:{
			  
			  /* business_no,p_name,name,p_id,pwd,partnerpwdcheck ,email,address,Tel,partnerTermCheck*/
			  business_no:'required',
			  p_name:'required',
			  name:'required',
			  p_id:{required:true,minlength:4},
			  checkcomplite:{required:true,minlength:1},
			  pwd:{required:true,minlength:4},
			  partnerpwdcheck:{required:true,minlength:4,equalTo:'#pwd'},
			  email:'required',
			  address:'required',
			  tel:{required:true,minlength:8},
			  partnerTermCheck:{required:true,minlength:1}
	
			      
			  },messages:{
				  business_no:{required:'사업자 번호를 입력하세요'},
				  name:{required:'회사명을 입력하세요'},
				  p_name:{required:'대표자이름을 입력하세요'},
				  p_id:{required:'아이디를 입력해주세요'},
				  checkcomplite:{required:'아이디 중복검사가 필요합니다'},
				  pwd:{required:'비밀번호를 입력하세요',minlength:'비밀번호는 최소 4자 이상 입력해주세요'},
				  partnerpwdcheck:{required:'비밀번호확인을 입력하세요',minlength:'비밀번호는 최소 4자 이상 입력해주세요',equalTo:'비밀번호가 일치하지 않습니다'},
			   	  email:{required:'이메일을 입력하세요'},
			   	address:{required:'주소를 입력하세요'},
			   	tel:{required:'전화번호를 입력하세요'},
			   	partnerTermCheck:{required:'이용약관에 동의해주세요',minlength:'이용약관에 동의해주세요'}
		
			  }});
	});  
	/*아이디 중복검사 추가 checkbox,display none 으로 체크박스 주고 밸리데이트로 했는지 안했는지 검사  */
	/*아이디 중복검사 추가 checkbox,display none 으로 체크박스 주고 밸리데이트로 했는지 안했는지 검사 _아이디 중복확인 다시하기*/
  </script>
  
  <script>
  console.log( '체크박스1:'+ $("#checkcomplite:checked").length );
 $('input:checkbox[name="checkcomplite"]').is(":checked") == false;
  console.log( '체크박스2:'+ $("#checkcomplite:checked").length );
//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
var idck = 0;
//var checkcomplite=document.getElementById("checkbox").checked;
$(function() {
    //idck 버튼을 클릭했을 때 
    $("#p_idcheck").click(function() {
    	isCheckComplite=true;
        //userid 를 param.
        var p_id =  $("#p_id").val(); 
       
        $.ajax({
            async: true,
            type : 'POST',
            data : p_id,
            url : "<c:url value='/planit/member/partner/p_idcheck.it'></c:url>",
            dataType : "text",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                if (data > 0) {
                    
                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                    $("#p_id").focus();
               
                } else {
                	console.log(data);
                    alert("사용가능한 아이디입니다.");
               
                    $("#pwd").focus();
                    
                    idck = 1;
                    $('input:checkbox[name="checkcomplite"]').is(":checked") == true;

              
                }
            },
            error : function(error) {
                
                alert("error : " + error);
            }
        });
    });
});
 
 
</script>
  
  <script type="text/javascript">
  
        
</script>

<!--*****************************************
	
*********************************************  -->
<div style="padding-top: 70px;"></div>
<section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-8 col-md-8 col-sm-8 col-xs-12 col-sm-offset-2 clearfix">
        
        <div class="clearfix"></div>

        <div class="divider"></div>

        <h5 class="title">Company Information</h5>
		<form id="partnerJoinForm" name="partnerJoinForm"action="<c:url value='/member/login/PartnerJoinFormProcess.it'></c:url>" method="post">
	      	 <div>
		          <label for="email">Business Number <span class="required">*</span></label>
		          <input type="text" name="business_no" id="business_no" class="form-control" placeholder="Business Number">
		     </div>
		     <div>
	          <label for="email">Company Name<span class="required">*</span></label>
	          <input type="text" name="name" id="name" class="form-control" placeholder="Company Name">
	          </div>
		     <div>
	          <label for="fname">Name <span class="required">*</span></label>
	          <input type="text" name="p_name" id="p_name" class="form-control" placeholder="Name">
	      </div>
	
	        <div class="clearfix"></div>
	        <div class="divider"></div>
	
	        <h5 class="title">Account</h5>
	
	       <div>
	          <label for="cardnumber">ID<span class="required">*</span></label>
	        	<br/>
	          <input type="text" name="p_id" id="p_id" class="form-control" placeholder="아이디를 입력해주세요" style="width:87%;display:inline-block;">
	        	<Button id="p_idcheck" >중복확인</Button>
	        	<input type="checkbox" style="display:none" id="checkcomplite" name="checkcomplite"/>
	        	<input type="checkbox" style="display:none" id="onemorecheck" name="onemorecheck"/>
	      	</div>
	       <div>
	          <label for="cvc">Password <span class="required">*</span></label>
	          <input type="password" name="pwd" id="pwd" class="form-control" placeholder="비밀번호를 입력해주세요">
	       </div>
	       <div>
	          <label for="ncard">Password Checking<span class="required">*</span></label>
	          <input type="password" name="partnerpwdcheck" id="partnerpwdcheck" class="form-control" placeholder="비밀번호를 다시한번 입력해주세요">
	      </div>
	       <div>
	          <label for="ncard">Email <span class="required">*</span></label>
	          <input type="email" name="email" id="email" class="form-control" placeholder="이메일을 입력해주세요">
			</div>
	          <div class="clearfix"></div>
	
	          
	      
	
	        <div class="clearfix"></div>
	        <div class="divider"></div>
	
	        <h5 class="title">Detail Information</h5>
	
	        <div>
	          <label for="baddress">Address</label>
	          <input type="text" name="address" id="address" class="form-control" placeholder="사업장 주소를 입력해주세요">
	          </div>
	           <div>
	          <label for="baddress1">Tel</label>
	          <input type="text" name="tel" id="tel" class="form-control" placeholder="전화번호를 입력해주세요">
	          </div>
	         <!--  <label for="bcity">Type of Business</label> -->
	         <!--  <input type="text" name="typeofbusiness" id="typeofbusiness" class="form-control" placeholder="업종을 입력해주세요"> -->
	         <!--  <label for="bzip">Zip / Postal Code </label>
	          <input type="text" name="bzip" id="bzip" class="form-control" placeholder="Your ZIP or postal code"> -->
	
	          <div class="clearfix"></div>
	
	          <br>
	          <div class="clearfix"></div>
	         <!--  <button class="button">SHOW TERMS</button> -->
				         <!-- Large modal -->
			<div>
				<button type="button" class="button" data-toggle="modal" data-target=".bs-example-modal-lg">SHOW TERMS</button>
				
				<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <div class="modal-body">
				      
				      <h2>플랜잇플래너 서비스 이용약관</h2>
	<br>
	
	<h3>제 1 장 총 칙</h3>
	<h4>제1조 목적</h4>
	이 약관은 플랜잇(www.planit.co.kr, www.planitplanner.com, www.planittour.com) 서비스(이하 "서비스"라 합니다)의 이용과 관련하여 현행 법령에 위반하지 않는 범위 내에서 회원의 기본적인 권리와 책임 및 당사와의 중요사항을 정하는 것을 목적으로 합니다.<br>
	<br>
	<h4>제2조 용어의 정의</h4>
	이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
	 - '서비스'란 '회원'이 이용할 수 있는 플랜잇플래너 및 관련 제반 서비스를 의미합니다.<br>
	 - '회원'이라 함은 '서비스'에 접속하여 이 약관에 동의하여 '서비스제공자'와 '이용계약'을 체결하고 '서비스제공자'의 '서비스'를 이용하는 자를 말합니다.<br>
	 - '이용계약'이라 함은 이 약관에 따라 '서비스제공자'와 '회원'간에 체결하는 계약을 말합니다.<br>
	 - '아이디(ID)'라 함은 '회원'의 식별 및 '서비스'이용을 위하여 '회원'이 정하고 '서비스제공자'가  승인하는 문자와 숫자의 조합을 말합니다.<br>
	 - '비밀번호'라 함은 '회원'의 본인 여부를 확인하고 정보보호를 위해 '회원' 자신이 선정한 문자와 숫자의 조합을 말합니다.<br>
	 - '게시물'이라 함은 '회원'이 '서비스'를 이용함에 있어 게시한 부호,문자,화상 등의 정보형태의 글,사진,동영상 및 각종 화일과 링크 등을 말합니다.<br>
	<br>
	<h4>제3조 약관의 효력 및 변경</h4>
	(1) '서비스제공자'는 이 약관의 내용을 '회원'이 쉽게 알 수 있도록 '이용약관'화면 및 회원가입 절차시 게시합니다.<br>
	(2) 이 약관은 '서비스제공자'가 플랜잇플래너를 통해 공시함으로서 효력을 발생합니다. <br>
	(3) 이 약관에 동의하고 가입을 한 '회원'은 약관에 동의한 시점부터 약관의 적용을 받습니다.<br>
	(4) '서비스제공자'는 '약관의규제에관한법률', '정보통신망이용촉진및정보보호등에관한법률' 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
	(5) '회원'은 개정약관에 동의하지 않을 경우 이용계약을 해지할 수 있습니다. 개정 시행일 이후 '회원'이 '서비스'를 이용하는 경우 개정약관에 동의한 것으로 간주합니다.<br>
	<br>
	<h4>제4조 약관 외 사항의 준칙</h4>
	'서비스제공자'는 이 약관에서 정하지 않은 사항에 대해서는 관계법령, '서비스제공자'가 정한 '서비스'의 개별이용약관 또는 세부이용지침 등의 규정을 따르게됩니다.<br>
	<br><br>
	<h3>제 2 장 서비스 이용계약 체결</h3>
	<h4>제5조 이용 계약의 성립</h4>
	'이용계약'은 '회원이 되고자 하는 자'가 약관의 내용에 동의하여 '서비스제공자'가 요청하는 양식에 정보를 입력하고 가입을 함으로써 체결됩니다.<br>
	<br>
	<h4>제6조 회원가입 및 변경</h4>
	(1) '회원'으로 가입하여 '서비스'를 이용하기 위해서는 '서비스제공자'에서 요청하는 정보(이름, 이메일주소, 생년월일 등)을 제공하여야 합니다.<br>
	(2) 제1항에 따른 신청에 있어 '서비스제공자'는 '회원'의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.<br>
	(3) '회원'가입은 반드시 본인의 정보를 통해야 하며, 타인의 명의와 개인정보를 무단으로 도용하거나 허위의 정보를 등록한 '회원'의 경우 '아이디'가 삭제되거나 관계법령에 따라 처벌을 받을 수 있습니다.<br>
	(4) '회원'은 언제든지 실명, 주민등록번호, 아이디를 제외한 개인의 정보를 열람하고 수정할 수 있습니다.<br>
	(5) '회원'의 '아이디' 및 '비밀번호'의 관리 책임은 '회원'에게 있습니다. 이를 소홀히 관리하여 발생하는 '서비스'이용상의 손해 또는 제3자에 의한 무단이용 등에 대한 책임은 '회원' 본인에게 있으므로 '서비스제공자'는 그에 대한 책임을 지지 않습니다.<br>
	(6) '서비스제공자'는 다음 각 호에 해당하는 신청에 대하여는 가입을 보류 또는 제한하거나 사후에 '계약'을 해지할 수 있습니다.<br>
	 - '가입'신청자가 이 약관에 의거 이전에 '회원'자격을 상실한 적이 있는 경우, <br>
	 단, '서비스제공자'의 재가입 승인을 얻은 경우는 예외로 합니다.<br>
	 - 허위의 정보를 기재 혹은 실명이 아니거나 타인의 명의 또는 정보를 무단으로 이용한 경우.<br>
	 - 14세 미만 아동이 법정대리인의 동의를 얻지 아니한 경우.<br>
	 - 관계 법령을 위반하거나 사회적 미풍양속을 저해할 목적으로 '계약'을 신청한 경우.<br>
	 - '회원'으로 등록하는 것이 '서비스제공자'의 기술상 지장이 있을 경우.<br>
	 - 신청한 '아이디' 또는 '비밀번호'가 사생활침해 가능할 경우 혹은 운영자 등의 명칭과 오인될 우려가 있는 경우.<br>
	<br>
	<br>
	<h3> 제 3 장 계약 당사자의 의무</h3>
	<h4>제7조 '서비스제공자'의 의무</h4>
	(1) '서비스제공자'는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 지속적이고 안정적으로 '서비스'를 제공하기 위하여 최선을 다하여 노력합니다.<br>
	(2) '서비스제공자'는 '회원'의 개인정보 보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.<br>
	(3) '서비스제공자'는 안정적인 '서비스' 제공을 위하여, 설비에 장애가 생기거나 손상된 때에는  부득이한 사유가 없는 한 지체없이 이를 수리 또는 복구합니다.<br>
	(4) '서비스제공자'는 회원의 신상정보를 본인의 승낙없이 외부로 유출하지 않습니다.  단, 적법한 절차를 거친 국가기관의 요구나 수사상 또는 기타 공익을 위하여  필요하다고 인정되는 경우에는 예외로 합니다.<br>
	(5) '서비스제공자'는 '회원'으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우, 이를 처리하여야 합니다.  '회원'이 제기한 의견이나 불만사항에 대해서 '회원'에게 처리과정 및 결과를 전달합니다.<br>
	<br>
	<h4>제8조 회원의 의무</h4>
	(1) '회원'은 다음 각 호의 행위를 하여서는 안 됩니다.<br>
	 - 이용 신청 또는 변경 시 허위내용의 기재 및 타인의 정보도용<br>
	 - 본 '서비스' 이용 중 습득한 정보를 상업적 목적으로 출판, 방송 등을 통하여 '서비스제공자'의 허락없이 제3자에게 노출시키는 행위<br>
	 - '서비스제공자'와 제3자의 권리나 저작권 등 지적재산권에 대한 침해<br>
	 - '서비스제공자'와 제3자의 명예를 손상시키거나 운영을 방해하는 행위<br>
	 - 해킹, 광고를 통한 수익, 음란사이트를 이용한 상업행위, 상용소프트웨어 불법배포<br>
	 - 기타 불법적이거나 부당한 행위<br>
	(2) '회원'은 관련법규, 이 약관의 규정, '서비스'와 관련한 공지사항 등을 준수하여야 하며, 기타 '서비스제공자'의 업무에 방해되는 행위를 하여서는 안됩니다.<br>
	<br>
	<br>
	<h3>제 4 장 서비스 이용</h3>
	<h4>제9조 서비스의 제공</h4>
	(1) '서비스제공자'는 '회원'의 가입이 완료된 시점부터 '서비스'를 개시합니다.<br>
	(2) 서비스의 이용은 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.<br>
	(3) '서비스제공자'는 '서비스'를 일정범위로 분할하여 각 범위별로 이용가능시간을 별도로 지정할 수 있으며, 이러한 경우에는 그 내용을 사전에 공지합니다.<br>
	(4) '서비스제공자'는 시스템 점검, 증설 및 교체, 고장 등 운영상의 이유가 있는 경우, '서비스' 제공을 일시적으로 중단할 수 있습니다.<br>
	<br>
	<h4>제10조 서비스의 중단</h4>
	(1)'서비스제공자'는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 &quot;서비스&quot;의 제공을 일시적으로 중단할 수 있습니다.<br>
	(2) 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 &quot;서비스&quot;를 제공할 수 없게 되는 경우에는 '서비스제공자'는 제22조에 정한 방법으로 이용자에게 통지합니다.<br>
	<br>
	<h4>제11조 서비스의 변경</h4>
	(1) '서비스제공자'는 운영상 또는 기술상 필요에 따라 제공하고 있는 '서비스'를 전부 또는 일부 변경할 수 있습니다.<br>
	(2) '서비스'의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 사유 및 내용을 변경 전 회원에게 통지하고 변경하여 제공할 수 있습니다.<br>
	<br>
	<h4>제12조 정보의 제공</h4>
	(1) '서비스제공자'는 '회원'이 '서비스'이용 중 필요하다고 인정되는 다양한 정보 또는 광고에 대해서 공지사항, 전자우편, 유무선매체 등의 방법으로 회원에게 제공할 수 있습니다.<br>
	(2) '회원'은 관련법에 따른 거래 관련 정보 및 고객문의 등에 대한 답변 등을 제외하고 언제든지 수신거절을 할 수 있습니다.<br>
	(3) '회원'에 대한 통지를 하는 경우에는 '회원'이 개인정보 기재를 소홀히 한 경우 중요한 통지를 받지 못할 수 있습니다.<br>
	<br>
	<h4>제13조 재화 등의 광고서비스 및 예약시스템 제공 </h4>
	(1) '서비스제공자'는 판매사업자를 대행하여 &quot;재화 등&quot;에 관한 광고게재의 역할을 하는 광고서비스 제공자이자 판매사업자에게 예약 시스템을 제공하는 온라인서비스 제공자로서 &quot;사이트&quot; 내에서 제공되는 &quot;재화 등&quot;에 대한 계약의 성립, 청약철회 등의 사항은 해당 &quot;재화 등&quot;을 제공하는 판매사업자의 규정에 따릅니다.<br>
	(2) '서비스 제공자'는 '회원'의 편의를 위하여 대금지급 등의 일부 서비스를 판매사업자를 대행하여 제공할 수 있습니다.<br>
	<br>
	<h4>제 14조 판매사업자에게 제공된 예약시스템 상의 예약정보에 대한 이용허가</h4>
	'서비스 제공자'는  판매사업자에게 제공한 예약시스템상에서 '회원'이 예약한 정보를 '회원'의 '서비스'의 개선을 목적으로 이용합니다. 
	다만 '서비스 제공자'는 '판매사업자'의 동의아래 '판매사업자'에게  제공된 예약시스템 상에서 '회원'이 예약할때 해당 예약정보가  (플랜잇플래너)'서비스'에 제공됨을 명시해야합니다.<br>
	<br>
	<h4>제15조 회원의 게시물</h4>
	(1) '게시물'이라 함은 '서비스'내에 '회원'이 올린 글, 사진, 그림,상품리뷰 등의 정보를 의미합니다.<br>
	(2) '회원'이 '서비스'에 등록하는 '게시물'로 인해 '회원'에게 발생하는 손해나 기타 문제의 경우, '회원'은 이에 책임을 지게 됩니다.<br>
	(3) '서비스제공자'는 다음 각 호에 해당하는 '게시물'을 '회원'의 사전 동의 없이 삭제, 이동 또는 등록거부할 수 있습니다.<br>
	 - '서비스제공자', 다른 '회원' 또는 제3자의 명예를 손상시키는 내용인 경우<br>
	 - 공공질서 및 미풍양속에 위반되는 내용을 유포하는 경우<br>
	 - 범죄 행위와 결부된다고 인정되는 내용인 경우<br>
	 - '서비스제공자', 다른'회원' 또는 제3자의 저작권 등 기타권리를 침해하는 내용인 경우<br>
	 - 승인되지 않은 광고인 경우<br>
	 - 동일한 내용을 중복하여 다수 게시하는 경우<br>
	 - 기타 관계 법령에 위배되거나 및 '게시물' 게시 원칙에 어긋라는 경우<br>
	(4) '서비스제공자'는 '게시물'등에 대하여 '정보통신망법' 및 '저작권법' 등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 '게시물'의 게시중단, 삭제 등을 요청할 수 있으며,  '서비스제공자'는 관련법에 따라 조치를 취하여야 합니다.<br>
	(5) '게시물'이 게시중단 된 경우, '게시물'을 등록한 '회원'은 재게시를 '서비스제공자'에 요청할 수 있습니다.<br>
	(6)  '서비스제공자'는 회원이 등록한 게시물을 검색사이트나 다른 사이트에 노출할 수 있습니다. 또한, 회사가 제공하는 서비스 내에서 회원 게시물을 복제, 전시, 전송, 배포할 수 있으며 2차적 저작물과 편집저작물로 작성 할 수 있습니다. 다만, 해당 게시물을 등록한 회원이 게시물의 삭제 또는 사용중지를 요청하면 회사는 관련 법률에 따라 보존해야 하는 사항을 제외하고 삭제 또는 사용을 중지합니다.<br>
	
	
	<br>
	<h4>제16조 게시물의 저작권</h4>
	(1) '회원'이 '서비스'내에 게시한 '게시물'의 저작권은 해당 게시물의 저작자에게 귀속됩니다.<br>
	(2) '서비스제공자'는 '서비스'의 운영, 홍보 등의 목적으로 서비스 내외부에 '게시물'을 노출할 수 있습니다. 이 경우 '게시물'의 일부 수정 및 편집이 발생할 수 있습니다.<br> 
	단, 이 경우 '회원'은 언제든지 문의 게시판 또는 문의메일(planitteam@gmail.com)을 통해 해당 '게시물'대해 삭제, 비공개 등의 요청을 할 수 있습니다.<br>
	(3) '서비스제공자'는 제2항 이외의 방법으로 '회원'의 '게시물'을 이용하고자 하는 경우에는  전화, 팩스, 전자우편 등을 통해 사전에 '회원'의 동의를 얻어야 합니다.<br>
	(4) '회원'이 탈퇴하거나 '회원'의 자격을 상실한 경우 해당 '회원'의 계정에 기록된 '게시물'은 삭제될 수 있습니다.<br>
	(5) '서비스'에 대한 저작권 및 지적재산권은 '서비스제공자'에 귀속됩니다. 단, '회원'의 '게시물' 및 제휴에 의해 제공된 저작물은 제외합니다.<br>
	<br>
	<h4>제17조 연결“회사”와 피연결“회사” 간의 관계</h4>
	(1) 상위 “회사(또는 웹사이트 등)”과 하위 “회사(또는 웹사이트 등)”가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “회사”이라고 하고 후자를 피연결 “회사”이라고 합니다.<br>
	(2) 연결“회사”는 피연결“회사”가 독자적으로 제공하는 &quot;재화 등&quot;에 의하여 &quot;이용자&quot;와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“회사”의 초기화면 또는 연결되는 시점에 명시하기로 하고 그 거래에 대한 어떤 보증 책임도 지지 않습니다.<br>
	<br><br>
	<h3>제 5 장 계약 해지 및 이용 제한</h3>
	<h4>제18조 계약 해지</h4>
	(1) '회원'은 언제든지 '회원정보>회원탈퇴' 메뉴를 통해 이용계약 해지 신청을 할 수 있으며 신청즉시 회원탈퇴와 함께 이용계약이 해지됩니다.<br>
	(2) '서비스제공자'는 '회원'의 게시물들을 직접 삭제할 수 있는 링크를 제공합니다.<br>
	<br>
	<h4>제19조 서비스 이용제한</h4>
	'서비스제공자'는 다음 각 호에 해당하는 경우에 '회원'의 요청 혹은 '서비스제공자'의 권한으로 '회원'의 '서비스'이용을 제한할 수 있습니다.<br>
	 - 이 약관의 의무를 위반하거나 '서비스'의 정상적 운영을 방해한 경우.<br>
	 - '저작권법', '컴퓨터프로그램보호법', '정보통신망법' 등의 관련법규를 위반하여  불법프로그램 배포, 운영방해, 해킹 등의 행위를 한 경우.<br>
	 - 이 타인에게 혐오감을 주거나 미풍양속에 저해하는 행위 또는 그러한 정보를 '서비스'에 공개하는 경우.<br>
	 - '서비스제공자'의 동의 없이 영리를 목적으로 '서비스'를 사용하는 경우.<br>
	 - 기타 불법적이거나 부당한 행위로 판단되는 경우.<br>
	<br><br>
	<h3>제 6 장 손해배상 및 기타사항</h3>
	<h4>제 20조 손해배상</h4>
	(1) '서비스제공자'의 과실로 인하여 '회원'에게 손해를 끼친 경우 이를 배상하여야 한다.  단 이는 유료로 제공하는 서비스의 이용에 한한다.<br>
	(2) '회원'이 '서비스'를 이용함에 있어 불법적 행위 또는 약관의 위반으로 인해 '서비스제공자'에 손해가 발생한 경우,  당 '회원'은 이를 배상하여야 한다.<br>
	<br>
	<h4>제 21조 면책사항</h4>
	(1) '서비스제공자'는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는  서비스 제공에 대한 책임이 면제됩니다.<br>
	(2) '서비스제공자'는 '회원'이 '서비스'에 게시한 정보, 자료, 사실의 신뢰도 및 정확성 등 내용에 대하여 책임을 지지 않습니다.<br>
	(3) '서비스제공자'는 회원이 '서비스제공자'가 제공하는 '서비스'로부터 기대되는 이익을 얻지 못하였거나  '서비스'의 이용으로 발생하는 손해에 대하여 책임을 지지 않습니다.<br>
	(4) '서비스제공자'는 '회원'의 귀책사유로 인한 '서비스' 이용장애에 대하여 책임을 지지 않습니다.<br>
	(5) '서비스제공자'는 '회원'간 또는 '회원'과 제3자 상호간에 '서비스'를 매개로 하여 거래 등을 한 경우 책임이 면제됩니다.<br>
	<br>
	<h4>제 22조 '회원'에 대한 통지</h4>
	(1) '서비스제공자'가 '회원'에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 '회원'이 지정한 전자우편주소로 할 수 있습니다.<br>
	(2) '서비스제공자'는 '회원' 전체에 대한 통지의 경우 7일 이상 '서비스제공자'의 게시판에 게시함으로서 제1항의 통지에 갈음할 수 있습니다.<br>
	<br>
	<h4>제 23조 재판권 및 준거법</h4>
	(1) '서비스제공자'와 '회원'간 제기된 소송은 대한민국법을 준거법으로 합니다.<br>
	(2) '서비스제공자'와 '회원'간 발생한 분쟁에 관한 소송은 '서비스제공자'의 소재지의 관활법원에 제소합니다.<br>
	<br><br>
	부 칙<br>
	본 약관은 2012년 5월 1일부터 적용됩니다.<br>
	<br><br>
	부 칙<br>
	본 약관은 2017년 1월 19일부터 적용됩니다.<br> 
	<br><br>
	부 칙<br>
	본 약관은 2018년 1월 29일 수정되었습니다.<br> 
	수정사항은 2018년 3월 1일부터 시행됩니다.<br> 
				      </div>
				    </div>
				  </div>
				</div>
				</div>
	          <div class="clearfix"></div>
			<div class="form-group">
			<div>
		          <label class="checkbox-inline">
		                    <input name="partnerTermCheck" id="partnerTermCheck" type="checkbox" value="option1">
		                    <label for="partnerTermCheck" class="error"></label>
		                    <strong>AGREE TO TERMS</strong>
		                </label>
		</div>
		          <br><br>
	           </div>
	          <br>
	       
	          <!-- <button type="submit" class="button large btn-block">회원가입</button> -->
	          <input type="submit" class="button large btn-block" value="회원가입"/>
	</form>
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

