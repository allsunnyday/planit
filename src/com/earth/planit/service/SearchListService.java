package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface SearchListService {

	List<SearchListDTO> selectTourList(Map map);
	List<SearchListDTO> selectFoodList(Map map);
	List<SearchListDTO> selectSleepList(Map map);
	
	
}
