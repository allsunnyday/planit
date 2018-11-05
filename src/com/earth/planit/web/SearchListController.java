package com.earth.planit.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ContentService;
import com.earth.planit.service.SearchListDTO;
import com.earth.planit.service.SearchListService;


@Controller
public class SearchListController {
	//페이징
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;
	
	//api 키값
	private String key ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	
	@Resource(name="searchListService")
	private SearchListService service;
	
	@Resource(name="contentService")
	private ContentService contentService;
	
	//리스트 픽하는 페이지
	@RequestMapping("/member/tourinfo/listpick/list/ListMain.it")
	public String listMain(@RequestParam Map map,Model model)throws Exception{
		
		int start = 1;
		int end = 3;
		map.put("start", start);
		map.put("end", end);
		
		List<ContentDTO> tourlist = service.selectTourList(map);
		map.put("start", start);
		
		List<ContentDTO> sleeplist = service.selectSleepList(map);
		List<ContentDTO> foodlist = service.selectFoodList(map);
		
		map.put("start", 1);
		map.put("end", 6);
		
		List<ContentDTO> besttourlist = service.selectTourList(map);
		
		model.addAttribute("tour",tourlist);
		model.addAttribute("sleep",sleeplist);
		model.addAttribute("food",foodlist);
		model.addAttribute("besttourlist",besttourlist);
		return "tourinfo/listpick/list/ListMain.theme";
	}
	
	//관광지 리스트
	@RequestMapping("/tourinfo/tdview/TourList.it")  
	public String tourList(@RequestParam Map map,  // contenttype 
									Model model
									,HttpServletRequest req,
									@RequestParam(required=false,defaultValue="1") int nowPage
								)throws Exception{
		
		// 사용자 areacode를 선택한 경우
		if(map.get("areacode")!= null) {
			System.out.println("areacode값이있습니다."+map.get("areacode"));  // 1 2 3 
			
		}
		else {
			System.out.println("no areacode value !!!");
		}
		
		//검색어가 있는지확인 
		if(map.get("searchColumn")!= null) {
			model.addAttribute("searchColumn",map.get("searchColumn"));
			model.addAttribute("searchWord",map.get("searchWord"));
		}
		
		
		// orderColumn가 있는지 확인
		if(map.get("orderColumn") != null) {
			System.out.println("orderColumn is not null::"+map.get("orderColumn"));
		}
		
		int totalCount = service.getTotalCount(map);
		int totalPage = (int)Math.ceil(((double)totalCount/pageSize));
		int start = (nowPage-1)*pageSize+1;
		int end  = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		//content 리스트를 가지고 온다. 
		// 1] 처음에 페이지 이동시 contenttype
		// 2] areacode 선택시 areacode
		// 3] 검색어를 넣을 경우에는 searchColumn / searchWord
		// 페이징을 위한start end 값을 넣어준다.ㄴ
		List<ContentDTO> tourlist = service.selectTourList(map);
		String pagingString = CommonUtil.pagingBootStrapStyle(
							totalCount,
							pageSize, 
							blockPage, 
							nowPage, 
							req.getContextPath()+"/tourinfo/tdview/TourList.it?contenttype=12&");
		
		model.addAttribute("list", tourlist);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		model.addAttribute("title",map.get("title"));
		model.addAttribute("areacode",map.get("areacode"));
		model.addAttribute("tour",tourlist);
		
		
		
		
		return "tourinfo/tdview/TourList.theme";
	}
	

	//공연/축제/행사
	@RequestMapping("/tourinfo/tdview/FestivalList.it")
	public String festival(@RequestParam Map map, Model model
			,HttpServletRequest req,
			@RequestParam(required=false,defaultValue="1") int nowPage)throws Exception{
		
		
		if(map.get("areacode")!=null)
			System.out.println(map.get("areacode"));
		if(map.get("searchColumn")!= null) {
			model.addAttribute("searchColumn",map.get("searchColumn"));
			model.addAttribute("searchWord",map.get("searchWord"));
		}
		int totalCount = service.getTotalCount(map);
		int totalPage = (int)Math.ceil(((double)totalCount/pageSize));
		int start = (nowPage-1)*pageSize+1;
		int end  = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List<ContentDTO> festivalList = service.selectFestivalList(map);
		String pagingString = CommonUtil.pagingBootStrapStyle(
							totalCount,
							pageSize, 
							blockPage, 
							nowPage, 
							req.getContextPath()+"/tourinfo/tdview/FestivalList.it?contenttype=15&");
		
		model.addAttribute("list", festivalList);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		model.addAttribute("areacode",map.get("areacode"));
		model.addAttribute("festival",festivalList);
		
		return "tourinfo/tdview/FestivalList.theme";
	}
	
	
	
	
	
	//숙박 리스트
	@RequestMapping("/tourinfo/tdview/SleepList.it")
	public String sleepList(@RequestParam Map map, Model model
			,HttpServletRequest req,
			@RequestParam(required=false,defaultValue="1") int nowPage)throws Exception{
		
		
		
		if(map.get("areacode")!=null)
			System.out.println(map.get("areacode"));
		if(map.get("searchColumn")!= null) {
			model.addAttribute("searchColumn",map.get("searchColumn"));
			model.addAttribute("searchWord",map.get("searchWord"));
		}
		int totalCount = service.getTotalCount(map);
		int totalPage = (int)Math.ceil(((double)totalCount/pageSize));
		int start = (nowPage-1)*pageSize+1;
		int end  = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List<ContentDTO> sleepList = service.selectSleepList(map);
		String pagingString = CommonUtil.pagingBootStrapStyle(
							totalCount,
							pageSize, 
							blockPage, 
							nowPage, 
							req.getContextPath()+"/tourinfo/tdview/SleepList.it?contenttype=32&");
		
		model.addAttribute("list", sleepList);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		model.addAttribute("areacode",map.get("areacode"));
		model.addAttribute("sleep",sleepList);
		
		
		return "tourinfo/tdview/SleepList.theme";
	}

	//숙박 상세보기
	@RequestMapping("/planit/search/list/SleepView.it")
	public String SleepView()throws Exception{
		
		return "tourinfo/tdview/SleepView.theme";
	}
	
	

	
	//음식점 리스트
	@RequestMapping("/tourinfo/tdview/FoodList.it")
	public String foodList(@RequestParam Map map, Model model
			,HttpServletRequest req,
			@RequestParam(required=false,defaultValue="1") int nowPage)throws Exception{
		
		
		if(map.get("areacode")!=null)
			System.out.println(map.get("areacode"));
		if(map.get("searchColumn")!= null) {
			model.addAttribute("searchColumn",map.get("searchColumn"));
			model.addAttribute("searchWord",map.get("searchWord"));
		}
		int totalCount = service.getTotalCount(map);
		System.out.println("totalCount ??: "+ totalCount);
		int totalPage = (int)Math.ceil(((double)totalCount/pageSize));
		int start = (nowPage-1)*pageSize+1;
		int end  = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List<ContentDTO> Foodlist = service.selectFoodList(map);
		String pagingString = CommonUtil.pagingBootStrapStyle(
							totalCount,
							pageSize, 
							blockPage, 
							nowPage, 
							req.getContextPath()+"/tourinfo/tdview/FoodList.it?contenttype=39&");
		
		model.addAttribute("list", Foodlist);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);		
		model.addAttribute("areacode",map.get("areacode"));
		model.addAttribute("food",Foodlist);
		System.out.println("pagingString ????: "+ pagingString + "\r\n Foodlist : ???" + Foodlist);
		return "tourinfo/tdview/FoodList.theme";
	}
	
	//음식점 상세보기
	@RequestMapping("/planit/search/list/FoodView.it")
	public String foodView()throws Exception{
		return "tourinfo/tdview/FoodView.theme";
	}
   

}//////////////////////////////////////////////////////////////////

