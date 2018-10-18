package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface ContentService {

	//content 1개 조회
	ContentDTO getContentDTO(Map map);
	Map getContentForMap(Map map);
	// content 리스트 조회
	List<ContentDTO> getContentDTOList(Map map);
	List<Map> getContentListForMap(Map map);
	// 개수 조회
	int totalContentCount(Map map);
	//
	int updateViewcount(Map map);
	// liked tour 테이블에 추가 
	int insertLikedTour(Map map);
	// 이미 즐겨찾기에 추가했는지 검사
	int isAlreadyLiked(Map map);
}
