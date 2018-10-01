package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartnerController {
	/*
		PartnerController
		1] 예약 관리 페이지
		2] 사용자 문의 페이지
		3]예약 상세보기
		4]예약 상세보기
	*/
	
	@RequestMapping("/mypage/partner/Reservation_P.it")
	public String gotoReservation_P()throws Exception{
		return "mypage/partner/Reservation_P.theme";
	}
	
	@RequestMapping("/mypage/partner/Request_P.it")
	public String gotoRequest_P()throws Exception{
		return "mypage/partner/Request_P.theme";
	}
	
	@RequestMapping("/mypage/partner/Request_detail.it")
	public String gotoRequestdetail_P()throws Exception{
		return "mypage/partner/Request_detail.theme";
	}
	
}
