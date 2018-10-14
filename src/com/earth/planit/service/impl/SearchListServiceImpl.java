package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.SearchListDTO;
import com.earth.planit.service.SearchListService;


@Service("searchListService")
public class SearchListServiceImpl implements SearchListService{

	
	@Resource(name = "searchListDAO")
	private SearchListDAO dao;
	

	@Override
	public List<SearchListDTO> selectTourList(Map map) {
		return dao.selectTourList(map);
	}


	@Override
	public List<SearchListDTO> selectFoodList(Map map) {
		return dao.selectFoodList(map);
	}


	@Override
	public List<SearchListDTO> selectSleepList(Map map) {
		return dao.selectSleepList(map);
	}
	
	
}