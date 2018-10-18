package com.earth.planit.web;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ContentDetailIntroDTO;
import com.earth.planit.service.ContentService;
import com.earth.planit.service.ReviewService;
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
		
		// dto객체를 map으로 변경하는 로직 
		Map mMap = new HashMap();
		Field[] fields = detailIntro.getClass().getDeclaredFields();
		for ( int i=0; i<fields.length; i++) {
			fields[i].setAccessible(true);
			if(fields[i].get(detailIntro)!= null &&  // 숙박상세보기를 눌렀을 경우에 nullpoint에러를 방지하기 위해서 
					fields[i].get(detailIntro).toString().length()==0)
				mMap.put(fields[i].getName(), fields[i].get(detailIntro));
		}
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
}
