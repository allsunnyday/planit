package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchMapController {
	/*SearchMapController
	 * 1] 리스트 / 지도 선택 페이지
	 * 2] 지도 api 페이지
	 * 3] 리뷰 모아보기 페이지
	 * 4]
	 * 
	 * 
	 * 
	 */
	
	
	@RequestMapping("/tourinfo/ListNMapPick.it")
	public String gotoList()throws Exception{
		return "tourinfo/ListNMapPick.theme";
	}
	
	@RequestMapping("/tourinfo/mappick/MapMain.it")
	public String gotoMapPick()throws Exception{
		return "tourinfo/mappick/MapMain.theme";
	}
	
	@RequestMapping("/tourinfo/reviewpick/Reviewpick.it")
	public String gotoReviewPick()throws Exception{
		return "tourinfo/reviewpick/Reviewpick.theme";
	}
	
	@RequestMapping("/tourinfo/mappick/MapIllust.it")
	public String gotoMapIllust()throws Exception{
		return "tourinfo/mappick/MapIllust.theme";
	}
	
	@RequestMapping("/tourinfo/reviewpick/MapMain.it")
	public String gotoMapMain()throws Exception{
		return "tourinfo/mappick/MapMain.theme";
	}
}
