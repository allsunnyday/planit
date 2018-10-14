package com.earth.planit.web;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.earth.planit.service.ContentDTO;

public class TourApiUtils {


	public static String serviceKey ="NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D";
	//관광 공통 정보를 조회하는 메소드 
	public static ContentDTO getdetailCommon(String contenttype, String contentid) throws Exception {
		
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
		JSONParser jsonparser = new JSONParser();
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		// 공통사항 조회는 item이 jsonarray가 아니라 jsonobject형식이다. 따라서 jsonArray로 변환이 안된는 점에 유의하라
		json = (JSONObject) json.get("item");
		//System.out.println("============="+json.toJSONString());
		ContentDTO dto = new ContentDTO();
		dto.setContentid(json.get("contentid").toString());
		dto.setContenttype(json.get("contenttypeid").toString());
		dto.setTitle(json.get("title").toString());
		dto.setTel(json.get("tel")==null?"":json.get("tel").toString());
		dto.setAreacode(json.get("areacode")==null?"null":json.get("areacode").toString());
		dto.setAddr1(json.get("addr1")==null?"":json.get("addr1").toString());
		dto.setAddr2(json.get("addr2")==null?"":json.get("addr2").toString());
		dto.setCat1(json.get("cat1")==null?"":json.get("cat1").toString());
		dto.setCat2(json.get("cat2")==null?"":json.get("cat2").toString());
		dto.setCat3(json.get("cat3")==null?"":json.get("cat3").toString());
		dto.setMapx(json.get("mapx")==null?"0":json.get("mapx").toString());
		dto.setMapy(json.get("mapy")==null?"0":json.get("mapy").toString());
		dto.setFirstimage(json.get("firstimage")==null?"":json.get("firstimage").toString());
		dto.setFirstimage2(json.get("firstimage2")==null?"":json.get("firstimage2").toString());
		dto.setSigungucode(json.get("sigungucode")==null?"":json.get("sigungucode").toString());
		dto.setZipcode(json.get("zipcode")==null?"":json.get("zipcode").toString());
		dto.setOverview(json.get("overview")==null?"":json.get("overview").toString());

		return dto;
		
	}
	
	public static String getOverView(String contentid, String contenttype) throws Exception {
		
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="+serviceKey +
				"&contentTypeId="+ contenttype+
				"&contentId="+contentid+ 
				"&MobileOS=ETC" + 
				"&MobileApp=TourAPI3.0_Guide" + 
				"&defaultYN=N" + 
				"&firstImageYN=N" + 
				"&areacodeYN=N" + 
				"&catcodeYN=N" + 
				"&addrinfoYN=N" + 
				"&mapinfoYN=N" + 
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
		JSONParser jsonparser = new JSONParser();
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		// 공통사항 조회는 item이 jsonarray가 아니라 jsonobject형식이다. 따라서 jsonArray로 변환이 안된는 점에 유의하라
		json = (JSONObject) json.get("item");
		//System.out.println("============="+json.toJSONString());
		return json.get("overview")==null?"":json.get("overview").toString();
	}
	
	
	public static List<Map> getImageTourdata(String contentid)throws Exception{
		
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey="+serviceKey
				+ "&contentId="+contentid
				+ "&imageYN=Y"
				+ "&MobileOS=ETC"
				+"&_type=json"
				+ "&MobileApp=AppTest";
		
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
		JSONParser jsonparser = new JSONParser();
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		// 공통사항 조회는 item이 jsonarray가 아니라 jsonobject형식이다. 따라서 jsonArray로 변환이 안된는 점에 유의하라
		JSONArray jsonarray = (JSONArray) json.get("item");
		System.out.println(jsonarray.toJSONString()+"======================"+jsonarray.size());
		//
		List<Map> imagelist = new Vector<Map>();
		for(int i=0; i<jsonarray.size(); i++) {
			JSONObject js = (JSONObject) jsonarray.get(i);
			Map map = new HashMap();
			//map.put("imagename", json.get("imagename"));
			map.put("originimgurl", json.get("originimgurl")==null?"no-image":json.get("originimgurl").toString());
			map.put("serialnum", json.get("serialnum")==null?"no-image":json.get("serialnum").toString());
			map.put("smallimageurl", json.get("smallimageurl")==null?"no-image":json.get("smallimageurl").toString());
			imagelist.add(map);
			
		}
		return imagelist;
	}
	
}
