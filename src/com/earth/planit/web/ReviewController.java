package com.earth.planit.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String reviewDetail()throws Exception{
		//review정보를 가지고 오기 
		// 리뷰 번호를 가지고 오기 (이때, 리뷰는 플래너의 정보를 함께 가지고 있는 것이 좋을 듯하다 
		return "review/myreview/WriteReview.theme";
	}
	
	
	// 리뷰 보기 페이지 
	@RequestMapping("/planit/review/ReviewView.it")
	public String reviewView(@RequestParam Map map,  // review_no=값
							Model model)throws Exception{
		// 하나의 리뷰를 화면에 보여준다. 
		ReviewDTO review = reviewService.selectReviewOne(map);
		// route를 파싱하는 작업이 필요하다 
		String beforeParsing = review.getRoute();
		System.out.println(beforeParsing);
		// route에 해당하는 컨텐트츠 객체를 가지고 오는게 중요하다 (overview읽어오기?)
		String schedule[] = beforeParsing.split("#");
		System.out.println("갯수 예상(2) == "+schedule.length);
		// firstimage 읽어오기?
		
		
		return "tourinfo/reviewpick/ReviewView.theme";
	}
	
	@RequestMapping("/riveiw/write/OneSpot.it")
	public String writeOneReview()throws Exception{
		return "review/myreview/WriteOneSpot.theme";
	}
	
	//////////////////////////////////포토북
	@RequestMapping("/photobook/step1/selectdesign.it")
	public String selectbook()throws Exception{
		//  사용자가 작성한 리뷰의 정보를 그대로 가져간다. 
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
