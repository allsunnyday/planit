package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.SearchMapDTO;
import com.earth.planit.service.SearchMapService;

@Repository
public class SearchMapDAO implements SearchMapService {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<SearchMapDTO> selectTravelList(Map map) {
		return template.selectList("searchMapTourList", map);
	}

	@Override
	public List<SearchMapDTO> selectContentList(Map map) {
		return template.selectList("searchMapContent", map);
	}

	@Override
	public List<SearchMapDTO> selectReviewList(Map map) {
		return template.selectList("searchMapReview", map);
	}

}
