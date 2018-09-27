package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("/review/myreview/Write.it")
	public String reviewForm()throws Exception{
		return "review/myreview/WriteReview.theme";
	}
	
	@RequestMapping("/planit/review/ReviewList.it")
	public String reviewList()throws Exception{
		return "tourinfo/reviewpick/ReviewList.theme";
	}
	
	@RequestMapping("/planit/review/reviewView.it")
	public String reviewView()throws Exception{
		return "tourinfo/reviewpick/ReviewView.theme";
	}
	
	@RequestMapping("/riveiw/write/OneSpot.it")
	public String writeOneReview()throws Exception{
		return "review/myreview/WriteOneSpot.theme";
	}
	
	//////////////////////////////////포토북
	@RequestMapping("/photobook/step1/selectdesign.it")
	public String selectbook()throws Exception{
		return "review/photobook/SelectBook.theme";
	}
	
	@RequestMapping("/photobook/step2/Preview.it")
	public String previewBook()throws Exception{
		return "review/photobook/PreviewBook.theme";
	}

}
