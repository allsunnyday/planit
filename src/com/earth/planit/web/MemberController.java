package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	/*
	 * MemberController 1] 로그인 페이지 2] 메인으로 이동 3] 회윈가입 페이지 4] 일반 회원 마이페이지
	 * 
	 * 
	 */
	@RequestMapping("/planit/login/Login.it")
	public String gotoLogin() throws Exception {
		return "login/LoginForm.theme";
	}

	@RequestMapping("/Plait/Planit.it")
	public String gotoMain() throws Exception {
		return "main/main.tiles";// main은 반드시 tiles로 이동해야 함
	}


	@RequestMapping("/member/login/Join.it")
	public String gotoJoin() throws Exception {
		return "login/JoinMain.theme";
	}

	@RequestMapping("/member/login/CompanyJoin.it")
	public String gotoCompanyJoin() throws Exception {
		return "login/JoinPartnerProgress.theme";
	}

	@RequestMapping("/member/login/UserJoin.it")
	public String gotoCompanyLogin() throws Exception {
		return "login/JoinUserProgress.theme";
	}

	// ***************마이페이지 이동(일반회원)
	@RequestMapping("/planit/mypage/MyPageHome.it")
	public String gotoMyPageHome() throws Exception {
		return "mypage/MyPageHome.theme";
	}

	@RequestMapping("/planit/mypage/MyPageEditProfile.it")
	public String gotoMyPageEditProfile() throws Exception {
		return "mypage/MyPageEditProfile.theme";
	}

	@RequestMapping("/planit/mypage/MyPageEditPassword.it")
   public String gotoMyPageEditPassword()throws Exception{
	   return "mypage/MyPageEditPassword.theme";
	}
   //마이페이지에서 회원정보 및 비밀번호 변경시 기존 비밀번호 체크를 위한 프로세스
   //아직은 체크없이 바로 해당페이지로 이동합니다 :)
  /* @RequestMapping("/planit/mypage/MyPageEditProfile.it")
   public String gotoMyPageEditProfile()throws Exception{
	   return "mypage/MyPagePassCheck.theme";
   }
   @RequestMapping("/planit/mypage/MyPageEditPassword.it")
   public String gotoMyPageEditPassword()throws Exception{
	   return "mypage/MyPagePassCheck.theme";
   }*/
	   //***************마이페이지 이동(일반회원)
	   
	@RequestMapping("/planit/mypage/partner/PartnerMyPageHome.it")
	public String gotoPartnerMyPageHome() throws Exception {
		return "mypage/partner/PartnerMyPageHome.theme";
	}
}
