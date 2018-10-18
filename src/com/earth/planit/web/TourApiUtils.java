package com.earth.planit.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ContentDetailIntroDTO;

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
	
	public static ContentDetailIntroDTO getDetilIntro(String contentid, String contenttype) throws Exception {
		
		String addr="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey="+serviceKey
				+ "&contentId="+contentid
				+ "&contentTypeId="+contenttype
				+ "&MobileOS=ETC"
				+ "&_type=json"
				+ "&MobileApp=AppTest";
		// url 객체 생성
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
		// 받아온 result(json형식의 스트링)을 파싱하기 
		System.out.println(result.toString());
		JSONParser jsonparser = new JSONParser();
		JSONObject jsonobject = (JSONObject) jsonparser.parse(result.toString());
		JSONObject json = (JSONObject) jsonobject.get("response");
		json = (JSONObject) json.get("body");
		json = (JSONObject) json.get("items");
		// 공통사항 조회는 item이 jsonarray가 아니라 jsonobject형식이다. 따라서 jsonArray로 변환이 안된는 점에 유의하라
		json = (JSONObject) json.get("item");
		
		ContentDetailIntroDTO dto = new ContentDetailIntroDTO();
		if("12".equals(contenttype)) {  //관광지 
			dto.setAccomcount(json.get("accomcount")==null ?  "" : json.get("accomcount").toString());
			dto.setChkbabycarriage(json.get("chkbabycarriage")==null ?  "" : json.get("chkbabycarriage").toString());
			dto.setChkcreditcard( json.get("chkcreditcard")==null ?  "" : json.get("chkcreditcard").toString());
			dto.setChkpet(json.get("chkpet")==null ?  "" : json.get("chkpet").toString());
			dto.setExpagerange( json.get("expagerange")==null ?  "" : json.get("expagerange").toString());
			dto.setExpguide( json.get("expguide")==null ?  "" : json.get("expguide").toString());
			dto.setHeritage1( json.get("heritage1")==null ?  "" : json.get("heritage1").toString());
			dto.setHeritage2( json.get("heritage2")==null ?  "" : json.get("heritage2").toString());
			dto.setHeritage3(json.get("heritage3")==null ?  "" : json.get("heritage3").toString());
			dto.setInfocenter( json.get("infocenter")==null ?  "" : json.get("infocenter").toString());
			dto.setOpendate(json.get("opendate")==null ?  "" : json.get("opendate").toString());
			dto.setParking(json.get("parking")==null ?  "" : json.get("parking").toString());
			dto.setRestdate(json.get("restdate")==null ?  "" : json.get("restdate").toString());
			dto.setUseseason(json.get("useseason")==null ?  "" : json.get("useseason").toString());
			dto.setUsetime(json.get("usetime")==null ?  "" : json.get("usetime").toString());
		}
		else if("14".equals(contenttype)) { //문화시설
			dto.setAccomcountculture(json.get("accomcountculture")==null? "" : json.get("accomcountculture").toString());
			dto.setChkbabycarriageculture(json.get("chkbabycarriageculture")==null? "" : json.get("chkbabycarriageculture").toString());
			dto.setChkcreditcardculture(json.get("chkcreditcardculture")==null? "" : json.get("chkcreditcardculture").toString());
			dto.setChkpetculture(json.get("chkpetculture")==null? "" : json.get("chkpetculture").toString());
			dto.setDiscountinfo(json.get("discountinfo")==null? "" : json.get("discountinfo").toString());
			dto.setInfocenterculture(json.get("infocenterculture")==null? "" : json.get("infocenterculture").toString());
			dto.setParkingculture(json.get("parkingculture")==null? "" : json.get("parkingculture").toString());
			dto.setParkingfee(json.get("parkingfee")==null? "" : json.get("parkingfee").toString());
			dto.setRestdateculture(json.get("restdateculture")==null? "" : json.get("restdateculture").toString());
			dto.setUsefee(json.get("usefee")==null? "" : json.get("usefee").toString());
			dto.setUsetimeculture(json.get("usetimeculture")==null? "" : json.get("usetimeculture").toString());
			dto.setScale(json.get("scale")==null? "" : json.get("scale").toString());
			dto.setSpendtime(json.get("spendtime")==null? "" : json.get("spendtime").toString());
			
		}
		else if("15".equals(contenttype)) { //행사/공연/축제
			dto.setAgelimit(json.get("agelimit")==null? "" : json.get("agelimit").toString());
			dto.setBookingplace(json.get("bookingplace")==null? "" : json.get("bookingplace").toString());
			dto.setDiscountinfofestival(json.get("discountinfofestival")==null? "" : json.get("discountinfofestival").toString());
			dto.setEventenddate(json.get("eventenddate")==null? "" : json.get("eventenddate").toString());
			dto.setEventhomepage(json.get("eventhomepage")==null? "" : json.get("eventhomepage").toString());
			dto.setEventplace(json.get("eventplace")==null? "" : json.get("eventplace").toString());
			dto.setEventstartdate(json.get("eventstartdate")==null? "" : json.get("eventstartdate").toString());
			dto.setFestivalgrade(json.get("festivalgrade")==null? "" : json.get("festivalgrade").toString());
			dto.setPlaceinfo(json.get("placeinfo")==null? "" : json.get("placeinfo").toString());
			dto.setPlaytime(json.get("playtime")==null? "" : json.get("playtime").toString());
			dto.setProgram(json.get("program")==null? "" : json.get("program").toString());
			dto.setSpendtimefestival(json.get("spendtimefestival")==null? "" : json.get("spendtimefestival").toString());
			dto.setSponsor1(json.get("sponsor1")==null? "" : json.get("sponsor1").toString());
			dto.setSponsor1tel(json.get("sponsor1tel")==null? "" : json.get("sponsor1tel").toString());
			dto.setSponsor2(json.get("sponsor2")==null? "" : json.get("sponsor2").toString());
			dto.setSponsor2tel(json.get("sponsor2tel")==null? "" : json.get("sponsor2tel").toString());
			dto.setSubevent(json.get("subevent")==null? "" : json.get("subevent").toString());
			dto.setUsetimefestival(json.get("usetimefestival")==null? "" : json.get("usetimefestival").toString());
			
			
		}
		else if("25".equals(contenttype)) { //여행코스
			dto.setDistance(json.get("distance")==null? "" : json.get("distance").toString());
			dto.setInfocentertourcourse(json.get("infocentertourcourse")==null? "" : json.get("infocentertourcourse").toString());
			dto.setSchedule(json.get("schedule")==null? "" : json.get("schedule").toString());
			dto.setTaketime(json.get("taketime")==null? "" : json.get("taketime").toString());
			dto.setTheme(json.get("theme")==null? "" : json.get("theme").toString());
		}
		else if("28".equals(contenttype)) { //레포츠
			dto.setAccomcountleports(json.get("accomcountleports")==null? "" : json.get("accomcountleports").toString());
			dto.setChkbabycarriageleports(json.get("chkbabycarriageleports")==null? "" : json.get("chkbabycarriageleports").toString());
			dto.setChkcreditcardleports(json.get("chkcreditcardleports")==null? "" : json.get("chkcreditcardleports").toString());
			dto.setChkpetleports(json.get("chkpetleports")==null? "" : json.get("chkpetleports").toString());
			dto.setExpagerangeleports(json.get("expagerangeleports")==null? "" : json.get("expagerangeleports").toString());
			dto.setInfocenterleports(json.get("infocenterleports")==null? "" : json.get("infocenterleports").toString());
			dto.setOpenperiod(json.get("openperiod")==null? "" : json.get("openperiod").toString());
			dto.setParkingfeeleports(json.get("parkingfeeleports")==null? "" : json.get("parkingfeeleports").toString());
			dto.setParkingleports(json.get("parkingleports")==null? "" : json.get("parkingleports").toString());
			dto.setReservation(json.get("reservation")==null? "" : json.get("reservation").toString());
			dto.setRestdateleports(json.get("restdateleports")==null? "" : json.get("restdateleports").toString());
			dto.setScaleleports(json.get("scaleleports")==null? "" : json.get("scaleleports").toString());
			dto.setUsefeeleports(json.get("usefeeleports")==null? "" : json.get("usefeeleports").toString());
			dto.setUsetimeleports(json.get("usetimeleports")==null? "" : json.get("usetimeleports").toString());
		}
		else if("32".equals(contenttype)) { //숙박
			dto.setAccomcountlodging(json.get("accomcountlodging")==null? "" : json.get("accomcountlodging").toString());
			dto.setBenikia(json.get("benikia")==null? "" : json.get("benikia").toString());
			dto.setCheckintime(json.get("checkintime")==null? "" : json.get("checkintime").toString());
			dto.setCheckouttime(json.get("checkouttime")==null? "" : json.get("checkouttime").toString());
			dto.setChkcooking(json.get("chkcooking")==null? "" : json.get("chkcooking").toString());
			dto.setFoodplace(json.get("foodplace")==null? "" : json.get("foodplace").toString());
			dto.setGoodstay(json.get("goodstay")==null? "" : json.get("goodstay").toString());
			dto.setHanok(json.get("hanok")==null? "" : json.get("hanok").toString());
			dto.setInfocenterlodging(json.get("infocenterlodging")==null? "" : json.get("infocenterlodging").toString());
			dto.setParkinglodging(json.get("parkinglodging")==null? "" : json.get("parkinglodging").toString());
			dto.setPickup(json.get("pickup")==null? "" : json.get("pickup").toString());
			dto.setRoomcount(json.get("roomcount")==null? "" : json.get("roomcount").toString());
			dto.setReservationlodging(json.get("reservationlodging")==null? "" : json.get("reservationlodging").toString());
			dto.setReservationurl(json.get("reservationurl")==null? "" : json.get("reservationurl").toString());
			dto.setRoomtype(json.get("roomtype")==null? "" : json.get("roomtype").toString());
			dto.setScalelodging(json.get("scalelodging")==null? "" : json.get("scalelodging").toString());
			dto.setSubfacility(json.get("subfacility")==null? "" : json.get("subfacility").toString());
			dto.setBarbecue(json.get("barbecue")==null? "" : json.get("barbecue").toString());
			dto.setBeauty(json.get("beauty")==null? "" : json.get("beauty").toString());
			dto.setBeverage(json.get("beverage")==null? "" : json.get("beverage").toString());
			dto.setCampfire(json.get("campfire")==null? "" : json.get("campfire").toString());
			dto.setFitness(json.get("fitness")==null? "" : json.get("fitness").toString());
			dto.setKaraoke(json.get("karaoke")==null? "" : json.get("karaoke").toString());
			dto.setPublicbath(json.get("publicbath")==null? "" : json.get("publicbath").toString());
			dto.setSauna(json.get("sauna")==null? "" : json.get("sauna").toString());
			dto.setPublicpc(json.get("publicpc")==null? "" : json.get("publicpc").toString());
			dto.setSeminar(json.get("seminar")==null? "" : json.get("seminar").toString());
			dto.setSports(json.get("sports")==null? "" : json.get("sports").toString());
			dto.setBicycle(json.get("bicycle")==null? "" : json.get("bicycle").toString());
		}
		else if("38".equals(contenttype)) { //쇼핑
			dto.setChkbabycarriageshopping(json.get("chkbabycarriageshopping")==null? "" : json.get("chkbabycarriageshopping").toString());
			dto.setChkcreditcardshopping(json.get("chkcreditcardshopping")==null? "" : json.get("chkcreditcardshopping").toString());
			dto.setChkpetshopping(json.get("chkpetshopping")==null? "" : json.get("chkpetshopping").toString());
			dto.setCulturecenter(json.get("culturecenter")==null? "" : json.get("culturecenter").toString());
			dto.setFairday(json.get("fairday")==null? "" : json.get("fairday").toString());
			dto.setInfocentershopping(json.get("infocentershopping")==null? "" : json.get("infocentershopping").toString());
			dto.setOpendateshopping(json.get("opendateshopping")==null? "" : json.get("opendateshopping").toString());
			dto.setOpentime(json.get("opentime")==null? "" : json.get("opentime").toString());
			dto.setParkingshopping(json.get("parkingshopping")==null? "" : json.get("parkingshopping").toString());
			dto.setRestdateshopping(json.get("restdateshopping")==null? "" : json.get("restdateshopping").toString());
			dto.setRestroom(json.get("restroom")==null? "" : json.get("restroom").toString());
			dto.setSaleitem(json.get("saleitem")==null? "" : json.get("saleitem").toString());
			dto.setSaleitemcost(json.get("saleitemcost")==null? "" : json.get("saleitemcost").toString());
			dto.setScaleshopping(json.get("scaleshopping")==null? "" : json.get("scaleshopping").toString());
			dto.setShopguide(json.get("shopguide")==null? "" : json.get("shopguide").toString());
		}
		else if("39".equals(contenttype)) { //음식점
			dto.setChkcreditcardfood(json.get("chkcreditcardfood")==null? "" : json.get("chkcreditcardfood").toString());
			dto.setDiscountinfofood(json.get("discountinfofood")==null? "" : json.get("discountinfofood").toString());
			dto.setFirstmenu(json.get("firstmenu")==null? "" : json.get("firstmenu").toString());
			dto.setInfocenterfood(json.get("infocenterfood")==null? "" : json.get("infocenterfood").toString());
			dto.setKidsfacility(json.get("kidsfacility")==null? "" : json.get("kidsfacility").toString());
			dto.setOpendatefood(json.get("opendatefood")==null? "" : json.get("opendatefood").toString());
			dto.setOpentimefood(json.get("opentimefood")==null? "" : json.get("opentimefood").toString());
			dto.setPacking(json.get("packing")==null? "" : json.get("packing").toString());
			dto.setParkingfood(json.get("parkingfood")==null? "" : json.get("parkingfood").toString());
			dto.setReservationfood(json.get("reservationfood")==null? "" : json.get("reservationfood").toString());
			dto.setRestdatefood(json.get("restdatefood")==null? "" : json.get("restdatefood").toString());
			dto.setScalefood(json.get("scalefood")==null? "" : json.get("scalefood").toString());
			dto.setSeat(json.get("seat")==null? "" : json.get("seat").toString());
			dto.setSmoking(json.get("smoking")==null? "" : json.get("smoking").toString());
			dto.setTreatmenu(json.get("treatmenu")==null? "" : json.get("treatmenu").toString());
		}
		
		return dto;
	}
	
}
