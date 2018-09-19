package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/member/login/login.it")
	public String gotoLogin()throws Exception{
		return "login/login.tiles";
	}
	
	@RequestMapping("/Plait/Planit.it")
	public String gotoMain()throws Exception{
		return "main/main.tiles";
	}
	
	@RequestMapping("/tourinfo/ListNMapPick.it")
	public String gotoList()throws Exception{
		return "tourinfo/ListNMapPick.tiles";
	}
	
	@RequestMapping("/tourinfo/mappick/mapMain.it")
	public String gotoMapPick()throws Exception{
		return "tourinfo/mappick/mapMain.tiles";
	}
	
	@RequestMapping("/tourinfo/reviewpick/reviewpick.it")
	public String gotoReviewPick()throws Exception{
		return "tourinfo/reviewpick/reviewpick.tiles";
	}
	
	@RequestMapping("/mypage/Partner/Reservation_P.it")
	public String gotoReservation_P()throws Exception{
		return "mypage/Partner/Reservation_P.tiles";
	}
	
//	planner 컨트롤러
	@RequestMapping("/Planit/Before/Location.it")
	public String gotoLocation() throws Exception{
		
		return "planner/before/Location.tiles";
	}
}

