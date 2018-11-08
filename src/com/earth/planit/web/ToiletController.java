package com.earth.planit.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.MemberService;
import com.earth.planit.service.ToiletDTO;
import com.earth.planit.service.ToiletService;


@Controller
public class ToiletController {
	
	@Resource(name="toiletService")
	private ToiletService service;
	
	@Resource(name="memberService")
	private MemberService memberservice;
	
	
	 @ResponseBody
	   @RequestMapping(value="/android/findPublicToilet.it", produces="text/plain; charset=UTF-8")
	   public String findPublicToilet(@RequestParam Map map) throws Exception{
	      //현재위치 받아서 주소로 변경한후 근처의 화장실 찾기
	      System.out.println("findPublicToilet호출");
	      System.out.println(map.get("latitude"));
	      System.out.println(map.get("longitude"));
	      map.put("start",1);
	      map.put("end",10);
	      
	      List<ToiletDTO> toiletList =  service.selectToiletList(map);
	      System.out.println("service"+service.selectToiletList(map));
	      
	      JSONObject json = new JSONObject();
	      System.out.println("toiletList.size()"+toiletList.size());
	      List<Map> collections = new Vector<Map>();
	      for(ToiletDTO dto: toiletList) {
	         Map record = new HashMap();
	         record.put("longitude", dto.getLongitude());
	         record.put("latitude", dto.getLatitude());
	         record.put("toilet_type", dto.getToilet_type());
	         record.put("toilet_nm", dto.getToilet_nm());
	         record.put("open_time", dto.getOpen_time());
	         record.put("rdnmadr", dto.getRdnmadr());
	         collections.add(record);
	      }
	      System.out.println("toiletcollections:"+JSONArray.toJSONString(collections));
	      
	      return JSONArray.toJSONString(collections);

	 }
	
}
