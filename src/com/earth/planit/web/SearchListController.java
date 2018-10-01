package com.earth.planit.web;

import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchListController {
	
	//리스트 픽하는 페이지
	@RequestMapping("/member/tourinfo/listpick/list/ListMain.it")
	public String listMain()throws Exception{
		return "tourinfo/listpick/list/ListMain.theme";
	}
	
	//관광지 리스트
	@RequestMapping("/tourinfo/tdview/TourList.it")
	public String tourList(@RequestParam Map map, Model model)throws Exception{
		System.out.println("param"+map.get("cat1"));
		
		model.addAttribute("cat1",map.get("cat1"));
		///
		//
		///
		//
		
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
	public String sleepList(@RequestParam Map map,Model model)throws Exception{
		System.out.println("넘어오나"+map.get("sleep"));
		
		model.addAttribute("sleep",map.get("sleep"));
		return "tourinfo/tdview/SleepList.theme";
	}

	//음식점 상세보기
	@RequestMapping("/planit/search/list/FoodView.it")
	public String foodView()throws Exception{
		return "tourinfo/tdview/FoodView.theme";
	}
	
	//음식점 리스트
	@RequestMapping("/tourinfo/tdview/FoodList.it")
	public String foodList(@RequestParam Map map, Model model)throws Exception{
		System.out.println("넘어오나"+map.get("food"));
		model.addAttribute("food",map.get("food"));
		
		return "tourinfo/tdview/FoodList.theme";
	}
	
	//질문답변
	@RequestMapping("/planit/search/tourinfo/Qna.it")
	public String goQna()throws Exception{
		return "tourinfo/tdview/Qna.theme";
	}
	
	//질문답변 1:1
	@RequestMapping("/tourinfo/tdview/OneToOne.it")
	public String oneToOne()throws Exception{
		return "tourinfo/tdview/OneToOne.theme";
	}
	
	//공지사항
	@RequestMapping("/planit/search/tourinfo/Notice.it")
	public String goNotice()throws Exception{
		return "tourinfo/tdview/Notice.theme";
	}
	//공지사항 세부
	@RequestMapping("/planit/search/tourinfo/NoticeView.it")
	public String noticeView()throws Exception{
		return "tourinfo/tdview/NoticeView.theme";
	}
}//////////////////////////////////////////////////////////////////
