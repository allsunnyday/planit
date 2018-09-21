package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartnerController {
	/*
		PartnerController
		1] 파트너회원 
	
	*/
	
	@RequestMapping("/mypage/Partner/Reservation_P.it")
	public String gotoReservation_P()throws Exception{
		return "mypage/partner/Reservation_P.theme";
	}
}
