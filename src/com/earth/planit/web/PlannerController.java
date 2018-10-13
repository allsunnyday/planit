package com.earth.planit.web;

import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PlannerController {
	
	@RequestMapping("/Planit/Before/LocationMain.it")
	public String gotoLocationMain() throws Exception{
		
		return "planner/before/LocationMain.theme";
	}
	
	@RequestMapping("/Planit/Before/Location.it")
	public String gotoLocation(@RequestParam Map map, Model model) throws Exception{

		
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
		case "1": // 서울 특별시
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
		case "2"://인천 광역시
			json.put("paldoNcity02_01", "강화군");
			json.put("paldoNcity02_02", "계양구");
			json.put("paldoNcity02_03", "남동구");
			json.put("paldoNcity02_04", "동구");
			json.put("paldoNcity02_05", "미추홀구");
			json.put("paldoNcity02_06", "부평구");
			json.put("paldoNcity02_07", "서구");
			json.put("paldoNcity02_08", "연수구");
			json.put("paldoNcity02_09", "옹진군");
			json.put("paldoNcity02_10", "중구");
			break;
		case "3"://대전 광역시
			json.put("paldoNcity03_01", "대덕구");
			json.put("paldoNcity03_02", "동구");
			json.put("paldoNcity03_03", "서구");
			json.put("paldoNcity03_04", "유성구");
			json.put("paldoNcity03_05", "중구");			
			break;
		case "4"://대구 광역시
			json.put("paldoNcity04_01", "남구");
			json.put("paldoNcity04_02", "달서구");
			json.put("paldoNcity04_03", "달성군");
			json.put("paldoNcity04_04", "동구");
			json.put("paldoNcity04_05", "북구");
			json.put("paldoNcity04_06", "서구");
			json.put("paldoNcity04_07", "수성구");
			json.put("paldoNcity04_08", "중구");
			break;
		case "5"://광주 광역시
			json.put("paldoNcity05_01", "광산구");
			json.put("paldoNcity05_02", "남구");
			json.put("paldoNcity05_03", "동구");
			json.put("paldoNcity05_04", "북구");
			json.put("paldoNcity05_05", "서구");
			break;
		case "6": // 부산 광역시
			json.put("paldoNcity06_01", "강서구");
			json.put("paldoNcity06_02", "금정구");
			json.put("paldoNcity06_03", "기장군");
			json.put("paldoNcity06_04", "남구");
			json.put("paldoNcity06_05", "동구");
			json.put("paldoNcity06_06", "동래구");
			json.put("paldoNcity06_07", "부산진구");
			json.put("paldoNcity06_08", "북구");
			json.put("paldoNcity06_09", "사상구");
			json.put("paldoNcity06_10", "사하구");
			json.put("paldoNcity06_11", "서구");
			json.put("paldoNcity06_12", "수영구");
			json.put("paldoNcity06_13", "연제구");
			json.put("paldoNcity06_14", "영도구");
			json.put("paldoNcity06_15", "중구");
			json.put("paldoNcity06_16", "해운대구");
			break;
		case "7"://울산 광역시
			json.put("paldoNcity07_01", "남구");
			json.put("paldoNcity07_02", "동구");
			json.put("paldoNcity07_03", "북구");
			json.put("paldoNcity07_04", "울주군");
			json.put("paldoNcity07_05", "중구");
			break;
		case "8"://세종 특별 자치시
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
		case "31"://경기도 
			json.put("paldoNcity31_01", "가평군");
			json.put("paldoNcity31_02", "고양시");
			json.put("paldoNcity31_03", "과천시");
			json.put("paldoNcity31_04", "광명시");
			json.put("paldoNcity31_05", "광주시");
			json.put("paldoNcity31_06", "구리시");
			json.put("paldoNcity31_07", "군포시");
			json.put("paldoNcity31_08", "김포시");
			json.put("paldoNcity31_09", "남양주시");			
			json.put("paldoNcity31_10", "동두천시");
			json.put("paldoNcity31_11", "부천시");
			json.put("paldoNcity31_12", "성남시");
			json.put("paldoNcity31_13", "수원시");
			json.put("paldoNcity31_14", "시흥시");
			json.put("paldoNcity31_15", "안산시");
			json.put("paldoNcity31_16", "안성시");
			json.put("paldoNcity31_17", "안양시");
			json.put("paldoNcity31_18", "양주시");
			json.put("paldoNcity31_19", "양평군");
			json.put("paldoNcity31_20", "여주시");
			json.put("paldoNcity31_21", "연천군");
			json.put("paldoNcity31_22", "오산시");
			json.put("paldoNcity31_23", "용인시");
			json.put("paldoNcity31_24", "의왕시");
			json.put("paldoNcity31_25", "의정부시");
			json.put("paldoNcity31_26", "이천시");
			json.put("paldoNcity31_27", "파주시");
			json.put("paldoNcity31_28", "평택시");
			json.put("paldoNcity31_29", "포천시");
			json.put("paldoNcity31_30", "하남시");
			json.put("paldoNcity31_31", "화성시");
			break;
		case "32"://강원도
			json.put("paldoNcity32_01", "강릉시");
			json.put("paldoNcity32_02", "고성군");
			json.put("paldoNcity32_03", "동해시");
			json.put("paldoNcity32_04", "삼척시");
			json.put("paldoNcity32_05", "속초시");
			json.put("paldoNcity32_06", "양구군");
			json.put("paldoNcity32_07", "양양군");
			json.put("paldoNcity32_08", "영월군");
			json.put("paldoNcity32_09", "원주시");
			json.put("paldoNcity32_10", "인제군");
			json.put("paldoNcity32_11", "정선군");
			json.put("paldoNcity32_12", "철원군");
			json.put("paldoNcity32_13", "춘천시");
			json.put("paldoNcity32_14", "태백시");
			json.put("paldoNcity32_15", "평창군");
			json.put("paldoNcity32_16", "홍천군");
			json.put("paldoNcity32_17", "화천군");
			json.put("paldoNcity32_18", "횡성군");
			break;
		case "33"://충청북도
			json.put("paldoNcity33_01", "괴산군");
			json.put("paldoNcity33_02", "단양군");
			json.put("paldoNcity33_03", "보은군");
			json.put("paldoNcity33_04", "영동군");
			json.put("paldoNcity33_05", "옥천군");
			json.put("paldoNcity33_06", "음성군");
			json.put("paldoNcity33_07", "제천시");
			json.put("paldoNcity33_08", "증평군");
			json.put("paldoNcity33_09", "진천군");
			json.put("paldoNcity33_10", "청주시");
			json.put("paldoNcity33_11", "충주시");
			break;
		case "34"://충청남도
			json.put("paldoNcity34_01", "계룡시");
			json.put("paldoNcity34_02", "공주시");
			json.put("paldoNcity34_03", "금산군");
			json.put("paldoNcity34_04", "논산시");
			json.put("paldoNcity34_05", "당진시");
			json.put("paldoNcity34_06", "보령시");
			json.put("paldoNcity34_07", "부여군");
			json.put("paldoNcity34_08", "서산시");
			json.put("paldoNcity34_09", "서천군");
			json.put("paldoNcity34_10", "아산시");
			json.put("paldoNcity34_11", "예산군");
			json.put("paldoNcity34_12", "천안시");
			json.put("paldoNcity34_13", "청양군");
			json.put("paldoNcity34_14", "태안군");			
			json.put("paldoNcity34_15", "홍성군");
			break;
		case "35"://경상북도
			json.put("paldoNcity35_01", "경산시");
			json.put("paldoNcity35_02", "경주시");
			json.put("paldoNcity35_03", "고령군");
			json.put("paldoNcity35_04", "구미시");
			json.put("paldoNcity35_05", "군위군");
			json.put("paldoNcity35_06", "김천시");
			json.put("paldoNcity35_07", "문경시");
			json.put("paldoNcity35_08", "봉화군");
			json.put("paldoNcity35_09", "상주시");
			json.put("paldoNcity35_10", "성주군");
			json.put("paldoNcity35_11", "안동시");
			json.put("paldoNcity35_12", "영덕군");
			json.put("paldoNcity35_13", "영양군");
			json.put("paldoNcity35_14", "영주시");
			json.put("paldoNcity35_15", "영천시");
			json.put("paldoNcity35_16", "예천군");
			json.put("paldoNcity35_17", "울릉군");
			json.put("paldoNcity35_18", "울진군");
			json.put("paldoNcity35_19", "의성군");
			json.put("paldoNcity35_20", "청도군");
			json.put("paldoNcity35_21", "청송군");
			json.put("paldoNcity35_22", "칠곡군");
			json.put("paldoNcity35_23", "포항시");
			break;
		case "36"://경상남도
			json.put("paldoNcity36_01", "거제시");
			json.put("paldoNcity36_02", "거창군");
			json.put("paldoNcity36_03", "고성군");
			json.put("paldoNcity36_04", "김해시");
			json.put("paldoNcity36_05", "남해군");
			json.put("paldoNcity36_06", "밀양시");
			json.put("paldoNcity36_07", "사천시");
			json.put("paldoNcity36_08", "산청군");
			json.put("paldoNcity36_09", "양산시");
			json.put("paldoNcity36_10", "의령군");
			json.put("paldoNcity36_11", "진주시");
			json.put("paldoNcity36_12", "창녕군");
			json.put("paldoNcity36_13", "창원시");
			json.put("paldoNcity36_14", "통영시");
			json.put("paldoNcity36_15", "하동군");
			json.put("paldoNcity36_16", "함안군");
			json.put("paldoNcity36_17", "함양군");
			json.put("paldoNcity36_18", "합천군");
			break;
		case "37"://전라북도
			json.put("paldoNcity37_01", "고창군");
			json.put("paldoNcity37_02", "군산시");
			json.put("paldoNcity37_03", "김제시");
			json.put("paldoNcity37_04", "남원시");
			json.put("paldoNcity37_05", "무주군");
			json.put("paldoNcity37_06", "부안군");
			json.put("paldoNcity37_07", "순창군");
			json.put("paldoNcity37_08", "완주군");
			json.put("paldoNcity37_09", "익산시");
			json.put("paldoNcity37_10", "임실군");
			json.put("paldoNcity37_11", "장수군");
			json.put("paldoNcity37_12", "전주시");
			json.put("paldoNcity37_13", "정읍시");
			json.put("paldoNcity37_14", "진안군");
			break;
		case "38"://전라남도
			json.put("paldoNcity38_01", "강진군");
			json.put("paldoNcity38_02", "고흥군");
			json.put("paldoNcity38_03", "곡성군");
			json.put("paldoNcity38_04", "광양시");
			json.put("paldoNcity38_05", "구례군");
			json.put("paldoNcity38_06", "나주시");
			json.put("paldoNcity38_07", "담양군");
			json.put("paldoNcity38_08", "목포시");
			json.put("paldoNcity38_09", "무안군");
			json.put("paldoNcity38_10", "보성군");
			json.put("paldoNcity38_11", "순천시");
			json.put("paldoNcity38_12", "신안군");
			json.put("paldoNcity38_13", "여수시");
			json.put("paldoNcity38_14", "영광군");
			json.put("paldoNcity38_15", "영암군");
			json.put("paldoNcity38_16", "완도군");
			json.put("paldoNcity38_17", "장성군");
			json.put("paldoNcity38_18", "장흥군");
			json.put("paldoNcity38_19", "진도군");
			json.put("paldoNcity38_20", "함평군");
			json.put("paldoNcity38_21", "해남군");
			json.put("paldoNcity38_22", "화순군");
			break;
		case "39": //제주도
			json.put("paldoNcity39_01", "서귀포시");
			json.put("paldoNcity39_02", "제주시");
			break;
		default: 
			json.put("aa_01", "--직접 입력--");
		}
		return json.toJSONString();
	}
	/* ********************************************** select option ajax 종료 *********************************************/
}
