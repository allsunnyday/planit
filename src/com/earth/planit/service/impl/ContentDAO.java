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

	@Override
	public int insertLikedTour(Map map) {
		return template.insert("contentInsertLikedTour", map);
	}

	@Override
	public int isAlreadyLiked(Map map) {
		return template.selectOne("contentIsAlreadyLiked",map);
	}

	@Override
	public List<Map> mainPlannerList() {
		return template.selectList("mainPlannerList");
	}

	@Override
	public List<Map> mainReviewList() {
		return template.selectList("mainReviewList");
	}

	@Override
	public List<Map> mainContentList() {
		return template.selectList("mainContentList");
	}

}
