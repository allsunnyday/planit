package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ContentService;

@Repository
public class ContentDAO implements ContentService {

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	
	@Override
	public ContentDTO getContentDTO(Map map) {
		return null;
	}

	@Override
	public Map getContentForMap(Map map) {
		return null;
	}

	@Override
	public List<ContentDTO> getContentDTOList(Map map) {
		return null;
	}

	@Override
	public List<Map> getContentListForMap(Map map) {
		return null;
	}

	@Override
	public int totalContentCount(Map map) {
		return 0;
	}

	@Override
	public int updateViewcount(Map map) {
		return template.update("ContentUpdateViewcount", map);
	}

}