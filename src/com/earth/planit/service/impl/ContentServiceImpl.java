package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.ContentService;


@Service("contentService")
public class ContentServiceImpl implements ContentService {

	@Resource(name="contentDAO")
	private ContentDAO dao;
	
	@Override
	public ContentDTO getContentDTO(Map map) {
		return dao.getContentDTO(map);
	}

	@Override
	public Map getContentForMap(Map map) {
		return dao.getContentForMap(map);
	}

	@Override
	public List<ContentDTO> getContentDTOList(Map map) {
		return dao.getContentDTOList(map);
	}

	@Override
	public List<Map> getContentListForMap(Map map) {
		return dao.getContentListForMap(map);
	}

	@Override
	public int totalContentCount(Map map) {
		return dao.totalContentCount(map);
	}

	@Override
	public int updateViewcount(Map map) {
		return dao.updateViewcount(map);
	}

	@Override
	public int insertLikedTour(Map map) {
		return dao.insertLikedTour(map);
	}

	@Override
	public int isAlreadyLiked(Map map) {
		return dao.isAlreadyLiked(map);
	}

	@Override
	public List<Map> mainPlannerList() {
		return dao.mainPlannerList();
	}

	@Override
	public List<Map> mainReviewList() {
		return dao.mainReviewList();
	}

	@Override
	public List<Map> mainContentList() {
		return dao.mainContentList();
	}

}
