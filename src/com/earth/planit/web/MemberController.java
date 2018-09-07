package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/member/login/login.it")
	public String gotoLogin()throws Exception{
		return "login/login";
	}
}

