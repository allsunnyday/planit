package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.FaqNoticeService;

@Repository
public class FaqNoticeDAO implements FaqNoticeService {

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<FaqNoticeDTO> selectFaqList(Map map) {
		return template.selectList("showFaq",map);
	}

	@Override
	public List<FaqNoticeDTO> selectNoticeList(Map map) {
		return template.selectList("showNotice",map);
	}

	@Override
	public int getTotalCount(Map map) {
		return template.selectOne("totalCount",map);
	}

	@Override
	public List<FaqNoticeDTO> noticeSearch(Map map) {
		return template.selectList("noticeSearch",map);
	}

	@Override
	public FaqNoticeDTO selectOne(Map map) {
		return template.selectOne("noticeView",map);
	}

	@Override
	public int insert(FaqNoticeDTO dto) {
		
		return template.insert("faqInsert",dto);
	}

	

}
