package com.earth.planit.web;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.earth.planit.service.SearchMapDTO;

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
	
	private String key ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	
	@RequestMapping("/tourinfo/ListNMapPick.it")
	public String gotoList()throws Exception{
		return "tourinfo/ListNMapPick.theme";
	}
	
	@RequestMapping("/tourinfo/mappick/MapPage.it")
	public String gotoMapPick()throws Exception{
		return "tourinfo/mappick/MapPage.theme";
	}
	
	@RequestMapping("/tourinfo/reviewpick/Reviewpick.it")
	public String gotoReviewPick()throws Exception{
		return "tourinfo/reviewpick/Reviewpick.theme";
	}
	
	@RequestMapping(value="/tourinfo/mappick/MapIllust.it",produces="text/html; charset=UTF-8")
	public String gotoMapIllust(@RequestParam Map map, Model model, int nowPage)throws Exception{
		System.out.println(map.get("areaCode"));
		String areaCode = map.get("areaCode").toString();//클릭한 지역의 코드번호
		
		// areacode와 contenttype으로 검색하는 주소 
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?"
				+ "ServiceKey="+key  //서비스인증키
				+ "&contentTypeId="+map.get("contenttype")  
				+ "&areaCode="+map.get("areacode")
				+ "&sigunguCode="   //시구군코드
				+ "&cat1=&cat2=&cat3="  //대/중/소분류
				+ "&listYN=Y"   //목록 구분 (Y=목록, N=개수)
				+ "&MobileOS=ETC"  //IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC
				+ "&MobileApp=TourAPI3.0_Guide" //서비스명=어플명
				+ "&_type=json"  //json타입으로 결과를 받음 
				+ "&arrange=A"  //정렬구분(A=제목순, B=조회순, C=수정일순, D=생성일순)
				+ "&numOfRows=12"
				+ "&pageNo="+nowPage;
		
		List<SearchMapDTO> list  = new Vector<SearchMapDTO>();
		model.addAttribute("list", list);
		
		
		
		
		return "tourinfo/mappick/MapIllust.theme";
	}
	

	
	
	
	
	
}
