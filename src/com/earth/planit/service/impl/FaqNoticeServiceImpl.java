package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.FaqNoticeService;

@Service("faqNoticeService")
public class FaqNoticeServiceImpl implements FaqNoticeService {
	
	@Resource(name="faqNoticeDAO")
	private FaqNoticeDAO dao;

	@Override
	public List<FaqNoticeDTO> selectFaqList(Map map) {
		return dao.selectFaqList(map);
	}

	@Override
	public List<FaqNoticeDTO> selectNoticeList(Map map) {
		return dao.selectNoticeList(map);
	}

	@Override
	public int getTotalCount(Map map) {
		return dao.getTotalCount(map);
	}

	@Override
	public List<FaqNoticeDTO> noticeSearch(Map map) {
		return dao.noticeSearch(map);
	}

	@Override
	public FaqNoticeDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(FaqNoticeDTO dto) {
		return dao.insert(dto);
	}
	
	
	

}
