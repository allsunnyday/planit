package com.earth.planit.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.SearchListDTO;
import com.earth.planit.service.SearchListService;


@Controller
public class SearchListController {

	private String key ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	
	@Resource(name="searchListService")
	private SearchListService service;
	
	//리스트 픽하는 페이지
	@RequestMapping("/member/tourinfo/listpick/list/ListMain.it")
	public String listMain(@RequestParam Map map,Model model)throws Exception{
		
		int start = 1;
		int end = 5;
		map.put("start", start);
		map.put("end", end);
		
		List<SearchListDTO> tourlist = service.selectTourList(map);
		map.put("start", start);
		map.put("end", 1);
		List<SearchListDTO> sleeplist = service.selectSleepList(map);
		List<SearchListDTO> foodlist = service.selectFoodList(map);
		
		model.addAttribute("tour",tourlist);
		model.addAttribute("sleep",sleeplist);
		model.addAttribute("food",foodlist);
		return "tourinfo/listpick/list/ListMain.theme";
	}
	
	//관광지 리스트
	@RequestMapping("/tourinfo/tdview/TourList.it")
	public String tourList(@RequestParam Map map, Model model)throws Exception{
		
		model.addAttribute("cat1",	map.get("cat1"));
		
		int start = 1;
		int end = 10;
		map.put("start", start);
		map.put("end", end);
		//서비스 호출
		List<SearchListDTO> tourlist = service.selectTourList(map);
		
		model.addAttribute("tour",tourlist);
	
		
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
		int start = 1;
		int end = 10;
		map.put("start", start);
		map.put("end", end);
		
		List<SearchListDTO> sleeplist = service.selectSleepList(map);
		model.addAttribute("sleep",sleeplist);
		
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
		model.addAttribute("food",map.get("food"));
		int start = 1;
		int end = 10;
		map.put("start", start);
		map.put("end", end);
		List<SearchListDTO> foodlist = service.selectFoodList(map);
		model.addAttribute("food",foodlist);
		
		return "tourinfo/tdview/FoodList.theme";
	}
	
	//질문답변
	@RequestMapping("/planit/search/tourinfo/Qna.it")
	public String goQna()throws Exception{
		return "tourinfo/tdview/Qna.theme";
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

