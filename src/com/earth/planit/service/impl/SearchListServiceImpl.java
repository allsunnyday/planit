package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.SearchListDTO;
import com.earth.planit.service.SearchListService;


@Service("searchListService")
public class SearchListServiceImpl implements SearchListService{

	
	@Resource(name = "searchListDAO")
	private SearchListDAO dao;
	

	@Override
	public List<ContentDTO> selectTourList(Map map) {
		return dao.selectTourList(map);
	}
	@Override
	public List<ContentDTO> selectFestivalList(Map map) {
		return dao.selectFestivalList(map);
	}
	
	@Override
	public List<ContentDTO> selectFoodList(Map map) {
		return dao.selectFoodList(map);
	}
	@Override
	public List<ContentDTO> selectSleepList(Map map) {
		return dao.selectSleepList(map);
	}
	@Override
	public int getTotalCount(Map map) {
		return dao.getTotalCount(map);
	}
	@Override
	public List<ContentDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	
}