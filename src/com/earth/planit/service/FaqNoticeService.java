package com.earth.planit.service;

import java.util.List;
import java.util.Map;


public interface FaqNoticeService {
	//faq
	List<FaqNoticeDTO> selectFaqList(Map map);
	//공지사항
	List<FaqNoticeDTO> selectNoticeList(Map map);

	int getTotalCount(Map map);
	
	//공지사항세부
	List<FaqNoticeDTO> noticeSearch(Map map);
	
	
	
	
	FaqNoticeDTO selectOne(Map map);
	
	
	int insert(FaqNoticeDTO dto);
}
