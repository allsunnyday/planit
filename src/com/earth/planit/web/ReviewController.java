package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("/Review/MyReview/write.it")
	public String reviewForm()throws Exception{
		return "blog/myreview/WriteReview.theme";
	}
	
	

}
