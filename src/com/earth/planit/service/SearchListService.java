package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface SearchListService {

	List<ContentDTO> selectTourList(Map map);
	List<ContentDTO> selectFoodList(Map map);
	List<ContentDTO> selectSleepList(Map map);
	List<ContentDTO> selectFestivalList(Map map);
	int getTotalCount(Map map);
	List<ContentDTO> selectList(Map map);
	
	
	
	
}
