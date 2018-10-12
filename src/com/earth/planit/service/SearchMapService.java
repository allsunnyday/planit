package com.earth.planit.service;

import java.util.List;
import java.util.Map;

/*관광정보 - 맵*/
public interface SearchMapService {
	// 여행지 추천
	List<SearchMapDTO> selectTravelList(Map map);

	// 컨텐츠별 추천
	List<SearchMapDTO> selectContentList(Map map);

	// 리뷰 추천
	List<SearchMapDTO> selectReviewList(Map map);

}
