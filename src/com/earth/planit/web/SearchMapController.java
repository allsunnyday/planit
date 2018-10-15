package com.earth.planit.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.earth.planit.service.SearchMapDTO;
import com.earth.planit.service.SearchMapService;


@Controller
public class SearchMapController {
	
	private String key ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	
	@Resource(name="searchMapService")
	private SearchMapService service;
	
	//리스트 / 지도 선택 페이지
	@RequestMapping("/tourinfo/ListNMapPick.it")
	public String gotoList()throws Exception{
		return "tourinfo/ListNMapPick.theme";
	}

	//리뷰 모아보기 페이지
	@RequestMapping("/tourinfo/reviewpick/Reviewpick.it")
	public String gotoReviewPick()throws Exception{
		return "tourinfo/reviewpick/Reviewpick.theme";
	}
	
	//지도 일러스트 페이지 가기
	@RequestMapping("/member/tourinfo/mappick/MapIllust.it")
	public String gotoMapPick(@RequestParam Map map, HttpSession session, Model model) throws Exception{
		System.out.println("gotoMapPick호출");
		//로그인 했는지 확인
		Boolean isLogin = session.getAttribute("id") != null ? true : false;
		//선호도조사결과 확인
		
		/*//ROWNUM 6개 가져오기(조회순 or best순으로 찍어올것이라 괜찮아)
		map.put("start", 1);
		map.put("end", 6);*/
		System.out.println("map.size(): "+map.size());
		
		//tour목록 
		List<SearchMapDTO> tourlist = service.selectTravelList(map);
		System.out.println("tourlist.size():"+tourlist.size());
		model.addAttribute("tourlist",tourlist);
		
		//content목록
		List<SearchMapDTO> contentlist = service.selectContentList(map);
		System.out.println("contentlist.size:"+contentlist.size());
		model.addAttribute("contentlist",contentlist);
		
		return "tourinfo/mappick/MapIllust.theme";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/tourinfo/mappick/MapPick.it", produces="text/plain; charset=UTF-8")
	public String MapPickAjax(@RequestParam Map map) throws Exception{
		//파라미터로 선택된 지역의 areacode가 넘어왔는지 확인
		System.out.println("넘어온 지역값: "+map.get("areacode"));
		//쿼리에서 필요한 값들을 map에 넣어주기
		Map map1  = new HashMap();
		/*map1.put("start", 1);
		map1.put("end", 6);*/
		map1.put("areacode", map.get("areacode"));
		List<Map> collections = new Vector<Map>();
		List<SearchMapDTO> tourpickList = service.selectTravelList(map1);
		System.out.println("map1에 값 + 쿼리에 들어가는 값"+ map1.size());
		
		for(SearchMapDTO dto: tourpickList) {
			Map record = new HashMap();
			record.put("contentid", dto.getContentid());
			record.put("title", dto.getTitle());
			record.put("firstimage", dto.getFirstimage());
			collections.add(record);
			/*JSONObject json = new JSONObject();
			json.put("contentid", dto.getContentid());
			json.put("title", dto.getTitle());
			json.put("firstimage", dto.getFirstimage());
			collections.put("tourpickList", json);*/
		}//for
		
		///컨텐츠용
		List<SearchMapDTO> contentpickList = service.selectContentList(map1);
		
		for(SearchMapDTO dto: contentpickList) {
			Map record = new HashMap();
			record.put("contentid", dto.getContentid());
			record.put("title",dto.getTitle());
			record.put("firstimage",dto.getFirstimage());
			collections.add(record);
			/*JSONObject json = new JSONObject();
			json.put("contentid", dto.getContentid());
			json.put("title", dto.getTitle());
			json.put("firstimage", dto.getFirstimage());
			collections.put("contentpickList", json);*/
		}//for
		// 최종적으로 맵 -> list
		//collections.add(record);
		System.out.println("collections크기:"+collections.size());
		
		return JSONArray.toJSONString(collections);
	}////MapPickAjax
	
	
	
	
	
	
	

	
	
	
}
