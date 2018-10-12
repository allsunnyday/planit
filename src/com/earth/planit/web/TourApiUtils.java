package com.earth.planit.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Vector;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.earth.planit.service.ContentDTO;

public class TourApiUtils {


	public static String serviceKey ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	//관광 공통 정보를 조회하는 메소드 
	public static ContentDTO getdetailCommon(String contenttype, String contentid) throws Exception {
		ContentDTO content = new ContentDTO();
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="+serviceKey +
				"&contentTypeId="+ contenttype+
				"&contentId="+contentid+ 
				"&MobileOS=ETC" + 
				"&MobileApp=TourAPI3.0_Guide" + 
				"&defaultYN=Y" + 
				"&firstImageYN=Y" + 
				"&areacodeYN=Y" + 
				"&catcodeYN=Y" + 
				"&addrinfoYN=Y" + 
				"&mapinfoYN=Y" + 
				"&overviewYN=Y" + 
				"&_type=json"+
				"&transGuideYN=Y";
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
		
		JSONParser jsonparser = new JSONParser();

		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		JSONArray list = (JSONArray) json.get("item");
		List<ContentDTO> contents = new Vector();
		for(int i=0; i<list.size(); i++) {
			JSONObject jsonobj = (JSONObject)list.get(i);
			ContentDTO dto = new ContentDTO();
			dto.setContentid(jsonobj.get("contentid").toString());
			dto.setContenttype(jsonobj.get("contenttypeid").toString());
			dto.setTitle(jsonobj.get("title").toString());
			dto.setTel(jsonobj.get("tel")==null?"":jsonobj.get("tel").toString());
			dto.setAreacode(jsonobj.get("areacode")==null?"null":jsonobj.get("areacode").toString());
			dto.setAddr1(jsonobj.get("addr1")==null?"":jsonobj.get("addr1").toString());
			dto.setAddr2(jsonobj.get("addr2")==null?"":jsonobj.get("addr2").toString());
			dto.setCat1(jsonobj.get("cat1")==null?"":jsonobj.get("cat1").toString());
			dto.setCat2(jsonobj.get("cat2")==null?"":jsonobj.get("cat2").toString());
			dto.setCat3(jsonobj.get("cat3")==null?"":jsonobj.get("cat3").toString());
			dto.setMapx(jsonobj.get("mapx")==null?"0":jsonobj.get("mapx").toString());
			dto.setMapy(jsonobj.get("mapy")==null?"0":jsonobj.get("mapy").toString());
			dto.setFirstimage(jsonobj.get("firstimage")==null?"":jsonobj.get("firstimage").toString());
			dto.setFirstimage2(jsonobj.get("firstimage2")==null?"":jsonobj.get("firstimage2").toString());
			dto.setSigungucode(jsonobj.get("sigungucode")==null?"":jsonobj.get("sigungucode").toString());
			dto.setZipcode(jsonobj.get("zipcode")==null?"":jsonobj.get("zipcode").toString());
			dto.setOverview(jsonobj.get("overview")==null?"":jsonobj.get("overview").toString());
			contents.add(dto);
		}
		return content;
		
	}
	
}
