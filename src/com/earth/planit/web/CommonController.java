package com.earth.planit.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ReviewService;

@Controller
public class CommonController {

	//api 키값
	
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@RequestMapping("/planit/search/list/TourView.it")
	public String tourView(@RequestParam Map map,
								Model model) throws Exception{
		// map에 
		ContentDTO dto = reviewService.selectContent(map);
		// map 으로  
		String overview = TourApiUtils.getOverView(dto.getContentid(), dto.getContenttype());
		dto.setOverview(overview);
		//List<Map> imagelist = TourApiUtils.getImageTourdata(dto.getContentid());

		model.addAttribute("content", dto);
		//model.addAttribute("imagelist", imagelist);
		
		return "tourinfo/tdview/TourView.theme";
	}
}