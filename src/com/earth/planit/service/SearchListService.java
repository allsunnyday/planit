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
//	사용자가 선호하는 여행 분류 얻어오기
	List<PreferenceDTO> selectpreferencetype(Map map);
//	사용자가 선호하는 여행 분류 1~4
//	분류1
	List<PreferenceDTO> selectpreferenceone(Map map);
//	분류2
	List<PreferenceDTO> selectpreferencetwo(Map map);
//	분류3
	List<PreferenceDTO> selectpreferencethr(Map map);
//	분류4
	List<PreferenceDTO> selectpreferencefour(Map map);
	
	
	
	
	
	
	
}
