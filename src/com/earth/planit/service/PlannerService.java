package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface PlannerService {
	
//	지도에 뿌려줄 정보 호출
	List<PlannerDTO> selectMapDataList(Map map);
//	planner insert	
	int insertPlanner(Map map);
//	review insert
	int insertReview(Map map);
//	review_content insert
	int insertReviewContent(Map map);
//	bookmark select 
	List<PlannerDTO> selectBookMark(Map map);
	
	
}
