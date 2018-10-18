package com.earth.planit.service;

import java.util.List;
import java.util.Map;


public interface FaqNoticeService {
	
	List<FaqNoticeDTO> selectFaqList(Map map);
	List<FaqNoticeDTO> selectNoticeList(Map map);

	int getTotalCount(Map map);
	List<FaqNoticeDTO> noticeSearch(Map map);
	
	FaqNoticeDTO selectOne(Map map);
	
	int insert(FaqNoticeDTO dto);
}
