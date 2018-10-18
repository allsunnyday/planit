package com.earth.planit.web;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.realm.AuthenticatedUserRealm;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.FaqNoticeService;

@Controller
public class FaqNoticeController {

	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;
	
	@Resource(name="faqNoticeService")
	private FaqNoticeService service;
	
	//질문답변
	
	@RequestMapping("/planit/search/tourinfo/Qna.it")
	public String goQna(@RequestParam Map map,FaqNoticeDTO dto,@ModelAttribute("no") String no ,Model model)throws Exception{
		
		
		List<FaqNoticeDTO> faq = service.selectFaqList(map);
		model.addAttribute("faq",faq);
		
		return "tourinfo/tdview/Qna.theme";
	}
	@RequestMapping(value="/planit/search/tourinfo/askQna.it",method=RequestMethod.POST)
	public String goDM(@ModelAttribute("id") String id,Model model,FaqNoticeDTO dto,HttpSession session)throws Exception{
		System.out.println("goDM call");
		System.out.println(dto.getTitle());
		System.out.println(dto.getContent());
		System.out.println("id:"+id);
		dto.setId(id);
		
		
		int affected = service.insert(dto);
		
		return "tourinfo/tdview/Qna.theme";
	}
	
	
	
	
	
	//공지사항
	@RequestMapping("/planit/search/tourinfo/Notice.it")
	public String goNotice(@RequestParam Map map, Model model
			,HttpServletRequest req,
			@RequestParam(required=false,defaultValue="1") int nowPage)throws Exception{
		
		
		
		
		if(map.get("searchColumn")!= null) {
			model.addAttribute("searchColumn",map.get("searchColumn"));
			model.addAttribute("searchWord",map.get("searchWord"));
		}
		int totalCount = service.getTotalCount(map);
		int totalPage = (int)Math.ceil(((double)totalCount/pageSize));
		int start = (nowPage-1)*pageSize+1;
		int end  = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List<FaqNoticeDTO> pagenotice = service.selectNoticeList(map);
		String pagingString = CommonUtil.pagingBootStrapStyle(
							totalCount,
							pageSize, 
							blockPage, 
							nowPage, 
							req.getContextPath()+"/planit/search/tourinfo/Notice.it?");
		
		model.addAttribute("list", pagenotice);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		
		
		
		
		model.addAttribute("notice",pagenotice);
		
		
		
		return "tourinfo/tdview/Notice.theme";
	}
	//공지사항 세부
	@RequestMapping(value="/planit/search/tourinfo/NoticeView.it")
	public String noticeView(@RequestParam Map map, Model model)throws Exception{
		
		FaqNoticeDTO noticeview = service.selectOne(map);
		noticeview.setContent(noticeview.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("noticeview",noticeview);
		
		return "tourinfo/tdview/NoticeView.theme";
	}
	
	
}
