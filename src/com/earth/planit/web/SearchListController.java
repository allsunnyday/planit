package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchListController {
	
	@RequestMapping("/member/tourinfo/listpick/list/listMain.it")
	public String gotoListMain()throws Exception{
		return "tourinfo/listpick/list/listMain.theme";
	}

	@RequestMapping("/tourinfo/tdview/tourDetail.it")
	public String goTourDetail()throws Exception{
		return "tourinfo/tdview/tourDetail.theme";
	}
	
	@RequestMapping("/tourinfo/tdview/sleepDetail.it")
	public String goSleepDetail()throws Exception{
		return "tourinfo/tdview/sleepDetail.theme";
	}
	////
	
	@RequestMapping("/tourinfo/tdview/foodDetail.it")
	public String goFoodDetail()throws Exception{
		return "tourinfo/tdview/foodDetail.theme";
	}
	
	////
	@RequestMapping("/tourinfo/tdview/notice.it")
	public String goNotice()throws Exception{
		return "tourinfo/tdview/notice.theme";
	}
	
	///
	@RequestMapping("/tourinfo/tdview/qna.it")
	public String goQna()throws Exception{
		return "tourinfo/tdview/qna.theme";
	}
	
	//////////////////////////////////////////////////////////////정현선 추가 부분
	@RequestMapping("/planit/search/tourinfo/TourList.it")
	public String tourList()throws Exception{
		return "tourinfo/listpick/list/TourList.theme";
	}
	
}
