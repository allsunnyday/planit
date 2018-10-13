package com.earth.planit.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.ReviewService;

@Controller
public class ReviewController {

	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	
	
	
	//리뷰 리스트로 이동
	@RequestMapping("/planit/review/ReviewList.it")
	public String reviewList(@RequestParam Map map, Model model)throws Exception{
		//리뷰 리스트를 가지고 온다. 
		
		List<Map> list = reviewService.selectReviewList(map);
		System.out.println(list.size());
		
		model.addAttribute("list", list);
		return "tourinfo/reviewpick/ReviewList.theme";
	}
	
	
	
	@RequestMapping("/review/myreview/Write.it")
	public String reviewDetail(@RequestParam Map map , // review_id, planner_id
								Model model
								)throws Exception{
		// write는 planner에서 오는 값이기도 하다
		// 여행이 시작하고 플래너를 처음 작성할 떄에는 review_id가 없다 
		// 작성 후 수정할 떄에는 review_id가 있다. 
		// 따라서 판단이 필요하다 
		/*
		Map planner = reviewService.selectPlannerOne(map);
		// 
		String totalRoute = planner.get("ROUTE").toString();
		String dayRoute[] = totalRoute.split("@");  // [0]1:12:126508:경복궁:한복대여:한복대여2만원:0#1:12:126512:광화문:교보문고:책사기:0#1:32:2504463:L7명동:::1
		*/ 
		// 몇일차를 뿌려줄것인지 선택
		int day = 1;
		/*if(map.get("review_id")!=null) {*/
			ReviewDTO record = reviewService.selectReviewOne(map);
			day = Integer.parseInt(record.getSeries().toString())-1;
			model.addAttribute("review", record);
		/*}*/
		//dayRoute[day]= 1#1:12:126508:경복궁:한복대여:한복대여2만원:0#1:12:126512:광화문:교보문고:책사기:0#1:32:2504463:L7명동:::1
//		String route[] = dayRoute[day].split("#");
		String route[] = record.getRoute().split("#");
		System.out.println("route[0]"+route[0]);
		List<Map> oneRoute = new Vector();
		for(int i=1; i<route.length; i++) {  //i로  review의 사용자 글/그림을 가지고올수있다.
			Map rmap=new HashMap<>();
			String items[] = route[i].split(":");
			System.out.println(i+"번째 "+items.length+"개");
			rmap.put("areacode", items[0]);  //지역코드 
			rmap.put("contenttype", items[1]);
			rmap.put("contentid", items[2]); 
			rmap.put("title", items[3]);  //관광지이름
			rmap.put("todo", items[4]);  // 할일
			rmap.put("todomemo", items[5]); // 할일 메모 
			rmap.put("stayNY", items[6]);  //숙박인지 여부 
			//ContentDTO dto = TourApiUtils.getdetailCommon(items[1], items[2]);
			// 관광데이터 가지고 오기 
			//rmap.put("overview", dto.getOverview());
			//System.out.println(dto.getOverview());
			// 주소읽어오기
			ContentDTO dto =reviewService.selectContent(rmap);
			rmap.put("addr1", dto.getAddr1());
			rmap.put("firstimage2", dto.getFirstimage2()); 
			// 
			oneRoute.add(rmap);
		}
		
		int totalReview = reviewService.getTotalReviewCount(map);
		model.addAttribute("totalReview", totalReview);
		model.addAttribute("day", day+1);
		//model.addAttribute("planner", planner);
		model.addAttribute("oneRoute", JSONArray.toJSONString(oneRoute));
		System.out.println(JSONArray.toJSONString(oneRoute));
		return "review/myreview/WriteReview.theme";
	}
	
	
	// 리뷰 보기 페이지 
	@RequestMapping("/planit/review/ReviewView.it")
	public String reviewView(@RequestParam Map map,  // review_id=값
							Model model)throws Exception{
	
		// 하나의 리뷰를 화면에 보여준다. 
		ReviewDTO review = reviewService.selectReviewOne(map);
		
		// --- route 분석 로직   ----//
		// 1:12:126508:경복궁:한복대여:한복대여2만원:0#1:12:126512:광화문:교보문고:책사기:0#1:32:2504463:L7명동:::1
		String beforeParsing = review.getRoute();  
		System.out.println(beforeParsing);
		// route에 해당하는 컨텐트츠 객체를 가지고 오는게 중요하다 (overview읽어오기?)
		String schedule[] = beforeParsing.split("#");  // 1:12:126508:경복궁:한복대여:한복대여2만원:0
		System.out.println("갯수 예상(2) == "+schedule.length);
		// oneRoute의 사이즈 == 관광DTO의 개수 
		List<Map> oneRoute = new Vector();
		for(int i=1; i<schedule.length;i++) {  //i로  review의 사용자 글/그림을 가지고올수있다.   i=0일때는 일수를 가지고 있
			Map rmap=new HashMap<>();
			String items[] = schedule[i].split(":");
			System.out.println(i+"번째 "+items.length+"개");
			rmap.put("areacode", items[0]);
			rmap.put("contenttype", items[1]);
			rmap.put("contentid", items[2]);
			rmap.put("title", items[3]);
			rmap.put("todo", items[4]);
			rmap.put("todomemo", items[5]);
			rmap.put("stayNY", items[6]);
			ContentDTO dto = TourApiUtils.getdetailCommon(items[1], items[2]);
			// 관광데이터 가지고 오기 
			rmap.put("overview", dto.getOverview());
			//System.out.println(dto.getOverview());
			oneRoute.add(rmap);
		}
		
		
		//데이터 저장
		model.addAttribute("day", schedule[0]);
		model.addAttribute("review", review);// review는 전체적인 내용이 담겨있음
		model.addAttribute("oneRoute",oneRoute);
		return "tourinfo/reviewpick/ReviewView.theme";
	}
	
	@RequestMapping("/riveiw/write/OneSpot.it")
	public String writeOneReview(@RequestParam Map map,  // review_id , route_index 
								Model model
								)throws Exception{
		
		// 잘넘어오는지 체크
		System.out.println("review_id="+map.get("review_id")+" route_index="+map.get("route_index")+"contentid="+map.get("contentid"));
		// review_content와 content를 조인해서 가지고 오기 
		Map reviewContent = reviewService.selectReviewContent(map);
		//map에 reviewContent에 관한 상세를 가지고 오기
		ContentDTO dto 
				= TourApiUtils.getdetailCommon(reviewContent.get("CONTENTTYPE").toString(), reviewContent.get("CONTENTID").toString());
		reviewContent.put("OVERVIEW", dto.getOverview());
		model.addAttribute("reviewContent", reviewContent);
		return "review/myreview/WriteOneSpot.theme";
	}
	
	//////////////////////////////////포토북
	@RequestMapping("/photobook/step1/selectdesign.it")
	public String selectbook()throws Exception{
		// 사용자가 작성한 리뷰의 정보를 그대로 가져간다. 
		// 포토북 리스트를 가지고 온다. 
		
		
		return "review/photobook/SelectBook.theme";
	}
	
	@RequestMapping("/photobook/step2/Preview.it")
	public String previewBook()throws Exception{
		return "review/photobook/PreviewBook.theme";
	}
	
	
	////////////////////////////////////////ajax
	@ResponseBody
	@RequestMapping(value="/review/write/UploadReview.it",produces="text/html; charset=UTF-8")
	public String uploadReview(HttpServletRequest multi)throws Exception{
		System.out.println(multi.getAttribute("content")==null?"nothing":multi.getAttribute("content"));
		/// ajax로 왜 내용이 넘어오지 않는지..확인이 필요 !! ! 
		
		return "success";  //리턴으로 WriteReview를 보내준다. 
	}

}
