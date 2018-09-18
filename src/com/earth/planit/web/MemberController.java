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
}

