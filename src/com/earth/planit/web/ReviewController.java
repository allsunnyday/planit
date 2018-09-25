package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("/Review/MyReview/write.it")
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
	
	
	

}
