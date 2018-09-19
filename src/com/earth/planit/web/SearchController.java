package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping("/member/tourinfo/listpick/list/listMain.it")
	public String gotoListMain()throws Exception{
		return "tourinfo/listpick/list/listMain.tiles";
	}

	@RequestMapping("/tourinfo/tdview/tourDetail.it")
	public String goTourDetail()throws Exception{
		return "tourinfo/tdview/tourDetail.tiles";
	}
	
	@RequestMapping("/tourinfo/tdview/sleepDetail.it")
	public String goSleepDetail()throws Exception{
		return "tourinfo/tdview/sleepDetail.tiles";
	}
	////
	
	@RequestMapping("/tourinfo/tdview/foodDetail.it")
	public String goFoodDetail()throws Exception{
		return "tourinfo/tdview/foodDetail.tiles";
	}
	
	////
	@RequestMapping("/tourinfo/tdview/notice.it")
	public String goNotice()throws Exception{
		return "tourinfo/tdview/notice.tiles";
	}
	
	///
	@RequestMapping("/tourinfo/tdview/qna.it")
	public String goQna()throws Exception{
		return "tourinfo/tdview/qna.tiles";
	}
}
