package com.earth.planit.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.earth.planit.service.PartnerDTO;
import com.earth.planit.service.PartnerService;
import com.earth.planit.service.impl.PagingUtil;

@Controller
public class PartnerController_J {
	//리소스파일(resource.properties)에서 읽어오기
	@Value("${TABLE_PAGE_SIZE}")
	private int pageSize;
	@Value("${TABLE_BLOCK_PAGE}")
	private int blockPage;
	
	@Resource(name="partnerService")
	private PartnerService service;

	
	/*문의 페이지 이동 + DB뿌려주기 */
	@RequestMapping(value="/mypage/partner/Request_P.it", produces="text/plain; charset=UTF-8")
	public String gotoRequest_P(HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,Model model, HttpSession session,
			@RequestParam(required=false, defaultValue="1") int nowPage) throws Exception {
		//로그인되있는 기업 아이디받아보기
		System.out.println(session.getAttribute("p_id"));
		
		map.put("p_id", session.getAttribute("p_id"));
		//전체 레코드수
		int totalRecordCount = service.getTotalRecordforRequest(map);
		//시작 및 끝 rownum 구하기
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		//페이징을 위한 로직 끝]	
		List<PartnerDTO> list=service.selectRequestList(map);
		
	
		//페이징 문자열을 위한 로직 호출]
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/ReplyBBS/BBS/List.bbs?");
		//데이타 저장]		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		return "mypage/partner/Request_P.theme";
	}
	

	/* 문의 상세보기 */
	@RequestMapping("/mypage/partner/Request_detail.it")
	public String gotoRequestdetail_P(@RequestParam Map map, Model model, HttpSession session) throws Exception {
		System.out.println(map.get("ask_no"));
		map.put("p_id", session.getAttribute("p_id"));

		PartnerDTO record = service.selectRequestDetail(map);
		record.setContent(record.getContent().replace("\r\n", "<br/>"));

		System.out.println(record.getContent());
		model.addAttribute("record", record);

		return "mypage/partner/Request_detail.theme";
	}

	/*예약 페이지 이동*/
	@RequestMapping(value="/mypage/partner/Reservation_P.it", produces="text/plain; charset=UTF-8")
	public String gotoReservation_P(HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,Model model, HttpSession session,
			@RequestParam(required=false, defaultValue="1") int nowPage) throws Exception {
		//로그인되있는 기업 아이디받아보기
		System.out.println(session.getAttribute("p_id"));
		
		map.put("p_id", session.getAttribute("p_id"));
		//전체 레코드수
		int totalRecordCount = service.getTotalRecordforRequest(map);
		//시작 및 끝 rownum 구하기
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		//페이징을 위한 로직 끝]	
		List<PartnerDTO> list=service.selectReservationList(map);
	
		//페이징 문자열을 위한 로직 호출]
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/ReplyBBS/BBS/List.bbs?");
		//데이타 저장]		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		return "mypage/partner/Reservation_P.theme";
	}
	
	/*예약 상세보기*/
	@RequestMapping("/mypage/partner/Reservation_detail.it")
	public String gotoReservation_detail_P(@RequestParam Map map, Model model, HttpSession session) throws Exception {
		
		
		
		return "mypage/partner/Reservation_detail.theme";
	}
	
	
	
}
