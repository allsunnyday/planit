package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.SearchListDTO;
import com.earth.planit.service.SearchListService;


@Repository
public class SearchListDAO implements SearchListService {

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<SearchListDTO> selectTourList(Map map) {
		return template.selectList("selectTourList",map);
	}

	@Override
	public List<SearchListDTO> selectFoodList(Map map) {
		return template.selectList("selectFoodList",map);
	}

	@Override
	public List<SearchListDTO> selectSleepList(Map map) {
		return template.selectList("selectSleepList",map);
	}

	@Override
	public int getTotalCount(Map map) {
		return template.selectOne("getTotalCount",map);
	}

	@Override
	public List<SearchListDTO> selectList(Map map) {
		return template.selectList("searchSelectList",map);
	}


	


}
