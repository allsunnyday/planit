package com.earth.planit.web;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.membership.MemberImpl;
import org.apache.tomcat.util.codec.binary.Base64;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ContentDetailIntroDTO;
import com.earth.planit.service.ContentService;
import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;
import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.ReviewService;
import com.earth.planit.service.SearchListService;
/**
 * 
 * @author JHS
 *	content 상세 보기 컨트롤러 
 */
@Controller
public class CommonController {

	//api 키값
	
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@Resource(name="contentService")
	private ContentService contentService;
	
   @Resource(name="searchListService")
   private SearchListService searchListService;
	
   
   
   
	/* 서비스 주입 */
	   @Resource(name = "memberService")
	   private MemberService memberService;
	
	@RequestMapping("/planit/search/list/TourView.it")
	public String tourView(@RequestParam Map map,
								Model model) throws Exception{
		// viewcount 올리기 
		int affected = contentService.updateViewcount(map);
		System.out.println("updateviewcount affected row = "+affected);
		// map에 
		ContentDTO dto = reviewService.selectContent(map);
		
		// OVERVIEW정보 얻기 TOUR API의   
		String overview = TourApiUtils.getOverView(dto.getContentid(), dto.getContenttype());
		dto.setOverview(overview);
		ContentDetailIntroDTO detailIntro = TourApiUtils.getDetilIntro(dto.getContentid(), dto.getContenttype());
		model.addAttribute("content", dto);
		model.addAttribute("detailintro", detailIntro);
		if( "12".equals(dto.getContenttype())){
			System.out.println(detailIntro.getRestdate()+","+detailIntro.getChkbabycarriage()+","+detailIntro.getExpguide());
		}
		model.addAttribute("mapy", dto.getMapy());
	    model.addAttribute("mapx", dto.getMapx());
		// dto객체를 map으로 변경하는 로직 
		Map mMap = new HashMap();
		Field[] fields = detailIntro.getClass().getDeclaredFields();
		for ( int i=0; i<fields.length; i++) {
			fields[i].setAccessible(true);
			if(fields[i].get(detailIntro)!= null &&  // 숙박상세보기를 눌렀을 경우에 nullpoint에러를 방지하기 위해서 
					fields[i].get(detailIntro).toString().length()==0) {
				String korName = CommonUtil.getTourDetailIntroKorean(fields[i].getName());
				System.out.println("변경한 이름:"+korName);
				//mMap.put(fields[i].getName(), fields[i].get(detailIntro));
				mMap.put(korName, fields[i].get(detailIntro));
			}
		}
		
		//
		model.addAttribute("mMap", mMap);
		
		return "tourinfo/tdview/TourView.theme";
	}
	
	@ResponseBody
	@RequestMapping(value="/planit/search/tourview/LikedContent.it",produces="text/plain; charset=UTF-8")
	public String userLikedContent(@RequestParam Map map, HttpSession session) throws Exception{
		
		System.out.println(map.get("contentid")+" "+session.getAttribute("id"));
		map.put("id", session.getAttribute("id"));
		//// 이미  좋아요한 것인지 판단
		int isAlreadyLiked = contentService.isAlreadyLiked(map);
		if(isAlreadyLiked!=0) {
			// 이미 사용자가 좋아요를 눌렀다.
			return "already";
		}
		// 사용자가 아직 좋아요 한 것이 아니라면
		int affected = contentService.insertLikedTour(map);
		
		return "success";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/Ajax/android/Login.it",produces="text/html;charset=UTF-8")
	public String androidLogin(@RequestParam Map map) throws Exception{
		boolean isLogin = memberService.isLogin(map);
		JSONObject json = new JSONObject();
		if(isLogin) {
			json.put("isLogin","Y");
			json.put("id", map.get("id"));
		}
		else {
			json.put("isLogin","N");
		}
		
		System.out.println(json.get("isLogin"));
		return json.toJSONString();
	}
	
	@ResponseBody
	@RequestMapping(value="/Ajax/android/reviewList.it",produces="text/plain;charset=UTF-8")
	public String androidSelectReviewList(@RequestParam Map map) throws Exception{
		System.out.println(map.get("id")+"님의 리뷰를 조회합니다.");
		List<Map> list = reviewService.selectListForAndroid(map);
		for (Map comment : list) {
			comment.put("POSTDATE", comment.get("POSTDATE").toString().substring(0, 10));
		}
		return JSONArray.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping(value="/Ajax/android/reviewContentList.it", produces="text/plain;charset=UTF-8")
	public String androidSelectReviewContentList(@RequestParam Map map)throws Exception{
		int day = 1;
		/* if(map.get("review_id")!=null) { */
		
		ReviewDTO record = reviewService.selectReviewOne(map);
		day = Integer.parseInt(record.getSeries().toString()) - 1;
		String route[] = record.getRoute().split("#");
		System.out.println("route[0]" + route[0]);
		List<Map> oneRoute = new Vector();
		for (int i = 1; i < route.length; i++) { // i로 review의 사용자 글/그림을 가지고올수있다.
			Map rmap = new HashMap<>();
			String items[] = route[i].split(":");
			System.out.println(i + "번째 " + items.length + "개");
			rmap.put("areacode", items[0]); // 지역코드
			rmap.put("contenttype", items[1]);
			rmap.put("contentid", items[2]);
			rmap.put("title", items[3]); // 관광지이름
			rmap.put("todo", items[4]); // 할일
			rmap.put("todomemo", items[5]); // 할일 메모
			rmap.put("stayNY", items[6]); // 숙박인지 여부
			// ContentDTO dto = TourApiUtils.getdetailCommon(items[1], items[2]);
			// 관광데이터 가지고 오기
			// rmap.put("overview", dto.getOverview());
			// System.out.println(dto.getOverview());
			// 주소읽어오기

			ContentDTO dto = reviewService.selectContent(rmap);
			rmap.put("addr1", dto.getAddr1());
			rmap.put("firstimage2", dto.getFirstimage2());
			rmap.put("cat1", dto.getCat1kor());
			rmap.put("cat2", dto.getCat2kor());
			rmap.put("cat3", dto.getCat3kor());
			rmap.put("mapx", dto.getMapx());
			rmap.put("mapy", dto.getMapy());
			rmap.put("review_id", record.getReview_id());
			//
			oneRoute.add(rmap);
		}

		int totalReview = reviewService.getTotalReviewCount(map);
		return JSONArray.toJSONString(oneRoute);
	}
	

	   @ResponseBody
	   @RequestMapping(value = "/Ajax/android/TourList.it", produces = "text/plain; charset=UTF-8")
	   public String androidTourList(@RequestParam Map map) throws Exception {
	      System.out.println("tourlist안드로이드 ");
	      
	      JSONObject json = new JSONObject();
	      
	      map.put("start", 1);
	      map.put("end", 8);
	      
	      // areacode를 선택하지않았을떄
	         List<ContentDTO> tourlist = searchListService.selectTourList(map);
	         System.out.println("tourlist.size()"+tourlist.size());
	         List<Map> collections = new Vector<Map>();
	         for (ContentDTO dto : tourlist) {
	            Map record = new HashMap();
	            record.put("title", dto.getTitle());
	            record.put("firstimage", dto.getFirstimage());
	            record.put("contentid", dto.getContentid());
	            record.put("contenttype", dto.getContenttype());
	            record.put("areacode", dto.getAreacode());
	            collections.add(record);
	         }
	         System.out.println("ddddddddddd"+JSONArray.toJSONString(collections));
	         return JSONArray.toJSONString(collections);
	      
	   }
	   @ResponseBody
	   @RequestMapping(value = "/Ajax/android/RestaurantList.it", produces = "text/plain; charset=UTF-8")
	   public String androidRestaurantList(@RequestParam Map map) throws Exception {
	      System.out.println("RestaurantList안드로이드 ");
	      
	      JSONObject json = new JSONObject();
	      
	      map.put("start", 1);
	      map.put("end", 8);
	      
	      // areacode를 선택하지않았을떄
	      List<ContentDTO> foodlist = searchListService.selectFoodList(map);
	      System.out.println("foodlist.size()"+foodlist.size());
	      List<Map> collections = new Vector<Map>();
	      for (ContentDTO dto : foodlist) {
	         Map record = new HashMap();
	         record.put("title", dto.getTitle());
	         record.put("firstimage", dto.getFirstimage());
	         record.put("contentid", dto.getContentid());
	         record.put("contenttype", dto.getContenttype());
	         record.put("areacode", dto.getAreacode());
	         collections.add(record);
	      }
	      System.out.println("ddddddddddd"+JSONArray.toJSONString(collections));
	      return JSONArray.toJSONString(collections);
	      
	   }
	   @ResponseBody
	   @RequestMapping(value = "/Ajax/android/LodgementList.it", produces = "text/plain; charset=UTF-8")
	   public String androidLodgementList(@RequestParam Map map) throws Exception {
	      System.out.println("LodgementList안드로이드 ");
	      
	      JSONObject json = new JSONObject();
	      
	      map.put("start", 1);
	      map.put("end", 8);
	      
	      // areacode를 선택하지않았을떄
	      List<ContentDTO> sleeplist = searchListService.selectSleepList(map);
	      System.out.println("tourlist.size()"+sleeplist.size());
	      List<Map> collections = new Vector<Map>();
	      for (ContentDTO dto : sleeplist) {
	         Map record = new HashMap();
	         record.put("title", dto.getTitle());
	         record.put("firstimage", dto.getFirstimage());
	         record.put("contentid", dto.getContentid());
	         record.put("contenttype", dto.getContenttype());
	         record.put("areacode", dto.getAreacode());
	         collections.add(record);
	      }
	      System.out.println("ddddddddddd"+JSONArray.toJSONString(collections));
	      return JSONArray.toJSONString(collections);
	      
	   }
	   
	   @ResponseBody
	   @RequestMapping(value="/Ajax/android/reviewConetent.it",produces = "text/plain; charset=UTF-8")
	   public String anroidSelectReviewContent(@RequestParam Map map)throws Exception{
		   System.out.println("review_id=" + map.get("review_id") 
		   + " route_index=" + map.get("route_index") + "contentid="
					);
			// review_content와 content를 조인해서 가지고 오기
			Map reviewContent = reviewService.selectReviewContent(map);
			Map imageMap = new HashMap();
			int imageCount = 0;
			if (reviewContent.get("IMAGE") != null) {
				System.out.println(reviewContent.get("IMAGE"));
				String[] images = reviewContent.get("IMAGE").toString().trim().replace("<*>", "&").split("&");
				for (String img : images) {
					System.out.println(img);
					// ring name = (phisicalPath+File.separator+img);
					imageMap.put("" + imageCount++, img);
				}
			}
			imageMap.put("imagecount",imageCount);
			List<Map> list = new Vector();
			list.add(reviewContent);
			list.add(imageMap);
		   return JSONArray.toJSONString(list);
	   }
	   
	   
	   @ResponseBody
	   @RequestMapping(value="/Ajax/android/UploadImage.it",produces = "text/plain; charset=UTF-8")
	   public String androidUploadImage(@RequestParam Map<String,String> map, HttpServletRequest req )throws Exception{
		   System.out.println(map.get("filename"));
		   System.out.println("androidUploadImage() 서버에 이미지 전송 시작");
		   
		   String imgData = req.getParameter("image");
		   //imgData = imgData.replace("data:image/png;base64,", "");
		   byte[] file = Base64.decodeBase64(imgData);
		   
		   ByteArrayInputStream is = new ByteArrayInputStream(file);
		   String filename = req.getParameter("filename")+".png";
		   String phisicalPath = req.getServletContext().getRealPath("/Upload/Review");
		   File targetFile = new File(phisicalPath+File.separator+filename);
		   OutputStream out = new FileOutputStream(targetFile);
		   out.write(file);
		   out.flush();
		   out.close();
		   is.close();
		   System.out.println("성공!");
		  
		  // int affected = reviewService.updateReviewContentFromAndroid(map);
		   
		   return filename;
	   }
	   
	   @ResponseBody
	   @RequestMapping(value="/Ajax/android/UpdatereviewConetent.it",produces = "text/plain; charset=UTF-8")
	   public String androidUpdateReviewContent(@RequestParam Map map) throws Exception{
		   System.out.println("리뷰컨테트 업데이트 하러 왔습니다.");
		   System.out.println("review_id=" + map.get("review_id") 
		   + " route_index=" + map.get("route_index") + " filenamne="+map.get("filename")
					);
		   int affected = reviewService.updateReviewContentFromAndroid(map);
		   if (affected == 1) {
			   return "success";
		   }
		   return "fail";
	   }
	   
	   
	   //=========================== main top쿼리로 베스트 아이템 얻기 ================================//
	   @ResponseBody
	   @RequestMapping(value="/Planit/Play/Main.it",produces = "text/plain; charset=UTF-8")
	   public String getBestItemInPlanit()throws Exception{
		   //  top쿼리를 이용하여 
		   // 관광정보를 베스트 3
		   // 리뷰 베스트 5
		   // 플래너 최근 작성된 플래너 
		   return "";
	   }
	   
	   @ResponseBody
	   @RequestMapping(value="/Ajax/android/myPage.it",produces = "text/plain; charset=UTF-8")
	   public String getUserInfo(@RequestParam Map map) throws Exception{
		   System.out.println("mypage용 안드로이드 호출합니다~"+map.get("id"));
		   
		   Map userInfoMap= memberService.androidUserInfo(map);
		   userInfoMap.put("REGIDATE", userInfoMap.get("REGIDATE").toString().substring(0,10));
		   List<Map> collections = new Vector<Map>();
		   collections.add(userInfoMap);
		   System.out.println("mypage호출 결과압니다: "+JSONArray.toJSONString(collections));
		   	
		    return JSONArray.toJSONString(collections);
	   }
	   
	   
	
}
