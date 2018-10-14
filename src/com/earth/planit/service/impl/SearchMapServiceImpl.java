package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.SearchMapDTO;
import com.earth.planit.service.SearchMapService;

@Service("searchMapService")
public class SearchMapServiceImpl implements SearchMapService {

	@Resource(name = "searchMapDAO")
	private SearchMapDAO dao;

	@Override
	public List<SearchMapDTO> selectTravelList(Map map) {
		return dao.selectTravelList(map);
	}

	@Override
	public List<SearchMapDTO> selectContentList(Map map) {
		return dao.selectContentList(map);
	}

	@Override
	public List<SearchMapDTO> selectReviewList(Map map) {
		return dao.selectReviewList(map);
	}

}
