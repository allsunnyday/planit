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
public class PartnerController {
	//리소스파일(resource.properties)에서 읽어오기
	@Value("${TABLE_PAGE_SIZE}")
	private int pageSize;
	@Value("${TABLE_BLOCK_PAGE}")
	private int blockPage;
	
	/*
	 * PartnerController 
	 * 1] 예약 관리 페이지 
	 * 2] 사용자 문의 페이지 
	 * 3]예약 상세보기 
	 */

	@Resource(name="partnerService")
	private PartnerService service;
	
	@RequestMapping("/mypage/partner/Reservation_P.it")
	public String gotoReservation_P() throws Exception {
		return "mypage/partner/Reservation_P.theme";
	}
	
	/*문의 */
	@RequestMapping(value="/mypage/partner/Request_P.it", produces="text/plain; charset=UTF-8")
	public String gotoRequest_P(HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,Model model, HttpSession session,
			@RequestParam(required=false, defaultValue="1") int nowPage) throws Exception {
		//로그인되있는 기업 아이디받아보기
		System.out.println(session.getAttribute("p_id"));
		
		map.put("p_id", session.getAttribute("p_id"));
		//전체 레코드수
		int totalRecordCount = service.getTotalRecordforRequestTotal(map);
		//시작 및 끝 rownum 구하기
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		//페이징을 위한 로직 끝]	
		List<PartnerDTO> list=service.selectRequestList(map);
		
		System.out.println(list.get(0).getContent());
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
	//예약 상세보기
	@RequestMapping("/mypage/partner/Reservation_detail.it")
	public String gotoRequestdetail_P() throws Exception {
		return "mypage/partner/Reservation_detail.theme";
	}
	
	//[기업 로그인]
	@RequestMapping(value="/partner/login/LoginProcess.it", method=RequestMethod.POST)
	public String partnerLoginProcess(@RequestParam Map map, HttpSession session, Model model)throws Exception{
		// form 하위 데이터가 잘 온것을 확인! key= input태그의 name속성 
		System.out.println("id="+map.get("p_id")+" pwd="+map.get("pwd"));
		
		boolean isLogin = service.isPartnerLogin(map);
		System.out.println(isLogin);
		System.out.println(service.isPartnerLogin(map));
		if(isLogin) { // 회원일경우
			//로그인 처리 - 세션 영역에 저장 
			session.setAttribute("p_id", map.get("p_id"));
			session.setAttribute("business_no", map.get("id"));
			
			PartnerDTO partnerRecord=service.partnerInfo(map);
			System.out.println(partnerRecord.getP_id());
			System.out.println(partnerRecord.getBusiness_no());
			//model.addAttribute("record", partnerRecord);
			session.setAttribute("partnerRecord",partnerRecord);

			return "mypage/partner/PartnerMyPageHome.theme";
		}
		else { // 비회원일경우 
			model.addAttribute("loginError", "아이디와 비밀번호가 틀립니다.");
			return "forward:/planit/login/Login.it";
		}
		
	}
	
	// [기업회원가입]
	@RequestMapping("/member/login/CompanyJoin.it")
	public String gotoCompanyJoin() throws Exception {
		return "login/JoinPartnerProgress.theme";
	}
	
	@RequestMapping(value="/member/login/PartnerJoinFormProcess.it" ,method=RequestMethod.POST)
	public String partnerJoinFormProcess(PartnerDTO dto,@RequestParam Map map, HttpSession session) throws Exception{
		
		int isPartnerJoin=service.isPartnerJoin(dto);
		System.out.println(isPartnerJoin);
	/*	if(isPartnerJoin==1) {
			session.setAttribute("p_id", map.get("p_id"));
		}
			*/	
		return "forward:/planit/login/Login.it";
	}
	// [기업_마이페이지]
	@RequestMapping("planit/mypage/partner/PartnerMyPageHome.it")
	public String gotoPartnerMyPageHome() throws Exception {
		return "mypage/partner/PartnerMyPageHome.theme";
	}
	//http://localhost:11080/Planit/planit/mypage/partner/plantit/mypage/partner/productResist.it
	@RequestMapping("/plantit/mypage/partner/productResist.it")
	public String gotoPartnerProductResist() throws Exception {
		///planit/WebContent/WEB-INF/member/mypage/partner/PartnerProduct.jsp
		return "mypage/partner/PartnerProduct.theme";
	}

}
