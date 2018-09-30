package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("/review/myreview/Write.it")
	public String reviewDetail()throws Exception{
		//review정보를 가지고 오기 
		// 리뷰 번호를 가지고 오기 (이때, 리뷰는 플래너의 정보를 함께 가지고 있는 것이 좋을 듯하다 
		return "review/myreview/WriteReview.theme";
	}
	
	@RequestMapping("/planit/review/ReviewList.it")
	public String reviewList()throws Exception{
		return "tourinfo/reviewpick/ReviewList.theme";
	}
	
	@RequestMapping("/planit/review/reviewView.it")
	public String reviewView()throws Exception{
		// 하나의 리뷰를 화면에 보여준다. 
		// db에서 리뷰 1개의 정보 등을 가지고 온다. 
		
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

}
