package com.earth.planit.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.earth.planit.service.PartnerDTO;
import com.earth.planit.service.PartnerService;

@Controller
public class PartnerController {
	/*
	 * PartnerController 1] 예약 관리 페이지 2] 사용자 문의 페이지 3]예약 상세보기 4]예약 상세보기
	 */

	@Resource(name="partnerService")
	private PartnerService service;
	
	@RequestMapping("/mypage/partner/Reservation_P.it")
	public String gotoReservation_P() throws Exception {
		return "mypage/partner/Reservation_P.theme";
	}

	@RequestMapping("/mypage/partner/Request_P.it")
	public String gotoRequest_P() throws Exception {
		return "mypage/partner/Request_P.theme";
	}

	@RequestMapping("/mypage/partner/Reservation_detail.it")
	public String gotoRequestdetail_P() throws Exception {
		return "mypage/partner/Reservation_detail.theme";
	}
	//[기업 로그인]
	@RequestMapping(value="/partner/login/LoginProcess.it", method=RequestMethod.POST)
	public String partnerLoginProcess(@RequestParam Map map, HttpSession session, Model model)throws Exception{
		// form 하위 데이터가 잘 온것을 확인! key= input태그의 name속성 
		System.out.println("id="+map.get("id")+" pwd="+map.get("pwd"));
		
		boolean isLogin = service.isPartnerLogin(map);
		System.out.println(isLogin);
		System.out.println(service.isPartnerLogin(map));
		if(isLogin) { // 회원일경우
			//로그인 처리 - 세션 영역에 저장 
			session.setAttribute("p_id", map.get("id"));
			session.setAttribute("business_no", map.get("id"));
			return "mypage/partner/PartnerMyPageHome.theme";
		}
		else { // 비회원일경우 
			model.addAttribute("loginError", "아이디와 비밀번호가 틀립니다.");
			return "forward:/planit/login/Login.it";
		}
		
		//
		
	}
	
	
	// [기업회원가입]
	@RequestMapping("/member/login/CompanyJoin.it")
	public String gotoCompanyJoin() throws Exception {
		return "login/JoinPartnerProgress.theme";
	}
	
	@RequestMapping(value="/member/login/PartnerJoinFormProcess.it" ,method=RequestMethod.POST)
	public String partnerJoinFormProcess(PartnerDTO dto,@RequestParam Map map, HttpSession session) throws Exception{
		
		return "mypage/partner/PartnerMyPageHome.theme";
	}
	/*// [기업_마이페이지]
	@RequestMapping("/planit/mypage/partner/PartnerMyPageHome.it")
	public String gotoPartnerMyPageHome() throws Exception {
		return "mypage/partner/PartnerMyPageHome.theme";
	}*/

}
