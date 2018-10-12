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
	@RequestMapping("/tourinfo/mappick/MapIllust.it")
	public String gotoMapPick(@RequestParam Map map, HttpSession session, Model model) throws Exception{
		System.out.println("gotoMapPick호출");
		//로그인 했는지 확인
		Boolean isLogin = session.getAttribute("id") != null ? true : false;
		//선호도조사결과 확인
		System.out.println();
		
		map.put("start", 1);
		map.put("end", 6);
		System.out.println("map.size(): "+map.size());
		
		List<SearchMapDTO> list = service.selectTravelList(map);
		System.out.println("List.size():"+list.size());
		model.addAttribute("list",list);
	
		return "tourinfo/mappick/MapIllust.theme";
	}
	
	@ResponseBody
	@RequestMapping(value="/tourinfo/mappick/MapPick.it", produces="text/plain; charset=UTF-8")
	public String MapPickAjax(@RequestParam Map map) throws Exception{
		//파라미터로 선택된 지역의 areacode가 넘어왔는지 확인
		System.out.println("넘어온 지역값: "+map.get("areacode"));
		Map map1  = new HashMap();
		map1.put("start", 1);
		map1.put("end", 6);
		map1.put("areacode", map.get("areacode"));
		
		List<SearchMapDTO> pickList = service.selectTravelList(map1);
		System.out.println("map1에 값 + 쿼리에 들어가는 값"+ map1.size());
		
		List<Map> collections = new Vector<Map>();
		for(SearchMapDTO dto: pickList) {
			Map record = new HashMap();
			record.put("contentid", dto.getContentid());
			record.put("title", dto.getTitle());
			record.put("firstimage", dto.getFirstimage());
			collections.add(record);
			
		}
		
		System.out.println("pickList.size():"+pickList.size());
		System.out.println("collections크기:"+collections.size());
		
		return JSONArray.toJSONString(collections);
	}
	
	/*@RequestMapping("/tourinfo/mappick/MapPick.it")
	public String MapPickAjax(@RequestParam Map map) throws Exception{
		//파라미터로 선택된 지역의 areacode가 넘어왔는지 확인
		System.out.println(map.get("areacode"));
		
		map.put("start", 1);
		map.put("end", 6);
		System.out.println("map.size(): "+map.size());
		
		List<SearchMapDTO> pickList = service.selectTravelList(map);
		System.out.println("pickList.size():"+pickList.size());
		
		
		System.out.println(JSONArray.toJSONString(pickList));
		return "tourinfo/mappick/MapIllust.theme";
	}*/
	
	
	
	/*
	//ajax로 목록 띄워주기
	@ResponseBody
	@RequestMapping(value="/tourinfo/mappick/Init.it",produces="text/plain; charset=UTF-8")
	public String searchMapInit(@RequestParam Map map) throws Exception{
		System.out.println(map.get("contenttype"));
		System.out.println(map.get("contenttype").toString());
		
		List<Map> list = service.selectTravelList(map);
		System.out.println(JSONArray.toJSONString(list));
		
		
		return JSONArray.toJSONString(list);
	}
	
	
	// 4] 리뷰 모아보기 페이지
	@RequestMapping("/tourinfo/mappick/MapIllust.it")
	public String gotoMapPick(Model model, HttpSession session)throws Exception{
		
		String returndata = null;
		
		returndata = ajaxforMap(session.getAttribute("id")==null?false:true, 12);
		
		model.addAttribute("returndata", returndata);
		
		return "/tourinfo/mappick/Init.it";
	}
	
	//ListNMapPick에서 Map클릭시 기본 콘텐츠 띄워주기
	@ResponseBody
	@RequestMapping(value="/tourinfo/mappick/Init.it")
	public String selectMapList(@RequestParam Map map, Model model, HttpSession session) throws Exception{
		System.out.println(session.getAttribute("id").toString());
		
		String isLogin = session.getAttribute("id").toString();
			
		
		String best1 = null;
		String best2 = null;
		best1 = ajaxforMap(session.getAttribute("id")==null?false:true, 12);
		best1 = ajaxforMap(session.getAttribute("id")==null?false:true, 20);
		
		return returndata;

	}
	//ajax처리용 메소드
	public String ajaxforMap(boolean isLogin, int contentType) throws Exception{
		
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?"
				+ "ServiceKey="+key  //서비스인증키
				+ "&contentTypeId="+contentType
				+ "&areaCode="+areaCode
				+ "&sigunguCode="   //시구군코드
				+ "&cat1=&cat2=&cat3="  //대/중/소분류
				+ "&listYN=Y"   //목록 구분 (Y=목록, N=개수)
				+ "&MobileOS=ETC"  //IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC
				+ "&MobileApp=TourAPI3.0_Guide" //서비스명=어플명
				+ "&_type=json"  //json타입으로 결과를 받음 
				+ "&arrange=A"  //정렬구분(A=제목순, B=조회순, C=수정일순, D=생성일순)
				+ "&numOfRows=12"
				+ "&pageNo=1";
		URL url = new URL(addr);
		//URL로부터 자바로 데이터 읽어오도록 URL객체로 스트림열기
		InputStream in = url.openStream();
		// 데이터 읽어 오기 
		StringBuffer result=new StringBuffer();
		BufferedReader reader = new BufferedReader(new InputStreamReader(in, "utf-8"));
		String data;
		//결과값을 한줄씩 읽어옴
		while((data=reader.readLine())!=null) {
			result.append(data); 
		}
		reader.close();
		in.close();
		System.out.println(result.toString());
		// 결과값을 jsonparser를 이용하여
		JSONParser jsonparser = new JSONParser();
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		
		JSONArray list = (JSONArray) json.get("item");
		System.out.println(list+"입니다");
		
	}*/
	/*//전체 지역에 컨텐트 타입만
	public String selectTravelList(int contenttype, int numOfRows) throws Exception{
		System.out.println(contenttype);
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?"
				+ "ServiceKey="+key  //서비스인증키
				+ "&contentTypeId="+contenttype  
				+ "&areaCode="
				+ "&sigunguCode="   //시구군코드
				+ "&cat1=&cat2=&cat3="  //대/중/소분류
				+ "&listYN=Y"   //목록 구분 (Y=목록, N=개수)
				+ "&MobileOS=ETC"  //IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC
				+ "&MobileApp=TourAPI3.0_Guide" //서비스명=어플명
				+ "&_type=json"  //json타입으로 결과를 받음 
				+ "&arrange=A"  //정렬구분(A=제목순, B=조회순, C=수정일순, D=생성일순)
				+ "&numOfRows="+numOfRows
				+ "&pageNo=1";
		
		URL url = new URL(addr);
		//URL로부터 자바로 데이터 읽어오도록 URL객체로 스트림열기
		InputStream in = url.openStream();
		// 데이터 읽어 오기 
		StringBuffer result=new StringBuffer();
		BufferedReader reader = new BufferedReader(new InputStreamReader(in, "utf-8"));
		String data;
		//결과값을 한줄씩 읽어옴
		while((data=reader.readLine())!=null) {
			result.append(data); 
		}
		reader.close();
		in.close();
		System.out.println(result.toString());
		// 결과값을 jsonparser를 이용하여
		JSONParser jsonparser = new JSONParser();
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		
		json = (JSONObject) json.get("items");
		
		JSONArray list = (JSONArray) json.get("item");
		System.out.println(list+"입니다");
		
		return list.toJSONString();
	}*/
	
	
	
	
	
	
}
