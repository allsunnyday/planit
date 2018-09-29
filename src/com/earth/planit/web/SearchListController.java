package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchListController {
	//리스트 픽하는 페이지
	@RequestMapping("/member/tourinfo/listpick/list/ListMain.it")
	public String listMain()throws Exception{
		return "tourinfo/listpick/list/ListMain.theme";

	}
	
	//관광지 리스트
	@RequestMapping("/tourinfo/tdview/TourList.it")
	public String tourList()throws Exception{
		return "tourinfo/tdview/TourList.theme";
	}
	
	//관광지 상세보기
	@RequestMapping("/planit/search/list/TourView.it")
	public String tourView() throws Exception{
		return "tourinfo/tdview/TourView.theme";
	}

	//숙박 상세보기
	@RequestMapping("/planit/search/list/SleepView.it")
	public String SleepView()throws Exception{
		return "tourinfo/tdview/SleepView.theme";
	}
	
	//숙박 리스트
	@RequestMapping("/tourinfo/tdview/SleepList.it")
	public String sleepList()throws Exception{
		return "tourinfo/tdview/SleepList.theme";
	}

	//음식점 상세보기
	@RequestMapping("/planit/search/list/FoodView.it")
	public String foodView()throws Exception{
		return "tourinfo/tdview/FoodView.theme";
	}
	
	//음식점 리스트
	@RequestMapping("/tourinfo/tdview/FoodList.it")
	public String foodList()throws Exception{
		return "tourinfo/tdview/FoodList.theme";
	}
	
	//질문답변
	@RequestMapping("/planit/search/tourinfo/Qna.it")
	public String goNotice()throws Exception{
		return "tourinfo/tdview/Qna.theme";
	}
	
	//공지사항
	@RequestMapping("/planit/search/tourinfo/Notice.it")
	public String goQna()throws Exception{
		return "tourinfo/tdview/Notice.theme";
	}
	
	
}//////////////////////////////////////////////////////////////////
