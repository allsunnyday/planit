package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchMapController {
	@RequestMapping("/tourinfo/ListNMapPick.it")
	public String gotoList()throws Exception{
		return "tourinfo/ListNMapPick.theme";
	}
	
	@RequestMapping("/tourinfo/mappick/mapMain.it")
	public String gotoMapPick()throws Exception{
		return "tourinfo/mappick/mapMain.theme";
	}
	
	@RequestMapping("/tourinfo/reviewpick/reviewpick.it")
	public String gotoReviewPick()throws Exception{
		return "tourinfo/reviewpick/reviewpick.theme";
	}
}
