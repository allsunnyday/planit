package com.earth.planit.web;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PlannerController {

	@RequestMapping("/Planit/Before/Location.it")
	public String gotoLocation() throws Exception{
		
		return "planner/before/Location.theme";
	}
	
	@RequestMapping("/planner/plan/route.it")
	public String locationsub() throws Exception{
		
		return "planner/plan/route.theme";
	}
	
	@RequestMapping("/planner/plan/schedule.it")
	public String schedule() throws Exception{ 
	
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
		case "paldoNcity01": // 서울 특별시
			json.put("paldoNcity01_01", "강남구");
			json.put("paldoNcity01_02", "강동구");
			json.put("paldoNcity01_03", "강북구");
			json.put("paldoNcity01_04", "강서구");
			json.put("paldoNcity01_05", "관악구");
			json.put("paldoNcity01_06", "광진구");
			json.put("paldoNcity01_07", "구로구");
			json.put("paldoNcity01_08", "금천구");
			json.put("paldoNcity01_09", "노원구");
			json.put("paldoNcity01_10", "도봉구");
			json.put("paldoNcity01_11", "동대문구");
			json.put("paldoNcity01_12", "동작구");
			json.put("paldoNcity01_13", "마포구");
			json.put("paldoNcity01_14", "서대문구");
			json.put("paldoNcity01_15", "서초구");
			json.put("paldoNcity01_16", "성동구");
			json.put("paldoNcity01_17", "성북구");
			json.put("paldoNcity01_18", "송파구");
			json.put("paldoNcity01_19", "양천구");
			json.put("paldoNcity01_20", "영등포구");
			json.put("paldoNcity01_21", "용산구");
			json.put("paldoNcity01_22", "은평구");
			json.put("paldoNcity01_23", "종로구");
			json.put("paldoNcity01_24", "중구");
			json.put("paldoNcity01_25", "중랑구");
			break;
		case "paldoNcity02": // 부산 광역시
			json.put("paldoNcity02_01", "강서구");
			json.put("paldoNcity02_02", "금정구");
			json.put("paldoNcity02_03", "기장군");
			json.put("paldoNcity02_04", "남구");
			json.put("paldoNcity02_05", "동구");
			json.put("paldoNcity02_06", "동래구");
			json.put("paldoNcity02_07", "부산진구");
			json.put("paldoNcity02_08", "북구");
			json.put("paldoNcity02_09", "사상구");
			json.put("paldoNcity02_10", "사하구");
			json.put("paldoNcity02_11", "서구");
			json.put("paldoNcity02_12", "수영구");
			json.put("paldoNcity02_13", "연제구");
			json.put("paldoNcity02_14", "영도구");
			json.put("paldoNcity02_15", "중구");
			json.put("paldoNcity02_16", "해운대구");
			break;
		case "paldoNcity03"://대구 광역시
			json.put("paldoNcity03_01", "남구");
			json.put("paldoNcity03_02", "달서구");
			json.put("paldoNcity03_03", "달성군");
			json.put("paldoNcity03_04", "동구");
			json.put("paldoNcity03_05", "북구");
			json.put("paldoNcity03_06", "서구");
			json.put("paldoNcity03_07", "수성구");
			json.put("paldoNcity03_08", "중구");
			break;
		case "paldoNcity04"://인천 광역시
			json.put("paldoNcity04_01", "강화군");
			json.put("paldoNcity04_02", "계양구");
			json.put("paldoNcity04_03", "남동구");
			json.put("paldoNcity04_04", "동구");
			json.put("paldoNcity04_05", "미추홀구");
			json.put("paldoNcity04_06", "부평구");
			json.put("paldoNcity04_07", "서구");
			json.put("paldoNcity04_08", "연수구");
			json.put("paldoNcity04_09", "옹진군");
			json.put("paldoNcity04_10", "중구");
			break;
		case "paldoNcity05"://광주 광역시
			json.put("paldoNcity05_01", "광산구");
			json.put("paldoNcity05_02", "남구");
			json.put("paldoNcity05_03", "동구");
			json.put("paldoNcity05_04", "북구");
			json.put("paldoNcity05_05", "서구");
			break;
		case "paldoNcity06"://대전 광역시
			json.put("paldoNcity06_01", "대덕구");
			json.put("paldoNcity06_02", "동구");
			json.put("paldoNcity06_03", "서구");
			json.put("paldoNcity06_04", "유성구");
			json.put("paldoNcity06_05", "중구");			
			break;
		case "paldoNcity07"://울산 광역시
			json.put("paldoNcity07_01", "남구");
			json.put("paldoNcity07_02", "동구");
			json.put("paldoNcity07_03", "북구");
			json.put("paldoNcity07_04", "울주군");
			json.put("paldoNcity07_05", "중구");
			break;
		case "paldoNcity08"://세종 특별 자치시
			json.put("paldoNcity08_01", "소정면");
			json.put("paldoNcity08_02", "전의면");
			json.put("paldoNcity08_03", "전동면");
			json.put("paldoNcity08_04", "연서면");
			json.put("paldoNcity08_05", "조치원읍");
			json.put("paldoNcity08_06", "연동면");
			json.put("paldoNcity08_07", "부강면");
			json.put("paldoNcity08_08", "연기면");
			json.put("paldoNcity08_09", "장군면");
			json.put("paldoNcity08_10", "금남면");
			json.put("paldoNcity08_11", "고운동");
			json.put("paldoNcity08_12", "아름동");
			json.put("paldoNcity08_13", "도담동");
			json.put("paldoNcity08_14", "종촌동");
			json.put("paldoNcity08_15", "새롬동");
			json.put("paldoNcity08_16", "한솔동");
			json.put("paldoNcity08_17", "보람동");
			break;
		case "paldoNcity09"://경기도 
			json.put("paldoNcity09_01", "가평군");
			json.put("paldoNcity09_02", "고양시");
			json.put("paldoNcity09_03", "과천시");
			json.put("paldoNcity09_04", "광명시");
			json.put("paldoNcity09_05", "광주시");
			json.put("paldoNcity09_06", "구리시");
			json.put("paldoNcity09_07", "군포시");
			json.put("paldoNcity09_08", "김포시");
			json.put("paldoNcity09_09", "남양주시");			
			json.put("paldoNcity09_10", "동두천시");
			json.put("paldoNcity09_11", "부천시");
			json.put("paldoNcity09_12", "성남시");
			json.put("paldoNcity09_13", "수원시");
			json.put("paldoNcity09_14", "시흥시");
			json.put("paldoNcity09_15", "안산시");
			json.put("paldoNcity09_16", "안성시");
			json.put("paldoNcity09_17", "안양시");
			json.put("paldoNcity09_18", "양주시");
			json.put("paldoNcity09_19", "양평군");
			json.put("paldoNcity09_20", "여주시");
			json.put("paldoNcity09_21", "연천군");
			json.put("paldoNcity09_22", "오산시");
			json.put("paldoNcity09_23", "용인시");
			json.put("paldoNcity09_24", "의왕시");
			json.put("paldoNcity09_25", "의정부시");
			json.put("paldoNcity09_26", "이천시");
			json.put("paldoNcity09_27", "파주시");
			json.put("paldoNcity09_28", "평택시");
			json.put("paldoNcity09_29", "포천시");
			json.put("paldoNcity09_30", "하남시");
			json.put("paldoNcity09_31", "화성시");
			break;
		case "paldoNcity10"://충청북도
			json.put("paldoNcity10_01", "괴산군");
			json.put("paldoNcity10_02", "단양군");
			json.put("paldoNcity10_03", "보은군");
			json.put("paldoNcity10_04", "영동군");
			json.put("paldoNcity10_05", "옥천군");
			json.put("paldoNcity10_06", "음성군");
			json.put("paldoNcity10_07", "제천시");
			json.put("paldoNcity10_08", "증평군");
			json.put("paldoNcity10_09", "진천군");
			json.put("paldoNcity10_10", "청주시");
			json.put("paldoNcity10_11", "충주시");
			break;
		case "paldoNcity11"://충청남도
			json.put("paldoNcity11_01", "계룡시");
			json.put("paldoNcity11_02", "공주시");
			json.put("paldoNcity11_03", "금산군");
			json.put("paldoNcity11_04", "논산시");
			json.put("paldoNcity11_05", "당진시");
			json.put("paldoNcity11_06", "보령시");
			json.put("paldoNcity11_07", "부여군");
			json.put("paldoNcity11_08", "서산시");
			json.put("paldoNcity11_09", "서천군");
			json.put("paldoNcity11_10", "아산시");
			json.put("paldoNcity11_11", "예산군");
			json.put("paldoNcity11_12", "천안시");
			json.put("paldoNcity11_13", "청양군");
			json.put("paldoNcity11_14", "태안군");			
			json.put("paldoNcity11_15", "홍성군");
			break;
		case "paldoNcity12"://강원도
			json.put("paldoNcity12_01", "강릉시");
			json.put("paldoNcity12_02", "고성군");
			json.put("paldoNcity12_03", "동해시");
			json.put("paldoNcity12_04", "삼척시");
			json.put("paldoNcity12_05", "속초시");
			json.put("paldoNcity12_06", "양구군");
			json.put("paldoNcity12_07", "양양군");
			json.put("paldoNcity12_08", "영월군");
			json.put("paldoNcity12_09", "원주시");
			json.put("paldoNcity12_10", "인제군");
			json.put("paldoNcity12_11", "정선군");
			json.put("paldoNcity12_12", "철원군");
			json.put("paldoNcity12_13", "춘천시");
			json.put("paldoNcity12_14", "태백시");
			json.put("paldoNcity12_15", "평창군");
			json.put("paldoNcity12_16", "홍천군");
			json.put("paldoNcity12_17", "화천군");
			json.put("paldoNcity12_18", "횡성군");
			break;
		case "paldoNcity13"://전라북도
			json.put("paldoNcity13_01", "고창군");
			json.put("paldoNcity13_02", "군산시");
			json.put("paldoNcity13_03", "김제시");
			json.put("paldoNcity13_04", "남원시");
			json.put("paldoNcity13_05", "무주군");
			json.put("paldoNcity13_06", "부안군");
			json.put("paldoNcity13_07", "순창군");
			json.put("paldoNcity13_08", "완주군");
			json.put("paldoNcity13_09", "익산시");
			json.put("paldoNcity13_10", "임실군");
			json.put("paldoNcity13_11", "장수군");
			json.put("paldoNcity13_12", "전주시");
			json.put("paldoNcity13_13", "정읍시");
			json.put("paldoNcity13_14", "진안군");
			break;
		case "paldoNcity14"://전라남도
			json.put("paldoNcity14_01", "강진군");
			json.put("paldoNcity14_02", "고흥군");
			json.put("paldoNcity14_03", "곡성군");
			json.put("paldoNcity14_04", "광양시");
			json.put("paldoNcity14_05", "구례군");
			json.put("paldoNcity14_06", "나주시");
			json.put("paldoNcity14_07", "담양군");
			json.put("paldoNcity14_08", "목포시");
			json.put("paldoNcity14_09", "무안군");
			json.put("paldoNcity14_10", "보성군");
			json.put("paldoNcity14_11", "순천시");
			json.put("paldoNcity14_12", "신안군");
			json.put("paldoNcity14_13", "여수시");
			json.put("paldoNcity14_14", "영광군");
			json.put("paldoNcity14_15", "영암군");
			json.put("paldoNcity14_16", "완도군");
			json.put("paldoNcity14_17", "장성군");
			json.put("paldoNcity14_18", "장흥군");
			json.put("paldoNcity14_19", "진도군");
			json.put("paldoNcity14_20", "함평군");
			json.put("paldoNcity14_21", "해남군");
			json.put("paldoNcity14_22", "화순군");
			break;
		case "paldoNcity15"://경상북도
			json.put("paldoNcity15_01", "경산시");
			json.put("paldoNcity15_02", "경주시");
			json.put("paldoNcity15_03", "고령군");
			json.put("paldoNcity15_04", "구미시");
			json.put("paldoNcity15_05", "군위군");
			json.put("paldoNcity15_06", "김천시");
			json.put("paldoNcity15_07", "문경시");
			json.put("paldoNcity15_08", "봉화군");
			json.put("paldoNcity15_09", "상주시");
			json.put("paldoNcity15_10", "성주군");
			json.put("paldoNcity15_11", "안동시");
			json.put("paldoNcity15_12", "영덕군");
			json.put("paldoNcity15_13", "영양군");
			json.put("paldoNcity15_14", "영주시");
			json.put("paldoNcity15_15", "영천시");
			json.put("paldoNcity15_16", "예천군");
			json.put("paldoNcity15_17", "울릉군");
			json.put("paldoNcity15_18", "울진군");
			json.put("paldoNcity15_19", "의성군");
			json.put("paldoNcity15_20", "청도군");
			json.put("paldoNcity15_21", "청송군");
			json.put("paldoNcity15_22", "칠곡군");
			json.put("paldoNcity15_23", "포항시");
			break;
		case "paldoNcity16"://경상남도
			json.put("paldoNcity16_01", "거제시");
			json.put("paldoNcity16_02", "거창군");
			json.put("paldoNcity16_03", "고성군");
			json.put("paldoNcity16_04", "김해시");
			json.put("paldoNcity16_05", "남해군");
			json.put("paldoNcity16_06", "밀양시");
			json.put("paldoNcity16_07", "사천시");
			json.put("paldoNcity16_08", "산청군");
			json.put("paldoNcity16_09", "양산시");
			json.put("paldoNcity16_10", "의령군");
			json.put("paldoNcity16_11", "진주시");
			json.put("paldoNcity16_12", "창녕군");
			json.put("paldoNcity16_13", "창원시");
			json.put("paldoNcity16_14", "통영시");
			json.put("paldoNcity16_15", "하동군");
			json.put("paldoNcity16_16", "함안군");
			json.put("paldoNcity16_17", "함양군");
			json.put("paldoNcity16_18", "합천군");
			break;
		default: //제주도
			json.put("paldoNcity17_01", "서귀포시");
			json.put("paldoNcity17_02", "제주시");
		}
		return json.toJSONString();
	}
	/* ********************************************** select option ajax 종료 *********************************************/
}
