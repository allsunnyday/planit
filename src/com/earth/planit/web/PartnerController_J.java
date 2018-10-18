package com.earth.planit.web;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 
				nowPage,req.getContextPath()+ "/mypage/partner/Request_P.it?");
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
		System.out.println(record.getName());
		
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
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 
				nowPage,req.getContextPath()+ "/mypage/partner/Reservation_P.it?");
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
		System.out.println(map.get("reservation_id"));
		map.put("p_id", session.getAttribute("p_id"));
			
		PartnerDTO record = service.selectReservationDetail(map);
		record.setRequest(record.getRequest().replace("\r\n", "<br/>"));
				
		System.out.println(record.getRequest());
		model.addAttribute("record", record);
		
		
		return "mypage/partner/Reservation_detail.theme";
	}
		
	
	/* 답변 폼으로 이동 */
	@RequestMapping(value = "/mypage/partner/ReplyWrite.it", method = RequestMethod.GET)
	public String form(Model model, @RequestParam Map map, HttpSession session) throws Exception {
		map.put("p_id", session.getAttribute("p_id"));
		PartnerDTO record = service.selectRequestDetail(map);
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		System.out.println(record.getName());
		model.addAttribute("record", record);

		return "mypage/partner/Request_Reply.theme";
	}
	
	
	/* 입력 */
	@RequestMapping(value = "/mypage/partner/ReplyWrite.it", produces = "text/html; charset=UTF-8", method = RequestMethod.POST)
	public String gotoReply(HttpSession session, @RequestParam Map map, Model model, PartnerDTO dto) throws Exception {
		System.out.println("ask_no: " + map.get("ask_no"));
		System.out.println("p_id--------"+ session.getAttribute("p_id"));
		map.put("p_id", session.getAttribute("p_id"));
		// map에 ask_no / p_id필요
		map.put("ask_no", map.get("ask_no"));

//		Map mMap = new HashMap();
//		Field[] fields = need.getClass().getDeclaredFields();
//		for (int i = 0; i < fields.length; i++) {
//			fields[i].setAccessible(true);
//			mMap.put(fields[i].getName(), fields[i].get(need));
//		}

		int affected = service.update(map);
		model.addAttribute("WHERE", "EDT");
		model.addAttribute("successFail", affected);		
		
//		return "forward:/mypage/partner/Request_P.it";
		return "/mypage/partner/Message";
	}
	/*문의 삭제*/
	@RequestMapping("/mypage/partner/ReplyDelete.it")
	public String Replydelete(PartnerDTO dto, Model model, @RequestParam Map map) throws Exception {
		System.out.println(map.get("ask_no"));
		int affected = service.replyDelete(dto);
		
		model.addAttribute("successFail", affected);	
		
		return "/mypage/partner/Message";
	}
	
	/*예약 삭제*/
	@RequestMapping("/mypage/partner/ReservationDelete.it")
	public String Reservationdelete(PartnerDTO dto, Model model, @RequestParam Map map) throws Exception{
		System.out.println("reservation_id"+map.get("reservation_id"));
		int affected = service.reservationDelete(dto);
		model.addAttribute("successFail", affected);
		
		return "/mypage/partner/Message";
	}
	
	
	
	
}
