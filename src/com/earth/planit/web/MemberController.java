package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	/*
		MemberController 
		1] 로그인 페이지
		2] 메인으로 이동
		3] 회윈가입 페이지
		4] 일반 회원 마이페이지 
		
	
	*/
	@RequestMapping("/member/login/login.it")
	public String gotoLogin()throws Exception{
		return "login/login.theme";
	}
	
	@RequestMapping("/Plait/Planit.it")
	public String gotoMain()throws Exception{
		return "main/main.tiles";
	}
	

	@RequestMapping("/member/login/Join.it")
	public String gotoJoin()throws Exception{
		return "login/join.theme";
	}
	
	@RequestMapping("/member/login/companyJoin.it")
   public String gotoCompanyJoin()throws Exception{
      return "login/companyJoin.theme";
   }
   
   @RequestMapping("/member/mypage/MyPageHome.it")
   public String gotoMyPageHome()throws Exception{
      return "mypage/MyPageHome.theme";
   }
   
   @RequestMapping("/member/login/companyLogin.it")
   public String gotoCompanyLogin()throws Exception{
      return "login/companyLogin.theme";
	   }
}

