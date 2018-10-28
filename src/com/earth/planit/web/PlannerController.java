package com.earth.planit.web;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.PlannerDTO;
import com.earth.planit.service.PlannerService;

@Controller
public class PlannerController {
	
//	투어 api 키값
	private String key ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	
	@Resource(name="plannerService")
	private PlannerService service;
	
	@RequestMapping("/Planit/Before/LocationMain.it")
	public String gotoLocationMain() throws Exception{		
		return "planner/before/LocationMain.theme";
	}
	
	@RequestMapping("/Planit/Before/Location.it")
	public String gotoLocation() throws Exception{		
		return "planner/before/Location.theme";
	}
	
	
	@RequestMapping("/planner/plan/route.it")
	public String locationsub(@RequestParam Map map, Model model) throws Exception{
		System.out.println("areacode: " + map.get("areacode") + " / areacodename : "+ map.get("areacodename")); // 사용자가 선택한 여행 지역 얻어오기
		System.out.println("areacodesub: " + map.get("areacodesub")+"/ areacodesubname : "+ map.get("areacodesubname")); // 사용자가 선택한 여행 지역 얻어오기2
		System.out.println("days: " + map.get("days")); // 사용자가 선택한 여행 일수 얻기
		
		
		model.addAttribute("areacode", map.get("areacode")); // 사용자가 선택한 여행 지역 얻어오기
		model.addAttribute("areacodename", map.get("areacodename"));
		model.addAttribute("areacodesub", map.get("areacodesub")); // 사용자가 선택한 여행 지역 얻어오기2
		model.addAttribute("areacodesubname", map.get("areacodesubname"));		
		
		model.addAttribute("days", map.get("days")); // 사용자가 선택한 여행일수 넘기기
		
//		if(map.get("days") == null || map.get("days") == "") {
//			
//			println("<script> alert('계정이 등록 되었습니다'); location.href='이동주소'; </script>");
//			return "planner/before/Location.theme"; 
//		}
		
//		map 에 표시할 카테고리 정보들 얻어오기
		//List<PlannerDTO> planmapinfo = service.selectMapDataList(map);		
		//System.out.println("값 넘어오나요?: " + planmapinfo.size());
		//model.addAttribute("planmapinfo", planmapinfo);
		
		return "planner/plan/route.theme";
	}
	
	@ResponseBody
	@RequestMapping(value="/planner/plan/routecategory.it", produces="text/plain; charset=UTF-8")
	public String getcategorynum(@RequestParam Map map, Model model) throws Exception{
		System.out.println("contenttype controller: "+map.get("contenttype"));
		System.out.println("areacode controller: "+map.get("areacode"));
		System.out.println("sigungucode controller: "+map.get("sigungucode"));
		System.out.println("areacodename controller: "+map.get("areacodename"));
		System.out.println("sigungucodename controller: "+map.get("sigungucodename"));
		
		String httpaddr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?"
						+"ServiceKey="+key
						+"&contentTypeId="+map.get("contenttype")
						+"&areaCode="+map.get("areacode")
						+"&sigunguCode="+map.get("sigungucode")
						+"&cat1=&cat2=&cat3="
						+"&listYN=Y"
						+"&MobileOS=ETC"
						+"&MobileApp=TourAPI3.0_Guide"
						+"&arrange=A&numOfRows=300"
						+"&pageNo=1"						
						+"&_type=json"  //json타입으로 결과를 받음						
						;
		
		
		URL url = new URL(httpaddr);
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
		System.out.println(result.toString()); // 이상무
		
		// 결과값을 jsonparser를 이용하여
		JSONParser jsonparser = new JSONParser();		
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		JSONArray list = (JSONArray) json.get("item");
		
		System.out.println(list.toString()+"///"+list.size());		
		List<Map> collections = new Vector<Map>();
		List<PlannerDTO> content = new Vector();
		for(int i=0; i<list.size(); i++) {
			JSONObject jsonobj = (JSONObject)list.get(i);
			//System.out.println(jsonobj.get("contentid"));
			Map record = new HashMap();
			record.put("contentid", jsonobj.get("contentid"));
			record.put("contenttype", map.get("contenttype"));
			record.put("tel", jsonobj.get("tel"));
			record.put("title", jsonobj.get("title"));
			record.put("areacode", map.get("areacode"));			
			record.put("sigunguCode", map.get("sigungucode"));
			record.put("addr1", jsonobj.get("addr1"));
			record.put("addr2", jsonobj.get("addr2"));
			record.put("zipcode", jsonobj.get("zipcode"));
			record.put("mapx", jsonobj.get("mapx"));
			record.put("mapy", jsonobj.get("mapy"));
			
			collections.add(record);
		}
		
		System.out.println("collections크기:"+collections.size());
		return JSONArray.toJSONString(collections);
	}
	
	@RequestMapping(value="/planner/plan/scheduleUpload.it", method={RequestMethod.GET, RequestMethod.POST})
	public String scheduleUpload(@RequestParam Map map, Model model) throws Exception{
		System.out.println("days: "+map.get("days"));
		System.out.println("areacode: " + map.get("areacode"));
		System.out.println("depart: "+map.get("depart"));
		
		return "planner/plan/schedule.theme";
	}
	
	@ResponseBody
	@RequestMapping(value="/planner/plan/schedule.it", produces = "text/plain; charset=UTF-8") //저장 버튼 클릭시 파라미터가 넘어와서 일정과 함께 저장되어야 한다
	public String schedule(@RequestParam Map map, Model model) throws Exception{
		System.out.println("days: "+map.get("days"));
		System.out.println("areacode: " + map.get("areacode"));
		System.out.println("depart: "+map.get("depart"));
		
		return "planner/plan/schedule.theme";
	}
	
	@RequestMapping("/planner/plan/reservation.it")
	public String reservation() throws Exception{
		
		return "planner/plan/reservation.theme";
	}
	
	
	/* ********************************************** select option ajax 시작 *********************************************/
	@ResponseBody
	@RequestMapping(value="/planner/ajax/location.it", produces="text/html; charset=UTF-8")
	public String ajaxPaldoNCity(@RequestParam String paldoNcity) throws Exception{
		JSONObject json = new JSONObject();
		switch (paldoNcity) {
		case "1": // 서울 특별시
			json.put("1", "강남구");
			json.put("2", "강동구");
			json.put("3", "강북구");
			json.put("4", "강서구");
			json.put("5", "관악구");
			json.put("6", "광진구");
			json.put("7", "구로구");
			json.put("8", "금천구");
			json.put("9", "노원구");
			json.put("10", "도봉구");
			json.put("11", "동대문구");
			json.put("12", "동작구");
			json.put("13", "마포구");
			json.put("14", "서대문구");
			json.put("15", "서초구");
			json.put("16", "성동구");
			json.put("17", "성북구");
			json.put("18", "송파구");
			json.put("19", "양천구");
			json.put("20", "영등포구");
			json.put("21", "용산구");
			json.put("22", "은평구");
			json.put("23", "종로구");
			json.put("24", "중구");
			json.put("25", "중랑구");
			break;
		case "2"://인천 광역시
			json.put("1", "강화군");
			json.put("2", "계양구");
			json.put("3", "남구");
			json.put("4", "남동구");
			json.put("5", "동구");
			json.put("6", "부평구");
			json.put("7", "서구");
			json.put("8", "연수구");
			json.put("9", "옹진군");
			json.put("10", "중구");
			break;
		case "3"://대전 광역시
			json.put("1", "대덕구");
			json.put("2", "동구");
			json.put("3", "서구");
			json.put("4", "유성구");
			json.put("5", "중구");			
			break;
		case "4"://대구 광역시
			json.put("1", "남구");
			json.put("2", "달서구");
			json.put("3", "달성군");
			json.put("4", "동구");
			json.put("5", "북구");
			json.put("6", "서구");
			json.put("7", "수성구");
			json.put("8", "중구");
			break;
		case "5"://광주 광역시
			json.put("1", "광산구");
			json.put("2", "남구");
			json.put("3", "동구");
			json.put("4", "북구");
			json.put("5", "서구");
			break;
		case "6": // 부산 광역시
			json.put("1", "강서구");
			json.put("2", "금정구");
			json.put("3", "기장군");
			json.put("4", "남구");
			json.put("5", "동구");
			json.put("6", "동래구");
			json.put("7", "부산진구");
			json.put("8", "북구");
			json.put("9", "사상구");
			json.put("10", "사하구");
			json.put("11", "서구");
			json.put("12", "수영구");
			json.put("13", "연제구");
			json.put("14", "영도구");
			json.put("15", "중구");
			json.put("16", "해운대구");
			break;
		case "7"://울산 광역시
			json.put("1", "중구");
			json.put("2", "남구");
			json.put("3", "동구");
			json.put("4", "북구");
			json.put("5", "울주군");
			break;
		case "8"://세종 특별 자치시
			json.put("1", "소정면");
			json.put("2", "전의면");
			json.put("3", "전동면");
			json.put("4", "연서면");
			json.put("5", "조치원읍");
			json.put("6", "연동면");
			json.put("7", "부강면");
			json.put("8", "연기면");
			json.put("9", "장군면");
			json.put("10", "금남면");
			json.put("11", "고운동");
			json.put("12", "아름동");
			json.put("13", "도담동");
			json.put("14", "종촌동");
			json.put("15", "새롬동");
			json.put("16", "한솔동");
			json.put("17", "보람동");
			break;
		case "31"://경기도 
			json.put("1", "가평군");
			json.put("2", "고양시");
			json.put("3", "과천시");
			json.put("4", "광명시");
			json.put("5", "광주시");
			json.put("6", "구리시");
			json.put("7", "군포시");
			json.put("8", "김포시");
			json.put("9", "남양주시");			
			json.put("10", "동두천시");
			json.put("11", "부천시");
			json.put("12", "성남시");
			json.put("13", "수원시");
			json.put("14", "시흥시");
			json.put("15", "안산시");
			json.put("16", "안성시");
			json.put("17", "안양시");
			json.put("18", "양주시");
			json.put("19", "양평군");
			json.put("20", "여주시");
			json.put("21", "연천군");
			json.put("22", "오산시");
			json.put("23", "용인시");
			json.put("24", "의왕시");
			json.put("25", "의정부시");
			json.put("26", "이천시");
			json.put("27", "파주시");
			json.put("28", "평택시");
			json.put("29", "포천시");
			json.put("30", "하남시");
			json.put("31", "화성시");
			break;
		case "32"://강원도
			json.put("1", "강릉시");
			json.put("2", "고성군");
			json.put("3", "동해시");
			json.put("4", "삼척시");
			json.put("5", "속초시");
			json.put("6", "양구군");
			json.put("7", "양양군");
			json.put("8", "영월군");
			json.put("9", "원주시");
			json.put("10", "인제군");
			json.put("11", "정선군");
			json.put("12", "철원군");
			json.put("13", "춘천시");
			json.put("14", "태백시");
			json.put("15", "평창군");
			json.put("16", "홍천군");
			json.put("17", "화천군");
			json.put("18", "횡성군");
			break;
		case "33"://충청북도
			json.put("1", "괴산군");
			json.put("2", "단양군");
			json.put("3", "보은군");
			json.put("4", "영동군");
			json.put("5", "옥천군");
			json.put("6", "음성군");
			json.put("7", "제천시");
			json.put("8", "진천군");
			json.put("9", "청원군");
			json.put("10", "청주시");
			json.put("11", "충주시");
			json.put("12", "증평군");
			break;
		case "34"://충청남도
			json.put("1", "공주시");
			json.put("2", "금산군");
			json.put("3", "논산시");
			json.put("4", "당진시");
			json.put("5", "보령시");
			json.put("6", "부여군");
			json.put("7", "서산시");
			json.put("8", "서천군");
			json.put("9", "아산시");
			json.put("11", "예산군");
			json.put("12", "천안시");
			json.put("13", "청양군");
			json.put("14", "태안군");			
			json.put("15", "홍성군");
			json.put("16", "계룡시");
			break;
		case "35"://경상북도
			json.put("1", "경산시");
			json.put("2", "경주시");
			json.put("3", "고령군");
			json.put("4", "구미시");
			json.put("5", "군위군");
			json.put("6", "김천시");
			json.put("7", "문경시");
			json.put("8", "봉화군");
			json.put("9", "상주시");
			json.put("10", "성주군");
			json.put("11", "안동시");
			json.put("12", "영덕군");
			json.put("13", "영양군");
			json.put("14", "영주시");
			json.put("15", "영천시");
			json.put("16", "예천군");
			json.put("17", "울릉군");
			json.put("18", "울진군");
			json.put("19", "의성군");
			json.put("20", "청도군");
			json.put("21", "청송군");
			json.put("22", "칠곡군");
			json.put("23", "포항시");
			break;
		case "36"://경상남도
			json.put("1", "거제시");
			json.put("2", "거창군");
			json.put("3", "고성군");
			json.put("4", "김해시");
			json.put("5", "남해군");
			json.put("6", "마산시");
			json.put("7", "밀양시");
			json.put("8", "사천시");
			json.put("9", "산청군");
			json.put("10", "양산시");
			json.put("12", "의령군");
			json.put("13", "진주시");
			json.put("14", "진해시");
			json.put("15", "창녕군");
			json.put("16", "창원시");
			json.put("17", "통영시");
			json.put("18", "하동군");
			json.put("19", "함안군");
			json.put("20", "함양군");
			json.put("21", "합천군");
			break;
		case "37"://전라북도
			json.put("1", "고창군");
			json.put("2", "군산시");
			json.put("3", "김제시");
			json.put("4", "남원시");
			json.put("5", "무주군");
			json.put("6", "부안군");
			json.put("7", "순창군");
			json.put("8", "완주군");
			json.put("9", "익산시");
			json.put("10", "임실군");
			json.put("11", "장수군");
			json.put("12", "전주시");
			json.put("13", "정읍시");
			json.put("14", "진안군");
			break;
		case "38"://전라남도
			json.put("1", "강진군");
			json.put("2", "고흥군");
			json.put("3", "곡성군");
			json.put("4", "광양시");
			json.put("5", "구례군");
			json.put("6", "나주시");
			json.put("7", "담양군");
			json.put("8", "목포시");
			json.put("9", "무안군");
			json.put("10", "보성군");
			json.put("11", "순천시");
			json.put("12", "신안군");
			json.put("13", "여수시");
			json.put("16", "영광군");
			json.put("17", "영암군");
			json.put("18", "완도군");
			json.put("19", "장성군");
			json.put("20", "장흥군");
			json.put("21", "진도군");
			json.put("22", "함평군");
			json.put("23", "해남군");
			json.put("24", "화순군");
			break;
		case "39": //제주도
			json.put("1", "남제주군");
			json.put("2", "북제주군");
			json.put("3", "서귀포시");
			json.put("4", "제주시");
			break;
		default: 
			json.put("aa_01", "--직접 입력--");
		}
		return json.toJSONString();
	}
	/* ********************************************** select option ajax 종료 *********************************************/
}
